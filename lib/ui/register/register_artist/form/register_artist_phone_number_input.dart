import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/utils/forms/clear_input.dart';
import 'package:inker_studio/utils/forms/custom_phone_number_input.dart';

class RegisterArtistPhoneNumberInput extends StatelessWidget {
  RegisterArtistPhoneNumberInput({Key? key}) : super(key: key);

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      buildWhen: (previous, current) =>
          previous.form.phoneNumber.value != current.form.phoneNumber.value,
      builder: (context, state) {
        return CustomPhoneNumberInput(
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
          controller: controller,
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
          suffixIcon: state.form.email.value.isNotEmpty
              ? ClearInput(
                  onTap: () {
                    controller.clear();
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
