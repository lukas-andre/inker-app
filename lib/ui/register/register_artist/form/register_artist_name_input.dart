import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/utils/forms/clear_input.dart';
import 'package:inker_studio/utils/forms/custom_input.dart';

class RegisterArtistNameInput extends StatelessWidget {
  const RegisterArtistNameInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      buildWhen: (previous, current) =>
          previous.form.firstName.value != current.form.firstName.value,
      builder: (context, state) {
        return CustomInput(
            controller: controller,
            suffixIcon: state.form.firstName.value.isNotEmpty
                ? ClearInput(
                    onTap: () {
                      controller.clear();
                      context.read<RegisterArtistBloc>().add(
                            const RegisterArtistNameChanged(''),
                          );
                    },
                  )
                : null,
            valid: state.form.firstName.valid || state.form.firstName.pure,
            errorMessage: state.form.firstName.valid
                ? null
                : 'Nombre ${state.form.firstName.error?.displayName}',
            onChanged: (value) {
              context.read<RegisterArtistBloc>().add(
                    RegisterArtistNameChanged(value),
                  );
            },
            label: 'Nombre');
      },
    );
  }
}
