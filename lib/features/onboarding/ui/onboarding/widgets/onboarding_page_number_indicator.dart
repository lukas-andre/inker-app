import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/features/auth/bloc/onboarding/onboarding_bloc.dart';

class OnBoardingPageNumberIndicator extends StatelessWidget {
  const OnBoardingPageNumberIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingBloc, OnBoardingState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.only(left: 33),
          width: 97,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 25,
              right: 20,
            ),
            child: Container(
                height: 25,
                decoration: ShapeDecoration(
                  color: Theme.of(context).colorScheme.error,
                  shape: const StadiumBorder(),
                ),
                child: Center(
                  child: Text(
                    '${state.pageNumber} de 3',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500),
                  ),
                )),
          ),
        );
      },
    );
  }
}
