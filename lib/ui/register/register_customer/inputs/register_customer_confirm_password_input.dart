import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/customer/register_customer_bloc.dart';
import 'package:inker_studio/domain/cubits/login/hide_password_cubit.dart';
import 'package:inker_studio/utils/forms/custom_input.dart';

class RegisterCustomerConfirmPasswordInput extends StatelessWidget {
  RegisterCustomerConfirmPasswordInput({
    Key? key,
  }) : super(key: key);
  final _texEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _texEditingController.text =
        context.read<RegisterCustomerBloc>().state.form.confirmedPassword.value;
    return BlocProvider(
      create: (context) => HidePasswordCubit(),
      child: BlocBuilder<RegisterCustomerBloc, RegisterCustomerState>(
        buildWhen: (previous, current) =>
            previous.form.password.value != current.form.password.value ||
            previous.form.confirmedPassword.value !=
                current.form.confirmedPassword.value,
        builder: (context, state) {
          return BlocBuilder<HidePasswordCubit, HidePasswordState>(
            builder: (context, cubit) {
              return CustomInput(
                  controller: _texEditingController,
                  obscureText: cubit is HidePasswordVisible ? false : true,
                  onChanged: (value) {
                    context.read<RegisterCustomerBloc>().add(
                          RegisterCustomerConfirmedPasswordChanged(value),
                        );
                  },
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
                  valid: state.form.confirmedPassword.valid ||
                      state.form.confirmedPassword.pure,
                  errorMessage: state.form.confirmedPassword.valid
                      ? null
                      : state.form.confirmedPassword.error?.message,
                  label: 'Confirmar contraseña');
            },
          );
        },
      ),
    );
  }
}
