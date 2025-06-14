import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/features/register/bloc/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/utils/forms/clear_input.dart';
import 'package:inker_studio/utils/forms/custom_input.dart';
import 'package:inker_studio/utils/forms/trim_text_formatter.dart';

class RegisterArtistUsernameInput extends StatelessWidget {
  RegisterArtistUsernameInput({
    super.key,
  });
  final _texEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<RegisterArtistBloc>();
    _texEditingController.text = bloc.state.form.username.value;
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      buildWhen: (previous, current) =>
          previous.form.username.value != current.form.username.value,
      builder: (context, state) {
        var label = 'Nombre artístico';
        return CustomInput(
            inputFormatters: [TrimTextFormatter()],
            hint: '$label. ej: Juanart',
            verticalPadding: 0,
            focusNode: bloc.usernameFocusNode,
            withFlex: false,
            controller: _texEditingController,
            valid: state.form.username.valid || state.form.username.pure,
            errorMessage: state.form.username.valid
                ? null
                : state.form.username.error?.message,
            suffixIcon: state.form.username.value.isNotEmpty
                ? ClearInput(
                    onTap: () {
                      _texEditingController.clear();
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
            label: label);
      },
    );
  }
}
