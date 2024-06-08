import 'package:flutter/material.dart';
import 'package:inker_studio/ui/login/form/actions_buttons.dart';
import 'package:inker_studio/ui/login/form/inputs/identifier_input.dart';
import 'package:inker_studio/ui/login/form/inputs/password_input.dart';
import 'package:inker_studio/utils/layout/row_spacer.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      margin: const EdgeInsets.fromLTRB(19, 85, 19, 150),
      child: const Column(
        children: [
          Row(
            children: [
              LoginFormHeader(),
            ],
          ),
          RowSpacer(space: 20),
          Row(
            children: [LoginDescription()],
          ),
          RowSpacer(space: 20),
          Row(
            children: [
              IdentifierInput(),
            ],
          ),
          Row(
            children: [
              PasswordInput(),
            ],
          ),
          RowSpacer(space: 20),
          ActionsButtons()
        ],
      ),
    ));
  }
}

class LoginDescription extends StatelessWidget {
  const LoginDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
        child: Text('Descubre todos los beneficios de formar parte de Inker',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Poppins',
                height: 1.2,
                fontWeight: FontWeight.w400,
                color: Colors.white)));
  }
}

class LoginFormHeader extends StatelessWidget {
  const LoginFormHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Text('Login',
          style: TextStyle(
              fontSize: 59,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              color: Colors.white)),
    );
  }
}
