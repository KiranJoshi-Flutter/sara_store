import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color kPrimaryColor = const Color(0xFFea5c25);
Color kSecondaryColor = const Color(0xFFfea418);
Color kBackgroundColor = const Color(0xFFfaf6ea);
// ba6c5c
Color kDarkBackgroundColor = const Color(0xFFba6c5c);

const kDividerColor = Color(0xFFB6B6B6);

const kTextColor = Color(0xFF222222);

const kGradientPrimary = Color(0xFFFD9346);
const kGradientSecondary = Color(0xFFFD7F2C);
const kGradientTertiary = Color(0xFFFF6200);

const kLogoBlur = Color(0xFF047bfb);

TextStyle appTextStyle(
    FontWeight fontWeight, double fontSize, Color textColor) {
  return GoogleFonts.mukta(
    textStyle: TextStyle(
      fontSize: fontSize,
      color: textColor,
      fontWeight: fontWeight,
      letterSpacing: 0.1,
    ),
  );
}
