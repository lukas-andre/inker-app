import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/features/login/ui/login/login_page.dart'
    show LoginPage;
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart'
    show CupertinoScaffold;
import 'package:inker_studio/domain/services/platform/platform_service.dart';
import 'package:inker_studio/features/onboarding/bloc/onboarding/onboarding_bloc.dart'
    show
        OnBoardingBloc,
        OnBoardingClearRedirect,
        OnBoardingRedirectTo,
        OnBoardingState;
import 'package:inker_studio/features/onboarding/ui/onboarding/widgets/onboarding_mobile_view.dart'
    show OnBoardingMobileView;
import 'package:inker_studio/features/onboarding/ui/onboarding/widgets/onboarding_web_view.dart'
    show OnBoardingWebView;
import 'package:inker_studio/features/register/ui/register/register_user_by_type_page.dart'
    show RegisterUserByTypePage;
import 'package:inker_studio/utils/bloc_navigator.dart';
import 'package:inker_studio/utils/layout/modal_bottom_sheet.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:inker_studio/ui/shared/widgets/secret_menu_widget.dart';
import 'package:inker_studio/ui/shared/widgets/environment_indicator.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const OnBoardingPage());
  }

  @override
  Widget build(BuildContext context) {
    final platformService = context.read<PlatformService>();
    final isWeb = platformService.isWeb;
    final isTabletOrDesktop = Responsive.isTablet(context) ||
        Responsive.isDesktop(context) ||
        Responsive.isDesktopLarge(context);

    return BlocListener<OnBoardingBloc, OnBoardingState>(
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
      child: Stack(
        children: [
          // Main content
          if (isWeb || isTabletOrDesktop)
            const OnBoardingWebView()
          else if (platformService.isIOS)
            const CupertinoScaffold(body: OnBoardingMobileView())
          else
            const OnBoardingMobileView(),
          
          // Secret menu trigger - top right corner
          Positioned(
            top: 50,
            right: 20,
            child: SecretMenuWidget(
              child: Container(
                width: 50,
                height: 50,
                color: Colors.transparent,
              ),
            ),
          ),
          
          // Environment indicator - top left corner
          const Positioned(
            top: 50,
            left: 20,
            child: EnvironmentIndicator(),
          ),
        ],
      ),
    );
  }
}
