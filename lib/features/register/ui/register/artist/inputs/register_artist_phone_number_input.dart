import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:inker_studio/features/auth/bloc/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/test_utils/register_keys.dart';
import 'package:inker_studio/utils/forms/clear_input.dart';
import 'package:inker_studio/utils/forms/custom_phone_number_input.dart';

class RegisterArtistPhoneNumberInput extends StatelessWidget {
  RegisterArtistPhoneNumberInput({super.key});
  final _texEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final phoneNumber =
        context.read<RegisterArtistBloc>().state.form.phoneNumber;

    if (phoneNumber.value.phoneNumber.isNotEmpty) {
      String rawPhoneNumber =
          phoneNumber.value.phoneNumber.split(phoneNumber.value.dialCode).last;
      _texEditingController.text = rawPhoneNumber;
    }

    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      buildWhen: (previous, current) =>
          previous.form.phoneNumber.value != current.form.phoneNumber.value,
      builder: (context, state) {
        return CustomPhoneNumberInput(
          key: registerKeys.artistRegistration.phoneNumberInput,
          label: 'Tefélono',
          searchDecoratorLabel: 'Nombre de tu pais',
          onInputChanged: (number) {
            context.read<RegisterArtistBloc>().add(
                  RegisterArtistPhoneNumberChanged(PhoneNumber(
                      dialCode: number.dialCode!,
                      phoneNumber: number.phoneNumber!,
                      isoCode: number.isoCode!)),
                );
          },
          controller: _texEditingController,
          countries: const [
            'CL',
            'AR',
            'US',
            'MX',
            'BR',
            'CO',
            'PE',
            'VE',
            'UY'
          ],
          suffixIcon: state.form.phoneNumber.value.phoneNumber.isNotEmpty
              ? ClearInput(
                  onTap: () {
                    _texEditingController.clear();
                    context.read<RegisterArtistBloc>().add(
                          const RegisterArtistPhoneNumberChanged(PhoneNumber(
                              dialCode: '', phoneNumber: '', isoCode: '')),
                        );
                  },
                )
              : null,
          valid: state.form.phoneNumber.valid || state.form.phoneNumber.pure,
          errorMessage: state.form.phoneNumber.valid
              ? null
              : state.form.phoneNumber.error?.message,
        );
      },
    );
  }
}
