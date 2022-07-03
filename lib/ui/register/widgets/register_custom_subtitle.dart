import 'package:flutter/material.dart';

class RegisterCustomSubTitle extends StatelessWidget {
  const RegisterCustomSubTitle({Key? key, required this.text})
      : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            margin: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.06, 15, 20, 20),
            child: Text(
              text,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            )));
  }
}
