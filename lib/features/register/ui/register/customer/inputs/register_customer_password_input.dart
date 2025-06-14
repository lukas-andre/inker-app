import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/features/auth/bloc/register/customer/register_customer_bloc.dart';
import 'package:inker_studio/test_utils/register_keys.dart';
import 'package:inker_studio/utils/forms/clear_input.dart';
import 'package:inker_studio/utils/forms/custom_input.dart';
import 'package:inker_studio/utils/forms/trim_text_formatter.dart';

class RegisterCustomerPasswordInput extends StatefulWidget {
  const RegisterCustomerPasswordInput({super.key});

  @override
  State<RegisterCustomerPasswordInput> createState() => _RegisterCustomerPasswordInputState();
}

class _RegisterCustomerPasswordInputState extends State<RegisterCustomerPasswordInput> {
  final _texEditingController = TextEditingController();
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    _texEditingController.text = context.read<RegisterCustomerBloc>().state.form.password.value;
    return BlocBuilder<RegisterCustomerBloc, RegisterCustomerState>(
      buildWhen: (previous, current) =>
          previous.form.password.value != current.form.password.value,
      builder: (context, state) {
        return CustomInput(
            key: registerKeys.customerRegistration.passwordField,
            inputFormatters: [TrimTextFormatter()],
            hint: '**********',
            obscureText: obscureText,
            controller: _texEditingController,
            suffixIcon: state.form.password.value.isNotEmpty
                ? _getRowIconSuffixPassword(_texEditingController, context, obscureText)
                : _getSingleIconSuffixPassword(obscureText),
            valid: state.form.password.valid || state.form.password.pure,
            errorMessage: state.form.password.valid
                ? null
                : state.form.password.error?.message,
            onChanged: (value) {
              context.read<RegisterCustomerBloc>().add(
                    RegisterCustomerPasswordChanged(value.trim()),
                  );
            },
            label: 'Contraseña');
      },
    );
  }

  Widget _getSingleIconSuffixPassword(bool obscureText) {
    return IconButton(
      onPressed: () {
        setState(() {
          this.obscureText = !this.obscureText;
        });
      },
      icon: Icon(
        obscureText
            ? Icons.visibility_off_outlined
            : Icons.visibility_outlined,
        color: const Color(0xff777E91),
      ),
    );
  }

  Widget _getRowIconSuffixPassword(TextEditingController controller,
      BuildContext context, bool obscureText) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ClearInput(onTap: () {
          controller.clear();
          context.read<RegisterCustomerBloc>().add(
                const RegisterCustomerPasswordChanged(''),
              );
        }),
        const SizedBox(
          width: 10,
        ),
        IconButton(
          onPressed: () {
            setState(() {
              this.obscureText = !this.obscureText;
            });
          },
          icon: Icon(
            obscureText
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
            color: const Color(0xff777E91),
          ),
        ),
      ],
    );
  }
}
