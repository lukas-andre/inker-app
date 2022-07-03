import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/on_boarding/on_boarding_bloc.dart';
import 'package:inker_studio/ui/login2/login_page2.dart';
import 'package:inker_studio/ui/on_boarding/widgets/on_boarding_content_page_view.dart';
import 'package:inker_studio/ui/on_boarding/widgets/fixed_components.dart';
import 'package:inker_studio/ui/on_boarding/widgets/on_boarding_background.dart';
import 'package:inker_studio/ui/register/register_user_by_type_page.dart';
import 'package:inker_studio/utils/bloc_navigator.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const OnBoardingPage());
  }

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? CupertinoScaffold(body: _scaffold()) : _scaffold();
  }

  Scaffold _scaffold() {
    return Scaffold(
      body: BlocProvider(
        create: (context) => OnBoardingBloc(),
        child: BlocListener<OnBoardingBloc, OnBoardingState>(
          listenWhen: (previous, current) =>
              previous.redirectTo != current.redirectTo,
          listener: (context, state) {
            Bloc onboardingBloc = context.read<OnBoardingBloc>();
            switch (state.redirectTo) {
              case OnBoardingRedirectTo.loginPage:
                InkerNavigator.push(context, const LoginPage2());
                break;
              case OnBoardingRedirectTo.registerPage:
                if (Platform.isIOS) {
                  CupertinoScaffold.showCupertinoModalBottomSheet(
                      context: context,
                      builder: (context) => const RegisterUserByTypePage());
                } else {
                  showMaterialModalBottomSheet(
                      context: context,
                      builder: (context) => const RegisterUserByTypePage());
                }
                break;
              case OnBoardingRedirectTo.none:
                break;
            }
            onboardingBloc.add(const OnBoardingClearRedirect());
          },
          child: Stack(
            children: const [
              OnBoardingBackground(),
              OnBoardingContentPageView(),
              FixedComponents(),
            ],
          ),
        ),
      ),
    );
  }
}
