import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/on_boarding/on_boarding_bloc.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Bloc onboardingBloc = context.read<OnBoardingBloc>();

    return BlocBuilder<OnBoardingBloc, OnBoardingState>(
      buildWhen: (previous, current) =>
          previous.contents[previous.page].showSkipButton !=
          current.contents[current.page].showSkipButton,
      builder: (context, state) {
        return AnimatedOpacity(
          opacity: state.contents[state.page].showSkipButton ? 1 : 0,
          duration: const Duration(milliseconds: 500),
          child: Padding(
            padding: const EdgeInsets.only(top: 23, right: 20),
            child: GestureDetector(
              onTap: () => state.contents[state.page].showSkipButton
                  ? onboardingBloc.add(const OnBoardingSkipPressed())
                  : null,
              child: const Text('Saltar',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontSize: 17.0,
                      color: Color(0x6bFFFFFF),
                      fontFamily: 'Poppins')),
            ),
          ),
        );
      },
    );
  }
}
