import 'package:flutter/material.dart';

class LoginBackground extends StatelessWidget {
  const LoginBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff141D3C), width: 3),
              color: const Color(0xff141D3C)),
          // color: const Color(0xff141D3C),
        ))
      ],
    );
  }
}
