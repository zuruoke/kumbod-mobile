import 'package:flutter/material.dart';
import 'package:kumbod/view/widgets/text/default_text_widget.dart';

class PageOneContent extends StatelessWidget {
  const PageOneContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/stake_wt_friends.png",
          scale: 3.5,
        ),
        const SizedBox(
          height: 20,
        ),
        const DefaultTextWidget(
          text: "Stake and win with",
          fontSize: 28,
          textColor: Color(0xFF333333),
          fontWeight: FontWeight.w700,
        ),
        const SizedBox(
          height: 5,
        ),
        const DefaultTextWidget(
          text: "your friends",
          fontSize: 28,
          textColor: Color(0xFF333333),
          fontWeight: FontWeight.w700,
        ),
        const SizedBox(
          height: 20,
        ),
        const DefaultTextWidget(
          text: "Invite your friends and enjoy the thrill",
          fontSize: 16,
          textColor: Color(0xFF041549),
          fontWeight: FontWeight.w400,
        ),
        const SizedBox(
          height: 5,
        ),
        const DefaultTextWidget(
          text: "of winning together",
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
