import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/customer/register_customer_bloc.dart';
import 'package:inker_studio/utils/forms/clear_input.dart';
import 'package:inker_studio/utils/forms/custom_input.dart';
import 'package:inker_studio/utils/forms/trim_text_formatter.dart';

class RegisterCustomerEmailInput extends StatelessWidget {
  RegisterCustomerEmailInput({
    super.key,
  });
  final _texEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _texEditingController.text =
        context.read<RegisterCustomerBloc>().state.form.email.value;
    return BlocBuilder<RegisterCustomerBloc, RegisterCustomerState>(
      buildWhen: (previous, current) =>
          previous.form.email.value != current.form.email.value,
      builder: (context, state) {
        return CustomInput(
            key: key,
            inputFormatters: [TrimTextFormatter()],
            keyboardType: TextInputType.emailAddress,
            controller: _texEditingController,
            suffixIcon: state.form.email.value.isNotEmpty
                ? ClearInput(
                    onTap: () {
                      _texEditingController.clear();
                      context.read<RegisterCustomerBloc>().add(
                            const RegisterCustomerEmailChanged(''),
                          );
                    },
                  )
                : null,
            valid: state.form.email.valid || state.form.email.pure,
            errorMessage:
                state.form.email.valid ? null : state.form.email.error?.message,
            onChanged: (value) {
              context.read<RegisterCustomerBloc>().add(
                    RegisterCustomerEmailChanged(value.trim()),
                  );
            },
            label: 'Email');
      },
    );
  }
}
