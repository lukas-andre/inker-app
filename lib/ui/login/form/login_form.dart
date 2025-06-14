import 'package:flutter/material.dart';
import 'package:inker_studio/ui/login/form/actions_buttons.dart';
import 'package:inker_studio/ui/login/form/inputs/identifier_input.dart';
import 'package:inker_studio/ui/login/form/inputs/password_input.dart';
import 'package:inker_studio/utils/layout/row_spacer.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final horizontalMargin = Responsive.value(
      context,
      mobile: 20,
      tablet: 40,
      desktop: 60,
    );
    
    final topMargin = Responsive.value(
      context,
      mobile: 60,
      tablet: 80,
      desktop: 100,
    );
    
    final bottomMargin = Responsive.value(
      context,
      mobile: 120,
      tablet: 150,
      desktop: 180,
    );
    
    return Center(
        child: Container(
      margin: EdgeInsets.fromLTRB(
        horizontalMargin,
        topMargin,
        horizontalMargin,
        bottomMargin,
      ),
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
    final fontSize = Responsive.fontSize(context, 16);
    
    return Expanded(
        child: Text('Descubre todos los beneficios de formar parte de Inker',
            style: TextStyle(
                fontSize: fontSize,
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
    final fontSize = Responsive.fontSize(context, 48);
    
    return Expanded(
      child: Text('Login',
          style: TextStyle(
              fontSize: fontSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              color: Colors.white)),
    );
  }
}
