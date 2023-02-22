import 'package:flutter/material.dart';
import 'package:kumbod/view/onboarding_screens/components/body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnboardingScreenBody(),
    );
  }
}
