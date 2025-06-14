import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/features/auth/bloc/login/login_bloc.dart';
import 'package:inker_studio/utils/forms/custom_input.dart';
import 'package:inker_studio/utils/forms/lower_case_text_formatter.dart';

class IdentifierInput extends StatelessWidget {
  const IdentifierInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return CustomInput(
          keyboardType: TextInputType.emailAddress,
          horizontalPadding: 5,
          verticalPadding: 16,
          key: const Key('loginForm_usernameInput_textField'),
          label: 'Teléfono, correo electrónico o usuario',
          onChanged: (value) {
            context.read<LoginBloc>().add(LoginIdentifierChanged(value));
          },
          inputFormatters: [LowerCaseTextFormatter()],
        );
      },
    );
  }
}
