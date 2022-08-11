import 'package:flutter/material.dart';

class TextStyleTheme {
  static const TextStyle instance = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.normal,
      color: Colors.black,
      fontFamily: 'Poppins');

  static TextStyle copyWith(
      {double? fontSize,
      FontWeight? fontWeight,
      Color? color,
      String? fontFamily}) {
    return TextStyle(
        fontSize: fontSize ?? TextStyleTheme.instance.fontSize,
        fontWeight: fontWeight ?? TextStyleTheme.instance.fontWeight,
        color: color ?? TextStyleTheme.instance.color,
        fontFamily: fontFamily ?? TextStyleTheme.instance.fontFamily);
  }
}
