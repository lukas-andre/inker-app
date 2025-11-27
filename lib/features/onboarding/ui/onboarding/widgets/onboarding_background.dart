import 'dart:ui';

import 'package:flutter/material.dart';

class OnBoardingBackground extends StatelessWidget {
  const OnBoardingBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 40.0, sigmaY: 40.0),
      child: Container(
        color: Theme.of(context).colorScheme.surface,
        alignment: Alignment.center,
      ),
    );
  }
}
