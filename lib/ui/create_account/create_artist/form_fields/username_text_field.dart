import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/creation/artist_creation_bloc.dart';

class UsernameTextField extends StatelessWidget {
  const UsernameTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArtistCreationBloc, ArtistCreationState>(
      buildWhen: (previous, current) =>
          previous.formState.username != current.formState.username,
      builder: (context, state) {
        return TextField(
          key: const Key('createArtistForm_usernameInput_textField'),
          onChanged: (username) => context
              .read<ArtistCreationBloc>()
              .add(ArtistCreationUsernameChanged(username)),
          decoration: InputDecoration(
            labelText: 'username',
            errorText:
                state.formState.username.invalid ? 'invalid username' : null,
          ),
        );
      },
    );
  }
}
