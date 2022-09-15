import 'package:dimipay/app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  Widget linkToRoute(String route) {
    return TextButton(
      onPressed: () {
        Get.toNamed(route);
      },
      child: Text(route),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Route"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
<<<<<<< HEAD
          linkToRoute(Routes.HOME),
          linkToRoute(Routes.LOGIN),
          linkToRoute(Routes.USER),
          linkToRoute(Routes.MANAGEMETHOD),
          linkToRoute(Routes.REGISTERCARD),
          linkToRoute(Routes.EDITCARD),
          linkToRoute(Routes.CARDFIN),
          linkToRoute(Routes.COUPON),
          linkToRoute(Routes.ISSUECOUPON),
          linkToRoute(Routes.HISTORY),
          linkToRoute(Routes.PAY),
          linkToRoute(Routes.PAYPENDING),
          linkToRoute(Routes.PAYSUCCESS),
          linkToRoute(Routes.EVENT),
          linkToRoute(Routes.PIN),
          linkToRoute(Routes.FACESIGN),
          linkToRoute(Routes.PRINTERSETTING),
=======
          TextButton(
            onPressed: () {
              Get.toNamed(Routes.HOME);
            },
            child: const Text("HOME"),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed(Routes.USER);
            },
            child: const Text('ACCOUNTINFO'),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed(Routes.MANAGEMETHOD);
            },
            child: const Text("MANAGEMETHOD"),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed(Routes.REGISTERCARD);
            },
            child: const Text("REGISTERCARD"),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed(Routes.EDITCARD);
            },
            child: const Text("EDITCARD"),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed(Routes.CARDFIN);
            },
            child: const Text("CARDFIN"),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed(Routes.COUPON);
            },
            child: const Text('COUPONLIST'),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed(Routes.HISTORY);
            },
            child: const Text('TRANSACTIONHISTORY'),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed(Routes.PAY);
            },
            child: const Text('PAY'),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed(Routes.EVENT);
            },
            child: const Text('EVENT'),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed(Routes.ISSUECOUPON);
            },
            child: const Text('ISSUECOUPON'),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed(Routes.PIN);
            },
            child: const Text('PINAUTH'),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed(Routes.BIOMETRICAUTH);
            },
            child: const Text('BiometricAuthPage'),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed(Routes.PRINTERSETTING);
            },
            child: const Text('PRINTERSETTING'),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed(Routes.PAYRESULT);
            },
            child: const Text('PAYRESULT'),
          ),
          TextButton(
            onPressed: () {
              Get.dialog(
                DPDialog(
                  title: "비밀번호가 취약해요",
                  content: "비밀번호가 아이디와 똑같이 설정되어 있어요. 디미페이를 사용하려면 비밀번호를 변경해야 해요.",
                  actions: [
                    DPDialogAction(title: '설정하기', isHighlighted: true),
                  ],
                ),
              );
            },
            child: const Text('DIALOG'),
          ),
>>>>>>> cb7a314 (editCard page 구현)
        ],
      ),
    );
  }
}
