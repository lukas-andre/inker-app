import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/utils/forms/clear_input.dart';
import 'package:inker_studio/utils/forms/custom_input.dart';

class RegisterArtistUsernameInput extends StatelessWidget {
  const RegisterArtistUsernameInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      buildWhen: (previous, current) =>
          previous.form.username.value != current.form.username.value,
      builder: (context, state) {
        return CustomInput(
            controller: controller,
            valid: state.form.username.valid || state.form.username.pure,
            errorMessage: state.form.username.valid
                ? null
                : state.form.username.error?.message,
            suffixIcon: state.form.username.value.isNotEmpty
                ? ClearInput(
                    onTap: () {
                      controller.clear();
                      context.read<RegisterArtistBloc>().add(
                            const RegisterArtistUsernameChanged(''),
                          );
                    },
                  )
                : const Tooltip(
                    message: 'Este sera el nombre que se verá en tu perfil',
                    child: Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(Icons.info_rounded, color: Colors.grey),
                    ),
                  ),
            onChanged: (value) {
              context.read<RegisterArtistBloc>().add(
                    RegisterArtistUsernameChanged(value),
                  );
            },
            label: 'Nombre artístico');
      },
    );
  }
}
