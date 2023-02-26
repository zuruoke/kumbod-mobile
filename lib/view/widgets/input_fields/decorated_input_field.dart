import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kumbod/view/widgets/input_fields/decorated_text_field.dart';
import 'package:kumbod/view/widgets/text/default_text_widget.dart';

class DecoratedInputField extends StatelessWidget {
  final String titleText;
  final IconData? prefixIcon;
  final String hintText;
  final Widget? suffixIcon;
  final double? borderSideWidth;
  final double? borderRadius;
  final Color? borderColor;
  final TextStyle? hintTextStyle;
  final bool isPassword;
  final FontWeight? fontWeight;
  final double titleTextFontSize;
  final Color? titleTextColor;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? textEditingController;
  const DecoratedInputField(
      {super.key,
      required this.hintText,
      required this.titleText,
      required this.titleTextFontSize,
      this.prefixIcon,
      this.borderColor,
      this.hintTextStyle,
      this.fontWeight,
      this.titleTextColor,
      this.borderRadius,
      this.isPassword = false,
      this.inputFormatters,
      this.borderSideWidth,
      this.suffixIcon,
      this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DefaultTextWidget(
          text: titleText,
          fontSize: titleTextFontSize,
          fontWeight: fontWeight,
          textColor: titleTextColor,
        ),
        const SizedBox(
          height: 20,
        ),
        DecoratedTextField(
          textEditingController: textEditingController,
          prefixIcon: prefixIcon,
          borderColor: borderColor,
          hintTextStyle: hintTextStyle,
          hintText: hintText,
          borderRadius: borderRadius,
          inputFormatters: inputFormatters,
          isPassword: isPassword,
          borderSideWidth: borderSideWidth,
          suffixIcon: suffixIcon,
        )
      ],
    );
  }
}
