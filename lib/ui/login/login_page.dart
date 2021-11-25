import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';
import 'package:inker_studio/domain/blocs/login/login_bloc.dart';
import 'package:inker_studio/ui/create_account/create_account.dart';
import 'package:inker_studio/ui/login/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) => LoginBloc(
              authBloc: context.read<AuthBloc>(),
              loginUseCase: context.read(),
              googleSingInUsecase: context.read()),
          child: BlocListener<LoginBloc, LoginState>(
            listener: (context, state) {
              if (state.isNewUser) {
                Navigator.of(context).push<void>(CreateUserByTypePage.route());
              }
            },
            child: const LoginForm(),
          ),
        ),
      ),
    );
  }
}
