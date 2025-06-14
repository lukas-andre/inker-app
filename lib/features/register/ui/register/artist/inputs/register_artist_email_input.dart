import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/features/auth/bloc/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/test_utils/register_keys.dart';
import 'package:inker_studio/utils/forms/clear_input.dart';
import 'package:inker_studio/utils/forms/custom_input.dart';
import 'package:inker_studio/utils/forms/trim_text_formatter.dart';

class RegisterArtistEmailInput extends StatelessWidget {
  RegisterArtistEmailInput({
    super.key,
  });
  final _texEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _texEditingController.text =
        context.read<RegisterArtistBloc>().state.form.email.value;
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      buildWhen: (previous, current) =>
          previous.form.email.value != current.form.email.value,
      builder: (context, state) {
        return CustomInput(
            key: registerKeys.artistRegistration.emailInput,
            inputFormatters: [TrimTextFormatter()],
            keyboardType: TextInputType.emailAddress,
            controller: _texEditingController,
            suffixIcon: state.form.email.value.isNotEmpty
                ? ClearInput(
                    onTap: () {
                      _texEditingController.clear();
                      context.read<RegisterArtistBloc>().add(
                            const RegisterArtistEmailChanged(''),
                          );
                    },
                  )
                : null,
            valid: state.form.email.valid || state.form.email.pure,
            errorMessage:
                state.form.email.valid ? null : state.form.email.error?.message,
            onChanged: (value) {
              context.read<RegisterArtistBloc>().add(
                    RegisterArtistEmailChanged(value),
                  );
            },
            label: 'Email');
      },
    );
  }
}
