import 'package:flutter/material.dart';

class RegisterCustomSubTitle extends StatelessWidget {
  const RegisterCustomSubTitle(
      {super.key, required this.text, this.fontSize = 16});
  final String text;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(
            MediaQuery.of(context).size.width * 0.06, 15, 20, 20),
        child: Text(
          text,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: fontSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ));
  }
}
