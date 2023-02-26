import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kumbod/utils/styles/color_style.dart';
import 'package:kumbod/utils/styles/text_style.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPField extends ConsumerWidget {
  final TextEditingController? textEditingController;
  const OTPField({
    Key? key,
    this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: EdgeInsets.symmetric(horizontal: 0.05 * size.width),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PinCodeTextField(
            length: 4,
            obscureText: false,
            animationType: AnimationType.fade,
            textStyle: defaultTextStyle(
              32,
              color: appColor,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            ),
            pinTheme: PinTheme(
              fieldHeight: 64,
              fieldWidth: 0.15 * size.width,
              activeFillColor: appColor,
              activeColor: appColor,
              inactiveColor: const Color(0xFFD0D5DD),
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(16),
            ),
            animationDuration: const Duration(milliseconds: 300),
            controller: textEditingController,
            onCompleted: (String value) {},
            onChanged: (value) {},
            beforeTextPaste: (text) {
              return true;
            },
            appContext: context,
          ),
        ],
      ),
    );
  }
}
