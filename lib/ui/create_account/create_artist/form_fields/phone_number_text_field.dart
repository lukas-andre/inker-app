import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/creation/artist_creation_bloc.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneNumberTextField extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  PhoneNumberTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArtistCreationBloc, ArtistCreationState>(
      buildWhen: (previous, current) =>
          previous.formState.phoneNumber != current.formState.phoneNumber,
      builder: (context, state) {
        return InternationalPhoneNumberInput(
          onInputChanged: (PhoneNumber value) {
            dev.log('$value', 'onInputChanged');
            context
                .read<ArtistCreationBloc>()
                .add(ArtistCreationPhoneNumberChanged(value.phoneNumber!));
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
              errorText: state.formState.phoneNumber.invalid
                  ? 'invalid phone number'
                  : null),
        );
      },
    );
  }
}
