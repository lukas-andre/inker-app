import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/creation/artist_creation_bloc.dart';
import 'package:inker_studio/utils/dev.dart';

class FirstNameTextField extends StatelessWidget {
  const FirstNameTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArtistCreationBloc, ArtistCreationState>(
      buildWhen: (previous, current) =>
          previous.formState.firstName != current.formState.firstName,
      builder: (context, state) {
        return TextField(
          key: const Key('createArtistForm_firstNameInput_textField'),
          onChanged: (firstName) {
            context
                .read<ArtistCreationBloc>()
                .add(ArtistCreationFirstNameChanged(firstName));
            dev.log(firstName, 'FirtNameInput');
          },
          decoration: InputDecoration(
            labelText: 'first name',
            errorText:
                state.formState.firstName.invalid ? 'invalid first name' : null,
          ),
        );
      },
    );
  }
}
