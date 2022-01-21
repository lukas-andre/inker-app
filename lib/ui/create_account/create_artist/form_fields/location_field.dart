import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/creation/artist_creation_bloc.dart';

class LocationField extends StatelessWidget {
  const LocationField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArtistCreationBloc, ArtistCreationState>(
      buildWhen: (previous, current) =>
          previous.formState.location != current.formState.location,
      builder: (context, state) {
        return TextField(
          key: const Key('createArtistForm_locationInput_textField'),
          onChanged: (location) => context
              .read<ArtistCreationBloc>()
              .add(ArtistCreationUsernameChanged(location)),
          decoration: InputDecoration(
            labelText: 'location',
            errorText:
                state.formState.location.invalid ? 'invalid location' : null,
          ),
        );
      },
    );
  }
}
