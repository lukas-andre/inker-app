import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:inker_studio/domain/blocs/login/login_bloc.dart';
import 'package:inker_studio/ui/login/widgets/login_background.dart';
import 'package:inker_studio/ui/login/widgets/login_layout.dart';
import 'package:inker_studio/utils/snackbar/custom_snackbar.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const String invalidCredentialsMessage = 'Correo o contraseña incorrectos';
  static const String invalidCredentialsSnackBarKey = 'invalidCredentialsSnackBarKey';
  static const String userInactiveMessage = 'Lo sentimos tu usuario esta inactivo 😭';
  static const String userInactiveSnackBarKey = 'userInactiveSnackBarKey';
  static const String unknownErrorMessage = 'Correo o contraseña incorrectos 😭';
  static const String unknownErrorSnackBarKey = 'unknownErrorSnackBarKey';

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Platform.isIOS
          ? CupertinoScaffold(
              body: _scaffold(),
            )
          : _scaffold(),
    );
  }

  Scaffold _scaffold() {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocProvider(
        create: (context) => LoginBloc(
            authBloc: context.read(),
            loginUseCase: context.read(),
            googleSingInUseCase: context.read(),
            createCustomerUseCase: context.read(),
            deviceType: Platform.isIOS ? 'ios' : 'android'),
        child: BlocListener<LoginBloc, LoginState>(
          listenWhen: (previous, current) => previous.status != current.status,
          listener: (context, state) {
            if (state.status == FormzStatus.submissionFailure) {
              if (state.loginStatus == LoginStatus.invalidCredentials) {
                final snackBar = _getInvalidCredentialsSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }

              if (state.userStatus == UserStatus.inactive) {
                final snackBar = _getUserInactiveSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }

              if (state.loginStatus == LoginStatus.unknownError) {
                final snackBar = _getUnknownErrorSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }

              context.read<LoginBloc>().add(const LoginClearMessages());
            }
          },
          child: const Stack(
            children: [
              LoginBackground(),
              LoginLayout(),
            ],
          ),
        ),
      ),
    );
  }

  SnackBar _getUserInactiveSnackBar() {
    return customSnackBar(
        key: const Key(userInactiveSnackBarKey),
        content: userInactiveMessage,
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: 'Activar',
          disabledTextColor: Colors.white,
          textColor: Colors.white,
          onPressed: () {
            //Do whatever you want
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
