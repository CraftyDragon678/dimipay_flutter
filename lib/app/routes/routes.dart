import 'package:dimipay/app/ui/mainpage/mainpage.dart';
import 'package:dimipay/main.dart';
import 'package:get/get.dart';

abstract class Routes {
  static const INITIAL = '/';
  static const MAINPAGE = '/MainPage';
}

class AppPages {
  static final pages = [
    GetPage(name: Routes.INITIAL, page: () => Home()),
    GetPage(name: Routes.MAINPAGE, page: () => MainPage())
  ];
}
