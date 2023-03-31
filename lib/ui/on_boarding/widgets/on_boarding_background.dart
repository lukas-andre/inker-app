import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class OnBoardingBackground extends StatelessWidget {
  const OnBoardingBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 40.0, sigmaY: 40.0),
      child: Container(
        color: primaryColor,
        alignment: Alignment.center,
      ),
    );
  }
}
