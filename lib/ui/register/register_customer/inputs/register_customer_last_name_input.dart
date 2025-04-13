import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/customer/register_customer_bloc.dart';
import 'package:inker_studio/utils/forms/capitalize_text_formatter.dart';
import 'package:inker_studio/utils/forms/clear_input.dart';
import 'package:inker_studio/utils/forms/custom_input.dart';
import 'package:inker_studio/utils/forms/trim_text_formatter.dart';

class RegisterCustomerLastNameInput extends StatelessWidget {
  RegisterCustomerLastNameInput({
    super.key,
  });
  final _texEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<RegisterCustomerBloc>();
    _texEditingController.text = bloc.state.form.lastName.value;
    return BlocBuilder<RegisterCustomerBloc, RegisterCustomerState>(
      buildWhen: (previous, current) =>
          previous.form.lastName.value != current.form.lastName.value,
      builder: (context, state) {
        return CustomInput(
            key: key,
            inputFormatters: [TrimTextFormatter(), CapitalizeTextFormatter()],
            hint: 'Apellido. ej: Goodman',
            verticalPadding: 0,
            withFlex: false,
            onTap: () {},
            controller: _texEditingController,
            suffixIcon: state.form.lastName.value.isNotEmpty
                ? ClearInput(
                    onTap: () {
                      _texEditingController.clear();
                      context.read<RegisterCustomerBloc>().add(
                            const RegisterCustomerLastNameChanged(''),
                          );
                    },
                  )
                : null,
            valid: state.form.lastName.valid || state.form.lastName.pure,
            errorMessage: state.form.lastName.valid
                ? null
                : 'Apellido ${state.form.lastName.error?.message}',
            onChanged: (value) {
              context.read<RegisterCustomerBloc>().add(
                    RegisterCustomerLastNameChanged(value.trim()),
                  );
            },
            label: 'Apellido');
      },
    );
  }
}
