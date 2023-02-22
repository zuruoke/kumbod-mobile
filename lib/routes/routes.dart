import 'package:flutter/material.dart';
import 'package:kumbod/view/home/home_screen.dart';
import 'package:kumbod/view/onboarding_screens/onboarding_screen.dart';
import 'package:kumbod/view/widgets/errors/page_not_found_screen.dart';

class Routes {
  final dynamic args;
  final String pathName;

  Routes({
    this.args,
    required this.pathName,
  });

  getRouteWidget() {
    final Map<String, Widget> routes = {
      "/": const HomeScreen(),
      "/onboarding-screen": const OnboardingScreen(),
    };

    return routes[pathName] ?? const ErrorPageNotFoundScreen();
  }
}
