import 'package:flutter/material.dart';
import 'package:kumbod/view/auth_screens/login_screen/login_screen.dart';
import 'package:kumbod/view/auth_screens/signup_screen/signup_screen.dart';
import 'package:kumbod/view/bod_screen/bod_screen.dart';
import 'package:kumbod/view/home/home_screen.dart';
import 'package:kumbod/view/onboarding_screens/onboarding_screen.dart';
import 'package:kumbod/view/profile_screen/profile_screen.dart';
import 'package:kumbod/view/search_screen/search_screen.dart';
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
      "/tab-screen": const HomeScreen(),
      "/": const HomeScreen(),
      "/onboarding-screen": const OnboardingScreen(),
      "/login-screen": const LoginScreen(),
      "/signup_screen": const SignUpScreen(),
      "/search-screen": const SearchScreen(),
      "/bod-screen": const BodScreen(),
      ".profile-screen": const ProfileScreen(),
    };

    return routes[pathName] ?? const ErrorPageNotFoundScreen();
  }
}
