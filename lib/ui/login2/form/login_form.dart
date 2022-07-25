import 'package:flutter/material.dart';
import 'package:inker_studio/ui/login2/form/actions_buttons.dart';
import 'package:inker_studio/ui/login2/form/inputs/identifier_input.dart';
import 'package:inker_studio/ui/login2/form/inputs/password_input.dart';
import 'package:inker_studio/utils/layout/row_spacer.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      margin: const EdgeInsets.fromLTRB(19, 120, 19, 150),
      child: Column(
        children: [
          Row(
            children: const [
              LoginFormHeader(),
            ],
          ),
          const RowSpacer(space: 20),
          Row(
            children: const [LoginDescription()],
          ),
          const RowSpacer(space: 20),
          Row(
            children: const [
              IdentifierInput(),
            ],
          ),
          Row(
            children: const [
              PasswordInput(),
            ],
          ),
          const RowSpacer(space: 20),
          const ActionsButtons()
        ],
      ),
    ));
  }
}

class LoginDescription extends StatelessWidget {
  const LoginDescription({Key? key}) : super(key: key);

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
  const LoginFormHeader({Key? key}) : super(key: key);

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
