import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/login/login_bloc.dart';
import 'package:inker_studio/domain/cubits/login/hide_password_cubit.dart';
import 'package:inker_studio/ui/login2/form/inputs/custom_input.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HidePasswordCubit(),
      child: BlocBuilder<HidePasswordCubit, HidePasswordState>(
        builder: (context, cubit) {
          return BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              return CustomInput(
                key: const Key('loginForm_passwordInput_textField'),
                label: 'Contraseña',
                obscureText: cubit is HidePasswordVisible ? false : true,
                suffixIcon: GestureDetector(
                  onTap: (() {
                    context.read<HidePasswordCubit>().toggle();
                  }),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 23),
                    child: Icon(
                      cubit is HidePasswordInitial
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: const Color(0xff777E91),
                    ),
                  ),
                ),
                onChanged: (value) {
                  context.read<LoginBloc>().add(LoginPasswordChanged(value));
                },
                valid: state.password.valid,
                errorMessage: 'Bad password',
              );
            },
          );
        },
      ),
    );
  }
}
