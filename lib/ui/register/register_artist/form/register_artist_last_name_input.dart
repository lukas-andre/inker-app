import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/utils/forms/clear_input.dart';
import 'package:inker_studio/utils/forms/custom_input.dart';

class RegisterArtistLastNameInput extends StatelessWidget {
  RegisterArtistLastNameInput({
    Key? key,
  }) : super(key: key);
  final _texEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _texEditingController.text =
        context.read<RegisterArtistBloc>().state.form.lastName.value;
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      buildWhen: (previous, current) =>
          previous.form.lastName.value != current.form.lastName.value,
      builder: (context, state) {
        return CustomInput(
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
            errorMessage: state.form.username.valid
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
