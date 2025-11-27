import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/services/platform/platform_service.dart';
import 'package:inker_studio/features/onboarding/ui/onboarding/widgets/custom_dots_indicator.dart' show CustomDotsIndicator;
import 'package:inker_studio/features/onboarding/ui/onboarding/widgets/onboarding_page_number_indicator.dart' show OnBoardingPageNumberIndicator;
import 'package:inker_studio/features/onboarding/ui/onboarding/widgets/signin_and_register_buttons.dart' show SingInAndRegisterButton;
import 'package:inker_studio/features/onboarding/ui/onboarding/widgets/onboarding_skip_button.dart' show OnBoardingSkipButton;

class FixedComponents extends StatelessWidget {
  const FixedComponents({super.key});

  @override
  Widget build(BuildContext context) {
    final platformService = context.read<PlatformService>();

    return SafeArea(
      top: platformService.hasNotch,
      bottom: platformService.hasNotch,
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              OnBoardingSkipButton(),
            ],
          ),
          Row(
            children: [
              OnBoardingPageNumberIndicator(),
            ],
          ),
          Row(
            children: [
              CustomDotsIndicator(),
            ],
          ),
          Expanded(
            child: Row(
              children: [
                SingInAndRegisterButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
