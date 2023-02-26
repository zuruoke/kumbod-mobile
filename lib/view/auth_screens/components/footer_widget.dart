import 'package:flutter/material.dart';
import 'package:kumbod/utils/styles/color_style.dart';
import 'package:kumbod/view/widgets/text/default_text_widget.dart';

class FooterWidget extends StatelessWidget {
  final String title;
  final String buttonText;
  const FooterWidget({
    super.key,
    required this.title,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DefaultTextWidget(
          text: title,
          fontSize: 15.0,
          textColor: const Color(0xFF041549).withOpacity(.7),
          fontWeight: FontWeight.w400,
        ),
        InkWell(
          onTap: () {
            buttonText == "Resend Code"
                ? () {}
                : buttonText == "Login"
                    ? Navigator.pushNamed(context, "/login-screen")
                    : Navigator.pushNamed(context, "/signup_screen");
          },
          child: DefaultTextWidget(
            text: buttonText,
            fontSize: 15.0,
            textColor: appColor,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
