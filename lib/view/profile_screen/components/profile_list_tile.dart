import 'package:flutter/material.dart';
import 'package:kumbod/utils/alignments/alignments.dart';
import 'package:kumbod/utils/styles/color_style.dart';
import 'package:kumbod/view/widgets/text/default_text_widget.dart';

class ProfileListTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color iconColor;
  const ProfileListTile({
    super.key,
    required this.text,
    required this.icon,
    this.iconColor = appColorShade,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: 65,
      width: size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: horizontalPadding,
      ),
      decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(0.0),
        onTap: () {},
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          size: 21,
          color: Color(0xFF9EA3AE),
        ),
        title: DefaultTextWidget(
            text: text,
            fontSize: 16.5,
            fontWeight: FontWeight.w400,
            textColor: const Color(0xFF72777A)),
        leading: Icon(
          icon,
          color: iconColor,
          size: 25,
        ),
      ),
    );
  }
}
