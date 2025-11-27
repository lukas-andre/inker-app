import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:inker_studio/domain/services/platform/platform_service.dart';
import 'package:inker_studio/features/account_reactivation/ui/account_reactivation/account_reactivation_page.dart'
    show AccountReactivationPage;
import 'package:inker_studio/features/login/bloc/login/login_bloc.dart'
    show LoginBloc, LoginClearMessages, LoginState, LoginStatus, UserStatus;
import 'package:inker_studio/features/login/ui/login/widgets/login_background.dart'
    show LoginBackground;
import 'package:inker_studio/features/login/ui/login/widgets/login_layout.dart'
    show LoginLayout;
import 'package:inker_studio/utils/layout/modal_bottom_sheet.dart';
import 'package:inker_studio/utils/snackbar/custom_snackbar.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:inker_studio/ui/shared/widgets/secret_menu_widget.dart';
import 'package:inker_studio/ui/shared/widgets/environment_indicator.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const String invalidCredentialsMessage =
      'Correo o contraseña incorrectos';
  static const String invalidCredentialsSnackBarKey =
      'invalidCredentialsSnackBarKey';
  static const String userInactiveMessage =
      'Lo sentimos tu usuario esta inactivo 😭';
  static const String userInactiveSnackBarKey = 'userInactiveSnackBarKey';
  static const String unknownErrorMessage =
      'Correo o contraseña incorrectos 😭';
  static const String unknownErrorSnackBarKey = 'unknownErrorSnackBarKey';

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    final platformService = context.read<PlatformService>();
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: platformService.isIOS
          ? CupertinoScaffold(
              body: _scaffold(),
            )
          : _scaffold(),
    );
  }

  Scaffold _scaffold() {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Builder(builder: (context) {
        final platformService = context.read<PlatformService>();
        return BlocProvider(
          create: (context) => LoginBloc(
              authBloc: context.read(),
              loginUseCase: context.read(),
              googleSingInUseCase: context.read(),
              createCustomerUseCase: context.read(),
              deviceType: platformService.isIOS ? 'ios' : 'android'),
          child: BlocListener<LoginBloc, LoginState>(
            listenWhen: (previous, current) =>
                previous.status != current.status,
            listener: (context, state) {
              if (state.status == FormzStatus.submissionFailure) {
                if (state.userStatus == UserStatus.inactive) {
                  final snackBar = _getUserInactiveSnackBar(context);

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }

                if (state.loginStatus == LoginStatus.invalidCredentials) {
                  final snackBar = _getInvalidCredentialsSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }

                if (state.loginStatus == LoginStatus.unknownError) {
                  final snackBar = _getUnknownErrorSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }

                context.read<LoginBloc>().add(const LoginClearMessages());
              }
            },
            child: Stack(
              children: [
                const LoginBackground(),
                const LoginLayout(),
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
          ),
        );
      }),
    );
  }

  SnackBar _getUserInactiveSnackBar(BuildContext context) {
    return customSnackBar(
        key: const Key(userInactiveSnackBarKey),
        content: userInactiveMessage,
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: 'Activar',
          disabledTextColor: Colors.white,
          textColor: Colors.white,
          onPressed: () {
            openModalBottomSheet(
                context: context,
                page: const AccountReactivationPage(),
                enableDrag: false);
          },
        ));
  }

  SnackBar _getInvalidCredentialsSnackBar() {
    return customSnackBar(
        key: const Key(invalidCredentialsSnackBarKey),
        content: invalidCredentialsMessage,
        duration: const Duration(seconds: 4),
        action: SnackBarAction(
          label: 'OK',
          disabledTextColor: Colors.white,
          textColor: Colors.white,
          onPressed: () {
            //Do whatever you want
          },
        ));
  }

  SnackBar _getUnknownErrorSnackBar() {
    return customSnackBar(
        key: const Key(unknownErrorSnackBarKey),
        content: unknownErrorMessage,
        duration: const Duration(seconds: 4),
        action: SnackBarAction(
          label: 'OK',
          disabledTextColor: Colors.white,
          textColor: Colors.white,
          onPressed: () {
            //Do whatever you want
          },
        ));
  }
}
