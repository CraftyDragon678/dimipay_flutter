import 'package:dimipay/app/widgets/button.dart';
import 'package:dimipay/app/widgets/text_field.dart';
import 'package:flutter/material.dart';

class ChargingAmountPage extends StatelessWidget {
  final FocusNode textFieldFocusNode = FocusNode();
  ChargingAmountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '얼마나 충전할까요',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 6),
                    const Text.rich(TextSpan(children: <TextSpan>[
                      TextSpan(text: "현재 금액 "),
                      TextSpan(
                        text: "3,700원",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      )
                    ])),
                    const SizedBox(height: 24),
                    GestureDetector(
                      onTap: () {
                        textFieldFocusNode.requestFocus();
                      },
                      child: DPTextField(
                        label: "충전 금액",
                        autofocus: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: DPMediumTextButton(
                text: '다음',
                width: double.infinity,
                onTap: () {},
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
