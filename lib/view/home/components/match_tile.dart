import 'package:flutter/material.dart';
import 'package:kumbod/utils/alignments/alignments.dart';
import 'package:kumbod/utils/styles/color_style.dart';
import 'package:kumbod/view/widgets/text/default_text_widget.dart';

class MatchTile extends StatelessWidget {
  const MatchTile({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: horizontalPadding, vertical: verticalPadding),
      height: 200,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: .2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          _TeamTile(
            imagePath: "assets/images/chelsea_logo.png",
            target: "Win",
            teamName: "Chelsea",
          ),
          _CenterTile(
            titleText: "Premier League",
            time: "00:00",
          ),
          _TeamTile(
            imagePath: "assets/images/leicester_city_logo.png",
            target: "Lose",
            teamName: "Leicester",
          ),
        ],
      ),
    );
  }
}

class _CenterTile extends StatelessWidget {
  final String titleText;
  final String time;
  const _CenterTile({super.key, required this.titleText, required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DefaultTextWidget(
          text: titleText,
          fontSize: 10.5,
          fontWeight: FontWeight.w400,
          textColor: hintColor,
        ),
        const SizedBox(
          height: 15,
        ),
        const DefaultTextWidget(
          text: "VS",
          fontSize: 24.5,
          fontWeight: FontWeight.w700,
          textColor: textThemeColor,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.brightness_1_rounded,
              color: Color(0xFFF79009),
              size: 13.5,
            ),
            const SizedBox(
              width: 5,
            ),
            DefaultTextWidget(
                text: time,
                fontSize: 10.5,
                fontWeight: FontWeight.w400,
                textColor: const Color(0xFF949BA5)),
          ],
        )
      ],
    );
  }
}

class _TeamTile extends StatelessWidget {
  final String imagePath;
  final String target;
  final String teamName;
  const _TeamTile({
    super.key,
    required this.imagePath,
    required this.target,
    required this.teamName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          imagePath,
          scale: 3.0,
        ),
        DefaultTextWidget(
          text: teamName,
          fontSize: 12.5,
          textColor: textColor,
          fontWeight: FontWeight.w600,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 44,
            width: 85,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFFF5FAFF),
              borderRadius: BorderRadius.circular(6),
              border: Border.all(
                  color: Color(0xFF0000000).withOpacity(.5), width: .5),
            ),
            child: DefaultTextWidget(
              text: target,
              textColor: hintColor,
              fontWeight: FontWeight.w600,
              fontSize: 12.5,
            ),
          ),
        )
      ],
    );
  }
}
