import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

defaultTextStyle(
  double fontSize, {
  required Color color,
  required FontWeight fontWeight,
  required FontStyle fontStyle,
}) {
  return GoogleFonts.poppins(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle);
}
