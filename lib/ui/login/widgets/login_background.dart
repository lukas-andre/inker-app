import 'package:flutter/material.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

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
              border: Border.all(color: primaryColor, width: 3),
              color: primaryColor),
        ))
      ],
    );
  }
}
