import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/customer/creation/customer_creation_bloc.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneNumberTextField extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  PhoneNumberTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerCreationBloc, CustomerCreationState>(
      buildWhen: (previous, current) =>
          previous.phoneNumber != current.phoneNumber,
      builder: (context, state) {
        return InternationalPhoneNumberInput(
          onInputChanged: (PhoneNumber value) {
            dev.log('$value', 'onInputChanged');
            context
                .read<CustomerCreationBloc>()
                .add(CustomerCreationPhoneNumberChanged(value.phoneNumber!));
          },
          onInputValidated: (bool value) {
            dev.log('$value', 'onInputValidated');
          },
          ignoreBlank: true,
          autoValidateMode: AutovalidateMode.disabled,
          initialValue: PhoneNumber(isoCode: 'CL'),
          textFieldController: controller,
          selectorConfig: const SelectorConfig(
            selectorType: PhoneInputSelectorType.DIALOG,
          ),
          countries: const ['CL'],
          inputDecoration: InputDecoration(
              errorText:
                  state.phoneNumber.invalid ? 'invalid phone number' : null),
        );
      },
    );
  }
}
