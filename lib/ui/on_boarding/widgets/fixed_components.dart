import 'package:flutter/material.dart';
import 'package:inker_studio/ui/on_boarding/widgets/custom_dots_indicator.dart';
import 'package:inker_studio/ui/on_boarding/widgets/on_boarding_page_number_indicator.dart';
import 'package:inker_studio/ui/on_boarding/widgets/sing_in_and_register_buttons.dart';
import 'package:inker_studio/ui/on_boarding/widgets/on_boarding_skip_button.dart';

class FixedComponents extends StatelessWidget {
  const FixedComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              OnBoardingSkipButton(),
            ],
          ),
          Row(
            children: const [
              OnBoardingPageNumberIndicator(),
            ],
          ),
          Row(
            children: const [
              CustomDotsIndicator(),
            ],
          ),
          Expanded(
            child: Row(
              children: const [
                SingInAndRegisterButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
