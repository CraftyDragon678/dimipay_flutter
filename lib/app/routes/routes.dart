import 'package:dimipay/app/ui/add_payment/manage_method.dart';
import 'package:dimipay/app/ui/mainpage/account_info.dart';
import 'package:dimipay/app/ui/mainpage/mainpage.dart';
import 'package:dimipay/main.dart';
import 'package:get/get.dart';

abstract class Routes {
  static const INITIAL = '/';
  static const MAINPAGE = '/MainPage';
  static const ACCOUNTINFO = '/AccountInfo';
  static const MANAGEMETHOD = '/MainPage/ManageMethod';
}

class AppPages {
  static final pages = [
    GetPage(name: Routes.INITIAL, page: () => const Home()),
    GetPage(name: Routes.MAINPAGE, page: () => const MainPage()),
    GetPage(name: Routes.ACCOUNTINFO, page: () => const AccountInfoPage()),
    GetPage(name: Routes.MANAGEMETHOD, page: () => const ManageMethodPage()),
  ];
}
