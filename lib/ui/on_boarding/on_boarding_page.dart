import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/on_boarding/on_boarding_bloc.dart';
import 'package:inker_studio/ui/create_account/create_user_by_type_page.dart';
import 'package:inker_studio/ui/login/login_page2.dart';
import 'package:inker_studio/ui/on_boarding/widgets/on_boarding_content_page_view.dart';
import 'package:inker_studio/ui/on_boarding/widgets/fixed_components.dart';
import 'package:inker_studio/ui/on_boarding/widgets/on_boarding_background.dart';
import 'package:inker_studio/utils/bloc_navigator.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const OnBoardingPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => OnBoardingBloc(),
        child: BlocListener<OnBoardingBloc, OnBoardingState>(
          listenWhen: (previous, current) =>
              previous.redirectTo != current.redirectTo,
          listener: (context, state) {
            switch (state.redirectTo) {
              case OnBoardingRedirectTo.loginPage:
                InkerNavigator.pushAndRemoveUntil(context, const LoginPage2());
                break;
              case OnBoardingRedirectTo.registerPage:
                InkerNavigator.pushAndRemoveUntil(
                    context, const CreateUserByTypePage());
                break;
              case OnBoardingRedirectTo.none:
                break;
            }
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
