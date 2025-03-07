import 'package:flutter/material.dart';

EdgeInsetsGeometry inputContentPadding =
    const EdgeInsets.only(left: 28, top: 40);

const Color primaryColor = Color(0xFF141D3C);
Color secondaryColor = const Color(0xff7450ff);
Color tertiaryColor = const Color(0xff686D90);
Color quaternaryColor = const Color(0xffF2F2F2);
Color yellowColor = const Color(0xffFDD22E);
Color greyColor = const Color(0xFF707070);

Color inputBackgroundColor =
    HSLColor.fromColor(const Color(0xff262639)).withLightness(0.3).toColor();

Color explorerSecondaryColor = const Color(0xFF1F223C);
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
  color: Color(0xff777E91),
  fontSize: 16,
  fontFamily: 'Poppins',
);

TextStyle hintTextStyle = const TextStyle(
  color: Color(0xff777E91),
  fontSize: 15,
  fontFamily: 'Poppins',
);
