import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/customer/register_customer_bloc.dart';
import 'package:inker_studio/utils/forms/clear_input.dart';
import 'package:inker_studio/utils/forms/custom_input.dart';
import 'package:inker_studio/utils/forms/trim_text_formatter.dart';

class RegisterCustomerConfirmPasswordInput extends StatefulWidget {
  const RegisterCustomerConfirmPasswordInput({super.key});

  @override
  State<RegisterCustomerConfirmPasswordInput> createState() => _RegisterCustomerConfirmPasswordInputState();
}

class _RegisterCustomerConfirmPasswordInputState extends State<RegisterCustomerConfirmPasswordInput> {
  final _texEditingController = TextEditingController();
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    _texEditingController.text = context.read<RegisterCustomerBloc>().state.form.confirmedPassword.value;
    return BlocBuilder<RegisterCustomerBloc, RegisterCustomerState>(
      buildWhen: (previous, current) =>
          previous.form.confirmedPassword.value != current.form.confirmedPassword.value,
      builder: (context, state) {
        return CustomInput(
            key: widget.key,
            inputFormatters: [TrimTextFormatter()],
            hint: '**********',
            obscureText: obscureText,
            controller: _texEditingController,
            suffixIcon: state.form.confirmedPassword.value.isNotEmpty
                ? _getRowIconSuffixPassword(_texEditingController, context, obscureText)
                : _getSingleIconSuffixPassword(obscureText),
            valid: state.form.confirmedPassword.valid || state.form.confirmedPassword.pure,
            errorMessage: state.form.confirmedPassword.valid
                ? null
                : state.form.confirmedPassword.error?.message,
            onChanged: (value) {
              context.read<RegisterCustomerBloc>().add(
                    RegisterCustomerConfirmedPasswordChanged(value.trim()),
                  );
            },
            label: 'Confirmar contraseña');
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
                const RegisterCustomerConfirmedPasswordChanged(''),
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
