import 'package:flutter/material.dart';
import 'package:kumbod/view/wallet_screen/components/body.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WalletScreenBody(),
    );
  }
}
