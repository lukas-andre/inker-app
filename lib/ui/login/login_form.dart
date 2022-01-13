import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';
import 'package:inker_studio/domain/blocs/login/login_bloc.dart';
import 'package:inker_studio/ui/create_account/create_account.dart';
import 'package:inker_studio/ui/create_account/create_customer/create_customer_page.dart';
import 'package:inker_studio/ui/forgot_password/forgot_password.dart';
import 'package:inker_studio/ui/login/buttons/google_signin_button.dart';
import 'package:inker_studio/ui/login/login.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class LoginForm extends StatelessWidget {
  static const String className = 'LoginForm';

  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dev.log('context: $context', className);
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        dev.log('Form status: ${state.status}', className);
        if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(content: Text('Authentication Failure')),
            );
        }
      },
      child: Align(
        alignment: const Alignment(0, -1 / 3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const _loginText(),
            _UsernameInput(),
            const Padding(padding: EdgeInsets.all(12)),
            _PasswordInput(),
            SizedBox(height: 40 ,),
            const Padding(padding: EdgeInsets.all(12)),
            _LoginButton(),
            const Padding(padding: EdgeInsets.all(12)),
            const Padding(padding: EdgeInsets.all(12)),
            const GoogleSignInButton(),
            // FutureBuilder(
            //   future: GoogleAuthService.initializeFirebase(context: context),
            //   builder: (context, snapshot) {
            //     dev.log('snapshot: $snapshot', className);
            //     if (snapshot.hasError) {
            //       return const Text('Error initializing Firebase');
            //     } else if (snapshot.connectionState == ConnectionState.done) {
            //       return const GoogleSignInButton();
            //     }
            //     return CircularProgressIndicator(
            //       valueColor: AlwaysStoppedAnimation<Color>(
            //         Theme.of(context).primaryColor,
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

class _loginText extends StatelessWidget {
  const _loginText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Login",
            style: TextStyle(color: Colors.white, fontSize: 50),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Descubre todos los beneficios de formar parte de Inker",
              style: TextStyle(color: Colors.white, fontSize: 18)),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}






class _UsernameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.username != current.username,
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Color.fromRGBO(38, 38, 57, .9),
          ),
          child: TextField(
            style: const TextStyle(color: Colors.white),
            key: const Key('loginForm_usernameInput_textField'),
            onChanged: (username) =>
                context.read<LoginBloc>().add(LoginUsernameChanged(username)),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(15.0),
              labelStyle:
                  const TextStyle(color: Color.fromRGBO(119, 126, 145, 1)),
              labelText: 'Teléfono, correo electrónico o usuario',
              errorText: state.username.invalid ? 'invalid username' : null,
            ),
          ),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Color.fromRGBO(38, 38, 57, .9),
          ),
          child: TextField(
            style: const TextStyle(color: Colors.white),
            key: const Key('loginForm_passwordInput_textField'),
            onChanged: (password) =>
                context.read<LoginBloc>().add(LoginPasswordChanged(password)),
            obscureText: true,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(15.0),
              labelStyle:
                  const TextStyle(color: Color.fromRGBO(119, 126, 145, 1)),
              labelText: 'Contraseña',
              errorText: state.password.invalid ? 'invalid password' : null,
            ),
          ),
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () => showBarModalBottomSheet(
                expand: true,
                context: context,
                builder: (context) => ForgotPassword(),
              ),
                      child: Text(
                        "Olvide mi contraseña",
                        style: TextStyle(color: Colors.white),
                      )),
                  Container(
                      width: 130,
                      height: 46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(116, 80, 255, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Center(
                          child: Row(
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Expanded(
                                  child: Row(
                                    children: [
                                      const Text(
                                        'Iniciar sesión',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                ],
              );
      },
    );
  }
}
