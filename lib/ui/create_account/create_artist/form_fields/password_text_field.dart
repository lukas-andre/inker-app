import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/creation/artist_creation_bloc.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArtistCreationBloc, ArtistCreationState>(
      buildWhen: (previous, current) =>
          previous.formState.password != current.formState.password,
      builder: (context, state) {
        return TextField(
          key: const Key('createArtistForm_passwordInput_textField'),
          onChanged: (password) => context
              .read<ArtistCreationBloc>()
              .add(ArtistCreationPasswordChanged(password)),
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'password',
            errorText:
                state.formState.password.invalid ? 'invalid password' : null,
          ),
        );
      },
    );
  }
}
