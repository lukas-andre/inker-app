import 'package:flutter/material.dart';

class TextStyleTheme {
  static const TextStyle instance = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.normal,
      color: Color(0xFFF2F2F2),
      fontFamily: 'Poppins');

  static TextStyle copyWith(
      {double? fontSize,
      FontWeight? fontWeight,
      Color? color,
      String? fontFamily}) {
    return TextStyle(
        fontSize: fontSize ?? TextStyleTheme.instance.fontSize,
        fontWeight: fontWeight ?? TextStyleTheme.instance.fontWeight,
        color: color ?? const Color(0xFFF2F2F2),
        fontFamily: fontFamily ?? TextStyleTheme.instance.fontFamily);
  }

  static const String _fontFamily = 'Poppins';

  static const TextStyle _baseStyle = TextStyle(
    fontFamily: _fontFamily,
    color: Color(0xFFF2F2F2), // Default text color
  );

  // Headline styles
  static final TextStyle headline1 = _baseStyle.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle headline2 = _baseStyle.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle headline3 = _baseStyle.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  // Body text styles
  static final TextStyle bodyText1 = _baseStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle bodyText2 = _baseStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  // Button text style
  static final TextStyle button = _baseStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  // Subtitle styles
  static final TextStyle subtitle1 = _baseStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle subtitle2 = _baseStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  // Caption style
  static final TextStyle caption = _baseStyle.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );

  // Helper method to create custom styles
  static TextStyle custom({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    double? letterSpacing,
    double? height,
  }) {
    return _baseStyle.copyWith(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing,
      height: height,
    );
  }

  // Helper method to apply a color to any style
  static TextStyle withColor(TextStyle style, Color color) {
    return style.copyWith(color: color);
  }
}
