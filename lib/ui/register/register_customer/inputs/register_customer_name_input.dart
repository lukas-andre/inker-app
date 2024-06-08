import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/customer/register_customer_bloc.dart';
import 'package:inker_studio/utils/forms/capitalize_text_formatter.dart';
import 'package:inker_studio/utils/forms/clear_input.dart';
import 'package:inker_studio/utils/forms/custom_input.dart';
import 'package:inker_studio/utils/forms/trim_text_formatter.dart';

class RegisterCustomerNameInput extends StatelessWidget {
  RegisterCustomerNameInput({
    super.key,
  });
  final _texEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<RegisterCustomerBloc>();
    _texEditingController.text = bloc.state.form.firstName.value;
    return BlocBuilder<RegisterCustomerBloc, RegisterCustomerState>(
      buildWhen: (previous, current) =>
          previous.form.firstName.value != current.form.firstName.value,
      builder: (context, state) {
        return CustomInput(
            hint: 'Nombre. ej: Juano',
            inputFormatters: [TrimTextFormatter(), CapitalizeTextFormatter()],
            verticalPadding: 0,
            withFlex: false,
            controller: _texEditingController,
            suffixIcon: state.form.firstName.value.isNotEmpty
                ? ClearInput(
                    onTap: () {
                      _texEditingController.clear();
                      context.read<RegisterCustomerBloc>().add(
                            const RegisterCustomerNameChanged(''),
                          );
                    },
                  )
                : null,
            valid: state.form.firstName.valid || state.form.firstName.pure,
            errorMessage: state.form.firstName.valid
                ? null
                : 'Nombre ${state.form.firstName.error?.message}',
            onChanged: (value) {
              context.read<RegisterCustomerBloc>().add(
                    RegisterCustomerNameChanged(value.trim()),
                  );
            },
            label: 'Nombre');
      },
    );
  }
}
