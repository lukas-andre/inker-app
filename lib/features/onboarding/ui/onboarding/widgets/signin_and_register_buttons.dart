import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/features/onboarding/bloc/onboarding/onboarding_bloc.dart' show OnBoardingBloc, OnBoardingRegisterPressed, OnBoardingSignInPressed, OnBoardingState;
import 'package:inker_studio/test_utils/register_keys.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';

class SingInAndRegisterButton extends StatelessWidget {
  const SingInAndRegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    Bloc onboardingBloc = context.read<OnBoardingBloc>();

    return BlocBuilder<OnBoardingBloc, OnBoardingState>(
      buildWhen: (previous, current) =>
          previous.contents[previous.page].showSingInAndRegisterButtons !=
          current.contents[current.page].showSingInAndRegisterButtons,
      builder: (context, state) {
        final bottomPadding = Responsive.value(
          context,
          mobile: 40,
          tablet: 60,
          desktop: 80,
        );
        
        
        final buttonMaxWidth = Responsive.value(
          context,
          mobile: MediaQuery.of(context).size.width * 0.85,
          tablet: 400,
          desktop: 450,
        );
        
        final buttonHeight = Responsive.value(
          context,
          mobile: 48,
          tablet: 54,
          desktop: 60,
        );
        
        final fontSize = Responsive.fontSize(context, 16);
        
        return Expanded(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: bottomPadding),
              child: AnimatedOpacity(
                opacity:
                    state.contents[state.page].showSingInAndRegisterButtons ? 1 : 0,
                duration: const Duration(milliseconds: 500),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: buttonMaxWidth,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: double.infinity,
                          height: buttonHeight,
                          child: TextButton(
                            key: registerKeys.onboarding.registerButton,
                            onPressed: () {
                              onboardingBloc.add(const OnBoardingRegisterPressed());
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: const Color(0xffffffff),
                              shape: const StadiumBorder(),
                              backgroundColor: const Color(0xff232434),
                            ),
                            child: Text(
                              'Registrarme',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: fontSize,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        key: registerKeys.onboarding.signInButton,
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: double.infinity,
                          height: buttonHeight,
                          child: TextButton(
                            onPressed: () {
                              onboardingBloc.add(const OnBoardingSignInPressed());
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: const Color(0xffffffff),
                              shape: const StadiumBorder(),
                              backgroundColor: const Color(0xff7450FF),
                            ),
                            child: Text(
                              'Iniciar sesión',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: fontSize,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
