import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/test_utils/register_keys.dart';
import 'package:inker_studio/utils/forms/clear_input.dart';
import 'package:inker_studio/utils/forms/custom_input.dart';
import 'package:inker_studio/utils/forms/trim_text_formatter.dart';

class RegisterArtistAddressExtraInput extends StatelessWidget {
  RegisterArtistAddressExtraInput({
    super.key,
  });
  final _texEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _texEditingController.text =
        context.read<RegisterArtistBloc>().state.form.addressExtra.value;
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      buildWhen: (previous, current) =>
          previous.form.addressExtra.value != current.form.addressExtra.value,
      builder: (context, state) {
        return CustomInput(
            key: registerKeys.artistRegistration.addressExtraInput,
            inputFormatters: [TrimTextFormatter()],
            controller: _texEditingController,
            suffixIcon: state.form.email.value.isNotEmpty
                ? ClearInput(
                    onTap: () {
                      _texEditingController.clear();
                      context.read<RegisterArtistBloc>().add(
                            RegisterArtistAddressExtraChanged(
                                '', state.addressType),
                          );
                    },
                  )
                : null,
            valid:
                state.form.addressExtra.valid || state.form.addressExtra.pure,
            errorMessage: state.form.addressExtra.valid
                ? null
                : state.form.addressExtra.error?.message,
            onChanged: (value) {
              context.read<RegisterArtistBloc>().add(
                    RegisterArtistAddressExtraChanged(
                        value, AddressType.apartment),
                  );
            },
            label: 'Ej: Depto 101, Torre B');
      },
    );
  }
}
