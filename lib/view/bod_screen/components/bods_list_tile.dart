import 'package:flutter/material.dart';
import 'package:kumbod/utils/alignments/alignments.dart';
import 'package:kumbod/utils/styles/color_style.dart';
import 'package:kumbod/view/widgets/buttons/decorated_button.dart';
import 'package:kumbod/view/widgets/text/default_text_widget.dart';

class BodListTile extends StatelessWidget {
  const BodListTile({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: 100,
      width: size.width,
      padding: const EdgeInsets.symmetric(
          horizontal: horizontalPadding, vertical: verticalPadding),
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
          color: Color.fromRGBO(118, 118, 122, 0.05),
          offset: Offset(3, 4),
          blurRadius: 19,
        )
      ], border: Border.all(color: const Color(0xFFF7F7F7), width: 1.0)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(0.0),
        onTap: () {},
        trailing: const DecoratedButton(
          text: "Join pool",
          textColor: Colors.white,
          height: 35,
          width: 82.2,
          color: appColorShade,
          fontSize: 10.5,
          fontWeight: FontWeight.w700,
        ),
        title: const DefaultTextWidget(
          text: "NFL Pool",
          fontSize: 16.5,
          fontWeight: FontWeight.w600,
          textColor: textThemeColor,
        ),
        subtitle: Row(
          children: const [
            DefaultTextWidget(
              text: "2 members",
              fontSize: 12.5,
              fontWeight: FontWeight.w300,
              textColor: appColorShade,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.brightness_1_rounded,
              size: 4.5,
              color: Color(0xFF949BA5),
            ),
            SizedBox(
              width: 5,
            ),
            DefaultTextWidget(
              text: "Closing in 24h",
              fontSize: 12.5,
              fontWeight: FontWeight.w400,
              textColor: Color(0xFF949BA5),
            ),
          ],
        ),
        leading: Container(
          height: 65,
          width: 65,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: appColorShade,
              width: 3.0,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                    height: 69,
                    width: 69,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white)),
              ),
              Positioned(
                top: 3.5,
                left: 0,
                right: 0,
                bottom: 3.5,
                child: Container(
                  height: 58,
                  width: 58,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFC4C4C4)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
