import 'package:flutter/material.dart';

class LinearGradientDecorator extends StatelessWidget {
  final bool isStartLeft;
  const LinearGradientDecorator({
    super.key,
    this.isStartLeft = false,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
        height: 5,
        width: 0.22 * size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: isStartLeft ? Alignment.bottomLeft : Alignment.bottomRight,
            end: isStartLeft ? Alignment.bottomRight : Alignment.bottomLeft,
            colors: [
              const Color(0xFF7A5AF8),
              const Color(0xFFC4C4C4).withOpacity(0),
            ],
          ),
        ));
  }
}
