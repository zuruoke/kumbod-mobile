import 'package:flutter/material.dart';
import 'package:kumbod/view/auth_screens/otp_screen/components/body.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OTPScreenBody(),
    );
  }
}
