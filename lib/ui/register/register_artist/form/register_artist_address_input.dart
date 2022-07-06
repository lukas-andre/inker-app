import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/utils/forms/custom_input.dart';

class RegisterArtistAddressInput extends StatelessWidget {
  const RegisterArtistAddressInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      buildWhen: (previous, current) =>
          previous.form.location.value != current.form.confirmedPassword.value,
      builder: (context, state) {
        return CustomInput(
            onChanged: (value) {
              context.read<RegisterArtistBloc>().add(
                    RegisterArtistLocationChanged(value),
                  );
            },
            valid: state.form.location.valid || state.form.location.pure,
            errorMessage: state.form.location.valid
                ? null
                : state.form.location.error?.name,
            label: 'Ingresa tu dirección');
      },
    );
  }
}
