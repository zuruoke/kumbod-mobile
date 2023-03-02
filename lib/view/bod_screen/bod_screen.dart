import 'package:flutter/material.dart';
import 'package:kumbod/view/bod_screen/components/body.dart';

class BodScreen extends StatelessWidget {
  const BodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodScreenBody(),
    );
  }
}
