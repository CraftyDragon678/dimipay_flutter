import 'package:dimipay/app/data/modules/coupon/model.dart';
import 'package:dimipay/app/data/modules/event/model.dart';
import 'package:dimipay/app/data/modules/notice/model.dart';
import 'package:dimipay/app/data/modules/payment_method/general/model.dart';
import 'package:dimipay/app/data/modules/transaction/model.dart';
import 'package:dimipay/app/data/modules/user/model.dart';
import 'package:dimipay/app/data/provider/api_interface.dart';
import 'package:dimipay/app/data/services/auth/service.dart';
import 'package:dio/dio.dart';
import 'package:get/instance_manager.dart';
import 'dart:developer';

class JWTInterceptor extends Interceptor {
  final Dio _dioInstance;

  // Dependency Injection
  JWTInterceptor(this._dioInstance);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.path == '/auth/refresh') {
      return handler.next(options);
    }

    AuthService authService = Get.find<AuthService>();

    if (authService.isAuthenticated) {
      options.headers['Authorization'] = 'Bearer ${authService.accessToken}';
    } else if (authService.isGoogleLoginSuccess) {
      options.headers['Authorization'] = 'Bearer ${authService.onboardingToken}';
    }

    return handler.next(options);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    //TODO errorcode 다시 명시하기
    if (err.response?.statusCode == 400 || err.response?.statusCode == 500) {
      AuthService authService = Get.find<AuthService>();
      await authService.refreshAcessToken();

      //api 호출을 다시 시도함
      final Response response = await _dioInstance.fetch(err.requestOptions);
      return handler.resolve(response);
    }
    return handler.next(err);
  }
}

class LogInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}', name: 'DIO');
    handler.next(response);
  }
}

class ApiProvider implements ApiInterface {
  final Dio dio = Dio();
  final baseUrl = 'https://dimipay-back-v2-dev-production.up.railway.app';

  ApiProvider() {
    dio.options.baseUrl = baseUrl;
    dio.interceptors.add(JWTInterceptor(dio));
    dio.interceptors.add(LogInterceptor());
  }

  @override
  Future<void> changePaymentPin(String originalPin, String paymentPin) async {
    String url = '/payment/pin';
    Map<String, String> body = {
      'originalPin': originalPin,
      'paymentPin': paymentPin,
    };
    await dio.put(url, data: body);
  }

  @override
  Future<void> createPaymentMethod(String cardNumber, int validYear, int validMonth) async {
    const String url = '/payment/method';
    final Map body = {
      'cardNumber': cardNumber,
      'validMonth': validMonth,
      'validYear': validYear,
    };
    Response response = await dio.post(url, data: body);

    return response.data['name']; //국민카드?
  }

  @override
  Future<void> createPaymentPin(String paymentPin) async {
    String url = '/payment/pin';
    Map<String, String> body = {
      'paymentPin': paymentPin,
    };
    await dio.post(url, data: body);
  }

  @override
  Future<List<Coupon>> getCoupons() async {
    String url = '/coupons';

    Response response = await dio.get(url);

    return (response.data as List).map<Coupon>((model) => Coupon.fromJson(model)).toList();
  }

  @override
  Future<List<Notice>> getNotice() async {
    String url = '/notice/current';
    Response response = await dio.get(url);

    return (response.data as List).map<Notice>((e) => Notice.fromJson(e)).toList();
  }

  @override
  Future<List<Event>> getOngoingEvents() async {
    String url = '/event/ongoing';
    Response response = await dio.get(url);

    return (response.data as List).map<Event>((model) => Event.fromJson(model)).toList();
  }

  @override
  Future<List<Transaction>> getTransaction() async {
    String url = '/transaction/my';
    Response response = await dio.get(url);

    return (response.data as List).map<Transaction>((model) => Transaction.fromJson(model)).toList();
  }

  @override
  Future<User> getUserInfo() async {
    String url = '/user/me';

    Response response = await dio.get(url);

    return User.fromJson(response.data['me']);
  }

  @Deprecated('이 api는 더 이상 사용되지 않음')
  @override
  Future<String> login(String username, String password) async {
    String url = '/auth/login';
    Map body = {
      'username': username,
      'password': password,
      "pin": "135790",
      "deviceUid": "9cf20349-c0af-42d3-820e-f17862c2d923",
      "bioKey": "580a4559-78c7-4d00-a5b7-b501b2c0e112",
    };

    Response response = await dio.post(url, data: body);

    return response.data['accessToken'];
  }

  @override
  Future<Map> loginWithGoogle(String idToken) async {
    String url = '/auth/login';
    Map body = {
      'idToken': idToken,
    };
    Response response = await dio.post(url, data: body);
    log(response.data.toString());
    return response.data;
  }

  @override
  Future<Map> onBoardingAuth(String paymentPin, String deviceUid, String bioKey) async {
    String url = '/auth/onBoarding';
    Map body = {
      'paymentPin': paymentPin,
      'deviceUid': deviceUid,
      'bioKey': bioKey,
    };
    Response response = await dio.post(url, data: body);
    log(response.toString());
    return response.data['tokens'];
  }

  @override
  Future<String?> refreshToken() async {
    String url = "/auth/refresh";
    String? refreshToken = Get.find<AuthService>().refreshToken;

    ///TODO refreshToken이 null일 때 오류 처리하기
    if (refreshToken == null) {
      return null;
    }
    Map<String, dynamic> headers = {
      'Authorization': 'Bearer $refreshToken',
    };
    Response response = await dio.get(url, options: Options(headers: headers));
    return response.data['accessToken'];
  }

  @override
  Future<void> postPaymentToken(String token) async {
    String url = '/payment/token';
    Map<String, String> body = {
      'token': token,
    };
    await dio.post(url, data: body);
  }

  @override
  Future<List<GeneralCard>> getGeneralCard() async {
    String url = '/payment/method';
    Response response = await dio.get(url);
    return (response.data['methods'] as List?)?.where((element) => element['type'] == 'GENERAL').map((model) => GeneralCard.fromJson(model)).toList() ?? [];
  }

  @override
  Future<void> createPrepaidCard() async {
    String url = '/payment/create-prepaid';
    await dio.post(url);
  }
}
