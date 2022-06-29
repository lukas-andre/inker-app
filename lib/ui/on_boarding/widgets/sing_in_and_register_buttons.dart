import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/on_boarding/on_boarding_bloc.dart';

class SingInAndRegisterButton extends StatelessWidget {
  const SingInAndRegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Bloc onboardingBloc = context.read<OnBoardingBloc>();

    return BlocBuilder<OnBoardingBloc, OnBoardingState>(
      buildWhen: (previous, current) =>
          previous.contents[previous.page].showSingInAndRegisterButtons !=
          current.contents[current.page].showSingInAndRegisterButtons,
      builder: (context, state) {
        return Expanded(
            child: Center(
                child: Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: AnimatedOpacity(
            opacity:
                state.contents[state.page].showSingInAndRegisterButtons ? 1 : 0,
            duration: const Duration(milliseconds: 500),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      onboardingBloc.add(const OnBoardingRegisterPressed());
                    },
                    child: const Text('Registrarme'),
                    style: TextButton.styleFrom(
                        shape: const StadiumBorder(),
                        primary: const Color(0xffffffff),
                        backgroundColor: const Color(0xff232434),
                        minimumSize: const Size(300, 50),
                        maximumSize: const Size(387, 60)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      onboardingBloc.add(const OnBoardingSignInPressed());
                    },
                    child: const Text('Iniciar sesión'),
                    style: TextButton.styleFrom(
                        shape: const StadiumBorder(),
                        primary: const Color(0xffffffff),
                        backgroundColor: const Color(0xff7450FF),
                        minimumSize: const Size(300, 50),
                        maximumSize: const Size(387, 60)),
                  ),
                )
              ],
            ),
          ),
        )));
      },
    );
  }
}
