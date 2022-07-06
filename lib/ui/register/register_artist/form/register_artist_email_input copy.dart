import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/utils/forms/clear_input.dart';
import 'package:inker_studio/utils/forms/custom_input.dart';

class RegisterArtistEmailInput extends StatelessWidget {
  RegisterArtistEmailInput({
    Key? key,
  }) : super(key: key);
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      buildWhen: (previous, current) =>
          previous.form.email.value != current.form.email.value,
      builder: (context, state) {
        return CustomInput(
            controller: controller,
            suffixIcon: state.form.email.value.isNotEmpty
                ? ClearInput(
                    onTap: () {
                      controller.clear();
                      context.read<RegisterArtistBloc>().add(
                            const RegisterArtistEmailChanged(''),
                          );
                    },
                  )
                : null,
            valid: state.form.email.valid || state.form.email.pure,
            errorMessage:
                state.form.email.valid ? null : state.form.email.error?.message,
            onChanged: (value) {
              context.read<RegisterArtistBloc>().add(
                    RegisterArtistEmailChanged(value),
                  );
            },
            label: 'Email');
      },
    );
  }
}
