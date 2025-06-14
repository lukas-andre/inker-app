import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/services/platform/platform_service.dart';
import 'package:inker_studio/features/auth/ui/onboarding/widgets/custom_dots_indicator.dart';
import 'package:inker_studio/features/auth/ui/onboarding/widgets/onboarding_page_number_indicator.dart';
import 'package:inker_studio/features/auth/ui/onboarding/widgets/signin_and_register_buttons.dart';
import 'package:inker_studio/features/auth/ui/onboarding/widgets/onboarding_skip_button.dart';

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
