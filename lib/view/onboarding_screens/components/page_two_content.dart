import 'package:flutter/material.dart';
import 'package:kumbod/view/widgets/text/default_text_widget.dart';

class PageTwoContent extends StatelessWidget {
  const PageTwoContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/create_team_champions.png",
          scale: 3.5,
        ),
        const SizedBox(
          height: 20,
        ),
        const DefaultTextWidget(
          text: "Create a team of",
          fontSize: 28,
          textColor: Color(0xFF333333),
          fontWeight: FontWeight.w700,
        ),
        const SizedBox(
          height: 5,
        ),
        const DefaultTextWidget(
          text: "champions",
          fontSize: 28,
          textColor: Color(0xFF333333),
          fontWeight: FontWeight.w700,
        ),
        const SizedBox(
          height: 20,
        ),
        const DefaultTextWidget(
          text: "Check up on your bod activities and",
          fontSize: 16,
          textColor: Color(0xFF041549),
          fontWeight: FontWeight.w400,
        ),
        const SizedBox(
          height: 5,
        ),
        const DefaultTextWidget(
          text: "opositions",
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
