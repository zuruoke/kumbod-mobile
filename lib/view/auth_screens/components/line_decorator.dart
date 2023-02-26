import 'package:flutter/material.dart';
import 'package:kumbod/utils/alignments/alignments.dart';
import 'package:kumbod/view/auth_screens/components/linear_gradient_decorator.dart';
import 'package:kumbod/view/widgets/text/default_text_widget.dart';

class LineDecorator extends StatelessWidget {
  final String text;
  const LineDecorator({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const LinearGradientDecorator(
          isStartLeft: false,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: DefaultTextWidget(
            text: text,
            fontSize: 16.0,
            textColor: const Color(0xFF041549).withOpacity(.7),
            fontWeight: FontWeight.w400,
          ),
        ),
        const LinearGradientDecorator(
          isStartLeft: true,
        ),
      ],
    );
  }
}
