import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/login/login_bloc.dart';

class LoginPage2 extends StatelessWidget {
  const LoginPage2({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const LoginPage2());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => LoginBloc(
            authBloc: context.read(),
            loginUseCase: context.read(),
            googleSingInUsecase: context.read(),
            createCustomerUseCase: context.read()),
        child: Stack(
          children: const [
            LoginBackgraound(),
            LoginLayout(),
          ],
        ),
      ),
    );
  }
}

class LoginLayout extends StatelessWidget {
  const LoginLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              children: [
                const Expanded(
                    child: Text(
                  'Back',
                  style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),
                )),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.only(right: 27),
                  // margin: const EdgeInsets.only(left: 100),
                  child: const Text(
                    'Registrarme',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500),
                  ),
                )),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class LoginBackgraound extends StatelessWidget {
  const LoginBackgraound({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
          color: const Color(0xff141D3C),
        ))
      ],
    );
  }
}
