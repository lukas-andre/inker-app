import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/login/login_bloc.dart';
import 'package:inker_studio/ui/login2/form/inputs/custom_input.dart';
import 'package:inker_studio/utils/forms/lower_case_text_formatter.dart';

class IdentifierInput extends StatelessWidget {
  const IdentifierInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return CustomInput(
          key: const Key('loginForm_usernameInput_textField'),
          label: 'Teléfono, correo electrónico o usuario',
          onChanged: (value) {
            context.read<LoginBloc>().add(LoginUsernameChanged(value));
          },
          inputFormatters: [LowerCaseTextFormatter()],
        );
      },
    );
  }
}
