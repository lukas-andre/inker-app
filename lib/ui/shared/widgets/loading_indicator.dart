import 'package:flutter/material.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      color: secondaryColor,
    );
  }
} 