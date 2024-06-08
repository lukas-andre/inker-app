import 'package:flutter/material.dart';

class RegisterCustomTitle extends StatelessWidget {
  const RegisterCustomTitle({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            margin: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.06, 30, 50, 20),
            child: Text(
              text,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 22,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            )));
  }
}
