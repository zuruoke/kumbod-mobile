import 'package:flutter/material.dart';
import 'package:kumbod/view/widgets/text/default_text_widget.dart';

class PageThreeContent extends StatelessWidget {
  const PageThreeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/betting_bodman.png",
          scale: 3.5,
        ),
        const SizedBox(
          height: 20,
        ),
        const DefaultTextWidget(
          text: "The best betting platform",
          fontSize: 28,
          textColor: Color(0xFF333333),
          fontWeight: FontWeight.w700,
        ),
        const SizedBox(
          height: 5,
        ),
        const DefaultTextWidget(
          text: "for a bodman",
          fontSize: 28,
          textColor: Color(0xFF333333),
          fontWeight: FontWeight.w700,
        ),
        const SizedBox(
          height: 20,
        ),
        const DefaultTextWidget(
          text: "We are the best at what we do with",
          fontSize: 16,
          textColor: Color(0xFF041549),
          fontWeight: FontWeight.w400,
        ),
        const SizedBox(
          height: 5,
        ),
        const DefaultTextWidget(
          text: "the most efficiency",
          fontSize: 16,
          textColor: Color(0xFF041549),
          fontWeight: FontWeight.w400,
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
