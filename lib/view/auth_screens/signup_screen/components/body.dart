import 'package:flutter/material.dart';
import 'package:kumbod/utils/alignments/alignments.dart';
import 'package:kumbod/utils/styles/color_style.dart';
import 'package:kumbod/view/auth_screens/components/footer_widget.dart';
import 'package:kumbod/view/auth_screens/components/line_decorator.dart';
import 'package:kumbod/view/widgets/buttons/decorated_button.dart';
import 'package:kumbod/view/widgets/input_fields/decorated_input_field.dart';
import 'package:kumbod/view/widgets/input_fields/password_suffix_icon.dart';
import 'package:kumbod/view/widgets/text/default_text_widget.dart';

class SignupScreenBody extends StatelessWidget {
  const SignupScreenBody({super.key});

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
            const DefaultTextWidget(
              text: "Welcome!",
              fontSize: 28,
              fontWeight: FontWeight.w700,
              textColor: textColor,
            ),
            const SizedBox(
              height: 20,
            ),
            const DefaultTextWidget(
              text: "Sign up to your account",
              fontSize: 24,
              fontWeight: FontWeight.w600,
              textColor: textColor,
            ),
            const SizedBox(
              height: 50,
            ),
            const DecoratedInputField(
              titleTextFontSize: 16.0,
              hintText: "Enter your first name",
              fontWeight: FontWeight.w500,
              titleText: "First name",
              titleTextColor: Color(0xFF344054),
              borderRadius: 8.0,
            ),
            const SizedBox(
              height: 20,
            ),
            const DecoratedInputField(
              titleTextFontSize: 16.0,
              hintText: "Enter your last name",
              fontWeight: FontWeight.w500,
              titleText: "Last name",
              titleTextColor: Color(0xFF344054),
              borderRadius: 8.0,
            ),
            const SizedBox(
              height: 20,
            ),
            const DecoratedInputField(
              titleTextFontSize: 16.0,
              hintText: "Enter your email",
              fontWeight: FontWeight.w500,
              titleText: "Email",
              titleTextColor: Color(0xFF344054),
              borderRadius: 8.0,
            ),
            const SizedBox(
              height: 20,
            ),
            const DecoratedInputField(
              titleTextFontSize: 16.0,
              hintText: "Enter your password",
              fontWeight: FontWeight.w500,
              titleText: "Password",
              isPassword: true,
              titleTextColor: Color(0xFF344054),
              borderRadius: 8.0,
              suffixIcon: PasswordSuffixIcon(),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: InkWell(
                onTap: () {},
                child: const DecoratedButton(
                  text: "Register",
                  height: 56.0,
                  textColor: Colors.white,
                  color: appColor,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const LineDecorator(
              text: "Or Sign Up With",
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "assets/images/google_logo.png",
                    scale: 3.4,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "assets/images/apple_logo.png",
                    scale: 3.4,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const FooterWidget(
                title: "Already have an account? ", buttonText: "Login"),
          ],
        )),
      ),
    );
  }
}
