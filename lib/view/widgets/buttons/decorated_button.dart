import 'package:flutter/material.dart';
import 'package:kumbod/utils/styles/color_style.dart';
import 'package:kumbod/view/widgets/text/default_text_widget.dart';

class DecoratedButton extends StatelessWidget {
  final double? height;
  final double? width;
  final double? borderRadius;
  final Color? color;
  final String text;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  const DecoratedButton({
    super.key,
    this.height,
    required this.text,
    this.fontWeight,
    this.textColor,
    this.color,
    this.borderRadius,
    this.fontSize,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      height: height ?? 40,
      width: width ?? size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
        color: color ?? appColor,
      ),
      child: DefaultTextWidget(
        text: text,
        textColor: textColor ?? Colors.white,
        fontSize: fontSize ?? 16,
        fontWeight: fontWeight ?? FontWeight.w700,
      ),
    );
  }
}
