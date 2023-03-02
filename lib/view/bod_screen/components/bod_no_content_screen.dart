import 'package:flutter/material.dart';
import 'package:kumbod/utils/alignments/alignments.dart';
import 'package:kumbod/utils/styles/color_style.dart';
import 'package:kumbod/view/widgets/buttons/decorated_button.dart';
import 'package:kumbod/view/widgets/text/default_text_widget.dart';

class BodNoContentScreen extends StatelessWidget {
  const BodNoContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/no_bods.png",
          scale: 2.0,
        ),
        const SizedBox(
          height: 40,
        ),
        const DefaultTextWidget(
          fontSize: 16.5,
          text: "No active bods yet!",
          textColor: hintColor,
          fontWeight: FontWeight.w500,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding + 10,
            vertical: verticalPadding,
          ),
          child: DefaultTextWidget(
            textAlign: TextAlign.center,
            fontSize: 14.5,
            text:
                "You don’t have any active bods yet. Click the button below to create",
            textColor: Color(0xFF758494),
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {},
          child: DecoratedButton(
            height: 56,
            width: 0.6 * size.width,
            text: "Create Bod",
            color: appColor,
            textColor: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 16.5,
          ),
        ),
      ],
    );
  }
}
