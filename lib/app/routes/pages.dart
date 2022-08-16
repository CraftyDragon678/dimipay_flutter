import 'package:dimipay/app/core/middleware/login.dart';
import 'package:dimipay/app/core/middleware/onboarding.dart';
import 'package:dimipay/app/core/middleware/pin_auth.dart';
import 'package:dimipay/app/pages/biometric_auth/page.dart';
import 'package:dimipay/app/pages/card_fin/page.dart';
import 'package:dimipay/app/pages/coupon/page.dart';
import 'package:dimipay/app/pages/coupon/binding.dart';
import 'package:dimipay/app/pages/edit_card_name/page.dart';
import 'package:dimipay/app/pages/event/page.dart';
import 'package:dimipay/app/pages/event/binding.dart';
import 'package:dimipay/app/pages/history/binding.dart';
import 'package:dimipay/app/pages/history/page.dart';
import 'package:dimipay/app/pages/home/page.dart';
import 'package:dimipay/app/pages/home/binding.dart';
import 'package:dimipay/app/pages/issue_coupon/page.dart';
import 'package:dimipay/app/pages/login/binding.dart';
import 'package:dimipay/app/pages/login/page.dart';
import 'package:dimipay/app/pages/manage_method/binding.dart';
import 'package:dimipay/app/pages/manage_method/page.dart';
import 'package:dimipay/app/pages/notification/page.dart';
import 'package:dimipay/app/pages/pin/binding.dart';
import 'package:dimipay/app/pages/pin/page.dart';
import 'package:dimipay/app/pages/printer_setting/page.dart';
import 'package:dimipay/app/pages/register_card/page.dart';
import 'package:dimipay/app/pages/register_card/binding.dart';
import 'package:dimipay/app/pages/test/page.dart';
import 'package:dimipay/app/pages/transaction/binding.dart';
import 'package:dimipay/app/pages/transaction/page.dart';
import 'package:dimipay/app/pages/transaction_fin/page.dart';
import 'package:dimipay/app/pages/user/binding.dart';
import 'package:dimipay/app/pages/user/page.dart';
import 'package:dimipay/app/routes/routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.TEST, page: () => const TestPage()),
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomePageBinding(), middlewares: [
      LoginMiddleware(),
      OnboardingMiddleware(),
    ]),
    GetPage(name: Routes.USER, page: () => UserPage(), binding: UserPageBinding(), middlewares: [
      LoginMiddleware(),
      OnboardingMiddleware(),
    ]),
    GetPage(name: Routes.MANAGEMETHOD, page: () => ManageMethodPage(), binding: ManageMethodPageBinding(), middlewares: [
      LoginMiddleware(),
      OnboardingMiddleware(),
    ]),
    GetPage(name: Routes.REGISTERCARD, page: () => const RegisterCardPage(), binding: RegisterCardPageBinding(), middlewares: [
      LoginMiddleware(),
      OnboardingMiddleware(),
    ]),
    GetPage(name: Routes.EDITCARDNAME, page: () => EditCardNamePage(), middlewares: [
      LoginMiddleware(),
      OnboardingMiddleware(),
    ]),
    GetPage(name: Routes.CARDFIN, page: () => const CardFinPage(), middlewares: [
      LoginMiddleware(),
      OnboardingMiddleware(),
    ]),
    GetPage(name: Routes.COUPON, page: () => CouponPage(), binding: CouponPageBinding(), middlewares: [
      LoginMiddleware(),
      OnboardingMiddleware(),
    ]),
    GetPage(name: Routes.HISTORY, page: () => HistoryPage(), binding: HistoryPageBinding(), middlewares: [
      LoginMiddleware(),
      OnboardingMiddleware(),
    ]),
    GetPage(name: Routes.TRANSACTION, page: () => TransactionPage(), binding: TransactionPageBinding(), middlewares: [
      LoginMiddleware(),
      OnboardingMiddleware(),
      PinAuthMiddleware(),
    ]),
    GetPage(name: Routes.EVENT, page: () => EventPage(), binding: EventPageBinding(), middlewares: [
      LoginMiddleware(),
      OnboardingMiddleware(),
    ]),
    GetPage(name: Routes.NOTIFICATION, page: () => const NotificationPage(), middlewares: [
      LoginMiddleware(),
      OnboardingMiddleware(),
    ]),
    GetPage(name: Routes.ISSUECOUPON, page: () => const IssueCouponPage(), middlewares: [
      LoginMiddleware(),
      OnboardingMiddleware(),
    ]),
    GetPage(name: Routes.PIN, page: () => const PinPage(), binding: PinPageBinding(), middlewares: [
      LoginMiddleware(),
    ]),
    GetPage(name: Routes.BIOMETRICAUTH, page: () => const BiometricAuthPage(), middlewares: [
      LoginMiddleware(),
      PinAuthMiddleware(),
      OnboardingMiddleware(),
    ]),
    GetPage(name: Routes.PRINTERSETTING, page: () => const PrinterSettingPage(), middlewares: [
      LoginMiddleware(),
      PinAuthMiddleware(),
      OnboardingMiddleware(),
    ]),
    GetPage(name: Routes.TRANSACTIONFIN, page: () => TransactionFinPage(), middlewares: [
      LoginMiddleware(),
      PinAuthMiddleware(),
      OnboardingMiddleware(),
    ]),
    GetPage(name: Routes.LOGIN, page: () => LoginPage(), binding: LoginPageBinding()),
  ];
}
