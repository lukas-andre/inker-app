import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/features/auth/bloc/onboarding/onboarding_bloc.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingBloc, OnBoardingState>(
      buildWhen: (previous, current) => previous.page != current.page,
      builder: (context, state) {
        return Expanded(
          child: Container(
            padding: const EdgeInsets.only(
              top: 227,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 39),
              child: DotsIndicator(
                dotsCount: state.contents.length,
                position: state.page,
                mainAxisAlignment: MainAxisAlignment.start,
                onTap: (index) {
                  context
                      .read<OnBoardingBloc>()
                      .add(OnBoardingMoveToIndex(index.toInt()));
                },
                decorator: DotsDecorator(activeColor: Theme.of(context).colorScheme.error),
              ),
            ),
          ),
        );
      },
    );
  }
}
