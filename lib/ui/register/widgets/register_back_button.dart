import 'package:flutter/material.dart';

class RegisterBackButton extends StatelessWidget {
  const RegisterBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {Navigator.pop(context)},
      child: Container(
          padding: const EdgeInsets.only(left: 22, top: 22),
          child: Image.asset(
            'assets/icons/back.png',
          )),
    );
  }
}
