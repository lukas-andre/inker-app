import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/login/login_bloc.dart';

import 'create_customer/create_customer_page.dart';

class CreateUserByTypePage extends StatelessWidget {
  const CreateUserByTypePage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(
        builder: (_) => const CreateUserByTypePage());
  }
  // TODO: HACER QUE ESCUCHE A LOGIN BLOC Y VER SI VIENE DE UN SOCIAL MEDIA O FLUJO DE LOGIN LOCAL,
  // TODO: SI VIENE DE UN SOCIAL MEDIA, DEBE GATILLAR EL EVENTO DE CREAR USUARIO DE ACUERDO AL TIPO
  // TODO: SI VIENE DE UN EMAIL, DEBE GATILLAR EL EVENTO DE CREAR USUARIO CON EL FLUJO DE LOGIN LOCAL

  @override
  Widget build(BuildContext context) {
    var butttonStyle = TextButton.styleFrom(
        primary: Colors.blue,
        onSurface: Colors.red,
        elevation: 0.1,
        backgroundColor: Colors.white60,
        minimumSize: const Size(300.0, 150.0));
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: const Text('Create User By Type')),
          body: Align(
            alignment: const Alignment(0, -1 / 3),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  style: butttonStyle,
                  onPressed: () {},
                  child: const Text('Artist'),
                ),
                TextButton(
                  style: butttonStyle,
                  onPressed: () {
                    if (!state.isNewUser &&
                        state.newUserType == NewUserType.unknown) {
                      Navigator.of(context)
                          .push<void>(CreateCustomerPage.route());
                    }

                    if (state.isNewUser &&
                        state.newUserType == NewUserType.google) {
                      BlocProvider.of<LoginBloc>(context).add(
                        const CraeteCustomerUserPressedInGoogleSinginFlow(),
                      );
                    }
                  },
                  child: const Text('Customer'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
