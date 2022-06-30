import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
              child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset(
              'assets/icons/back.png',
            ),
          )),
          Expanded(
              child: Container(
            padding: const EdgeInsets.only(right: 27),
            // margin: const EdgeInsets.only(left: 100),
            child: const Text(
              'Registrarme',
              textAlign: TextAlign.end,
              style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500),
            ),
          )),
        ],
      ),
    );
  }
}
