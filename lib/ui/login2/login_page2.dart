import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:inker_studio/domain/blocs/login/login_bloc.dart';
import 'package:inker_studio/ui/login2/widgets/login_background.dart';
import 'package:inker_studio/ui/login2/widgets/login_layout.dart';
import 'package:inker_studio/utils/snackbar/custom_snackbar.dart';

class LoginPage2 extends StatelessWidget {
  const LoginPage2({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const LoginPage2());
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
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: BlocProvider(
          create: (context) => LoginBloc(
              authBloc: context.read(),
              loginUseCase: context.read(),
              googleSingInUseCase: context.read(),
              createCustomerUseCase: context.read()),
          child: BlocListener<LoginBloc, LoginState>(
            listenWhen: (previous, current) =>
                previous.status != current.status,
            listener: (context, state) {
              if (state.userStatus == UserStatus.inactive &&
                  state.status == FormzStatus.submissionFailure) {
                final snackBar = _getUserInactiveSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
            child: Stack(
              children: const [
                LoginBackground(),
                LoginLayout(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SnackBar _getUserInactiveSnackBar() {
    return customSnackBar(
        content: 'Lo sentimos tu usuario esta inactivo 😭',
        duration: const Duration(days: 365),
        action: SnackBarAction(
          label: 'Activar',
          disabledTextColor: Colors.white,
          textColor: Colors.white,
          onPressed: () {
            //Do whatever you want
          },
        ));
  }
}
