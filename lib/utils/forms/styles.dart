import 'package:flutter/material.dart';

EdgeInsetsGeometry inputContentPadding =
    const EdgeInsets.only(left: 28, top: 40);

Color inputBackgroundColor =
    HSLColor.fromColor(const Color(0xff262639)).withLightness(0.3).toColor();

OutlineInputBorder inputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(15),
  borderSide:
      const BorderSide(color: Color(0xff777E91), style: BorderStyle.none),
);

OutlineInputBorder focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(
      color: Color(0xff777E91),
    ));

TextStyle labelTextStyle = const TextStyle(
    color: Color(0xff777E91), fontSize: 16, fontFamily: 'Poppins');
