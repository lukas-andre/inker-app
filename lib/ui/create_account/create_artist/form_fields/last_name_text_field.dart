import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/creation/artist_creation_bloc.dart';

class LastNameTextField extends StatelessWidget {
  const LastNameTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArtistCreationBloc, ArtistCreationState>(
      buildWhen: (previous, current) =>
          previous.formState.lastName != current.formState.lastName,
      builder: (context, state) {
        return TextField(
          key: const Key('createArtistForm_lastNameInput_textField'),
          onChanged: (lastName) => context
              .read<ArtistCreationBloc>()
              .add(ArtistCreationLastNameChanged(lastName)),
          decoration: InputDecoration(
            labelText: 'last name',
            errorText:
                state.formState.lastName.invalid ? 'invalid last name' : null,
          ),
        );
      },
    );
  }
}
