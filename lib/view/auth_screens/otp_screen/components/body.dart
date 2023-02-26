import 'package:flutter/material.dart';
import 'package:kumbod/utils/alignments/alignments.dart';
import 'package:kumbod/utils/styles/color_style.dart';
import 'package:kumbod/view/auth_screens/components/footer_widget.dart';
import 'package:kumbod/view/auth_screens/otp_screen/components/otp_field.dart';
import 'package:kumbod/view/widgets/buttons/decorated_button.dart';
import 'package:kumbod/view/widgets/text/default_text_widget.dart';
import 'package:kumbod/view/widgets/tile/navigator_tile.dart';

class OTPScreenBody extends StatelessWidget {
  const OTPScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      height: double.infinity,
      width: double.infinity,
      child: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Align(alignment: Alignment.topLeft, child: NavigatorTile()),
            const SizedBox(
              height: 20,
            ),
            const DefaultTextWidget(
              text: "Enter 4-digits code",
              fontSize: 28,
              fontWeight: FontWeight.w700,
              textColor: textColor,
            ),
            const SizedBox(
              height: 50,
            ),
            const OTPField(),
            const SizedBox(
              height: 25,
            ),
            const FooterWidget(
                title: "Didn’t receive the code? ", buttonText: "Resend Code"),
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: InkWell(
                onTap: () {},
                child: const DecoratedButton(
                  text: "Verify",
                  height: 56.0,
                  textColor: Colors.white,
                  color: appColor,
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
