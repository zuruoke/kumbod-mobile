import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PasswordSuffixIcon extends ConsumerWidget {
  const PasswordSuffixIcon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: const Icon(
          Icons.visibility_off_outlined,
          //Icons.visibility_outlined,
          color: Color(0xffb3b2b2),
          size: 23,
        ),
      ),
    );
  }
}
