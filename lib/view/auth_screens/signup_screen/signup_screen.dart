import 'package:flutter/material.dart';
import 'package:kumbod/view/auth_screens/signup_screen/components/body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignupScreenBody(),
    );
  }
}
