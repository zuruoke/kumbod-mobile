import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kumbod/utils/styles/color_style.dart';
import 'package:kumbod/utils/styles/text_style.dart';

class DecoratedTextField extends StatelessWidget {
  final IconData? prefixIcon;
  final String hintText;
  final Widget? suffixIcon;
  final double? borderSideWidth;
  final double? borderRadius;
  final Color? borderColor;
  final bool isPassword;
  final TextStyle? hintTextStyle;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? textEditingController;
  const DecoratedTextField(
      {Key? key,
      required this.hintText,
      this.prefixIcon,
      this.borderColor,
      this.hintTextStyle,
      this.borderRadius,
      this.isPassword = false,
      this.inputFormatters,
      this.borderSideWidth,
      this.suffixIcon,
      this.textEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters,
      validator: ((value) {
        // if (value!.isEmpty) return "field cannot be empty";
        // if (isEmail) {
        //   bool isEmailValid = validateEmail(value);
        //   if (!isEmailValid) return "enter a valid email";
        // }
        // if (isPassword) {
        //   bool isPasswordValid = validatePassword(value);
        //   if (!isPasswordValid) return "password too weak";
        // }
        return null;
      }),
      controller: textEditingController,
      textInputAction: TextInputAction.next,
      obscureText: isPassword,
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.5, horizontal: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 0),
            borderSide: BorderSide(
                color: textFieldBorderColor, width: borderSideWidth ?? 2.1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 0),
            borderSide: BorderSide(
                color: textFieldBorderColor, width: borderSideWidth ?? 2.1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 0),
            borderSide: BorderSide(
                color: textFieldBorderColor, width: borderSideWidth ?? 2.1),
          ),
          prefixIcon: prefixIcon == null
              ? null
              : Icon(
                  prefixIcon,
                  size: 18,
                  color: textFieldBorderColor,
                ),
          hintText: hintText,
          hintStyle: hintTextStyle ??
              defaultTextStyle(
                15,
                color: Colors.grey,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
              ),
          suffixIcon: suffixIcon
          //suffixIcon: (suffixIcon != null) ? suffixIcon : null,
          ),
    );
  }
}
