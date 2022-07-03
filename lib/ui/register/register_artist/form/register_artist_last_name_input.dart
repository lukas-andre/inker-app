import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/utils/forms/clear_input.dart';
import 'package:inker_studio/utils/forms/custom_input.dart';

class RegisterArtistLastNameInput extends StatelessWidget {
  const RegisterArtistLastNameInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      buildWhen: (previous, current) =>
          previous.form.lastName.value != current.form.lastName.value,
      builder: (context, state) {
        return CustomInput(
            controller: controller,
            suffixIcon: state.form.lastName.value.isNotEmpty
                ? ClearInput(
                    onTap: () {
                      controller.clear();
                      context.read<RegisterArtistBloc>().add(
                            const RegisterArtistLastNameChanged(''),
                          );
                    },
                  )
                : null,
            valid: state.form.lastName.valid || state.form.lastName.pure,
            errorMessage: state.form.username.valid
                ? null
                : 'Apellido ${state.form.lastName.error?.displayName}',
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
