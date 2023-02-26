import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kumbod/routes/routes_generator.dart';
import 'package:kumbod/view/onboarding_screens/onboarding_screen.dart';

void main() async {
  // await Hive.initFlutter();
  // await Hive.openBox("");

  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const ProviderScope(child: KumBod()),
  );
}

class KumBod extends StatelessWidget {
  const KumBod({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      title: "KumBod",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white,
      ),
      home: const KumBodApp(),
    );
  }
}

class KumBodApp extends ConsumerStatefulWidget {
  const KumBodApp({Key? key}) : super(key: key);

  @override
  ConsumerState<KumBodApp> createState() => _KumBodAppState();
}

class _KumBodAppState extends ConsumerState<KumBodApp> {
  void _checkIfUserIsAuthorized() async {}

  startTimer() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, _checkIfUserIsAuthorized);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const OnboardingScreen();
  }
}
