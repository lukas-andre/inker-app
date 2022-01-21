import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/creation/artist_creation_bloc.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArtistCreationBloc, ArtistCreationState>(
      buildWhen: (previous, current) =>
          previous.formState.email != current.formState.email,
      builder: (context, state) {
        return TextField(
          key: const Key('createArtistForm_emailInput_textField'),
          onChanged: (email) => context
              .read<ArtistCreationBloc>()
              .add(ArtistCreationEmailChanged(email)),
          decoration: InputDecoration(
            labelText: 'email',
            errorText: state.formState.email.invalid ? 'invalid email' : null,
          ),
        );
      },
    );
  }
}
