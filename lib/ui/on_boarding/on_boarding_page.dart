import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/on_boarding/on_boarding_bloc.dart';
import 'package:inker_studio/domain/services/platform/platform_service.dart';
import 'package:inker_studio/ui/login/login_page.dart';
import 'package:inker_studio/ui/on_boarding/widgets/on_boarding_content_page_view.dart';
import 'package:inker_studio/ui/on_boarding/widgets/fixed_components.dart';
import 'package:inker_studio/ui/on_boarding/widgets/on_boarding_background.dart';
import 'package:inker_studio/ui/register/register_user_by_type_page.dart';
import 'package:inker_studio/utils/bloc_navigator.dart';
import 'package:inker_studio/utils/layout/modal_bottom_sheet.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const OnBoardingPage());
  }

  @override
  Widget build(BuildContext context) {
    final platformService = context.read<PlatformService>();
    return platformService.isIOS ? CupertinoScaffold(body: _scaffold()) : _scaffold();
  }

  Scaffold _scaffold() {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      body: BlocListener<OnBoardingBloc, OnBoardingState>(
        listenWhen: (previous, current) =>
            previous.redirectTo != current.redirectTo,
        listener: (context, state) {
          switch (state.redirectTo) {
            case OnBoardingRedirectTo.loginPage:
              InkerNavigator.push(context, const LoginPage());
              break;
            case OnBoardingRedirectTo.registerPage:
              openModalBottomSheet(
                  context: context,
                  page: const RegisterUserByTypePage(),
                  isRoot: true);
              break;
            case OnBoardingRedirectTo.none:
              break;
          }
          context.read<OnBoardingBloc>().add(const OnBoardingClearRedirect());
        },
        child: const Stack(
          children: [
            OnBoardingBackground(),
            OnBoardingContentPageView(),
            FixedComponents(),
          ],
        ),
      ),
    );
  }
}
