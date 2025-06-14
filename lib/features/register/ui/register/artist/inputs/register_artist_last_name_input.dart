import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/features/auth/bloc/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/utils/forms/capitalize_text_formatter.dart';
import 'package:inker_studio/utils/forms/clear_input.dart';
import 'package:inker_studio/utils/forms/custom_input.dart';
import 'package:inker_studio/utils/forms/trim_text_formatter.dart';

class RegisterArtistLastNameInput extends StatelessWidget {
  RegisterArtistLastNameInput({
    super.key,
  });
  final _texEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<RegisterArtistBloc>();
    _texEditingController.text = bloc.state.form.lastName.value;
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      buildWhen: (previous, current) =>
          previous.form.lastName.value != current.form.lastName.value,
      builder: (context, state) {
        return CustomInput(
            inputFormatters: [TrimTextFormatter(), CapitalizeTextFormatter()],
            hint: 'Apellido. ej: Goodman',
            verticalPadding: 0,
            focusNode: bloc.lastNameFocusNode,
            withFlex: false,
            onTap: () {},
            controller: _texEditingController,
            suffixIcon: state.form.lastName.value.isNotEmpty
                ? ClearInput(
                    onTap: () {
                      _texEditingController.clear();
                      context.read<RegisterArtistBloc>().add(
                            const RegisterArtistLastNameChanged(''),
                          );
                    },
                  )
                : null,
            valid: state.form.lastName.valid || state.form.lastName.pure,
            errorMessage: state.form.lastName.valid
                ? null
                : 'Apellido ${state.form.lastName.error?.message}',
            onChanged: (value) {
              context.read<RegisterArtistBloc>().add(
                    RegisterArtistLastNameChanged(value),
                  );
            },
            label: 'Apellido');
      },
    );
  }
}
