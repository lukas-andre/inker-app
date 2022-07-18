import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:inker_studio/utils/forms/clear_input.dart';
import 'package:inker_studio/utils/forms/custom_input.dart';

class RegisterArtistNameInput extends StatelessWidget {
  RegisterArtistNameInput({
    Key? key,
  }) : super(key: key);
  final _texEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<RegisterArtistBloc>();
    _texEditingController.text = bloc.state.form.firstName.value;
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      buildWhen: (previous, current) =>
          previous.form.firstName.value != current.form.firstName.value,
      builder: (context, state) {
        return CustomInput(
            verticalPadding: 0,
            withFlex: false,
            focusNode: bloc.nameFocusNode,
            onTap: () {
              dev.log('onTap', 'RegisterArtistNameInput');
              // context.read<RegisterArtistBloc>().scrollController.animateTo(
              //     MediaQuery.of(context).size.width,
              //     duration: const Duration(milliseconds: 300),
              //     curve: Curves.easeIn);
            },
            controller: _texEditingController,
            suffixIcon: state.form.firstName.value.isNotEmpty
                ? ClearInput(
                    onTap: () {
                      _texEditingController.clear();
                      context.read<RegisterArtistBloc>().add(
                            const RegisterArtistNameChanged(''),
                          );
                    },
                  )
                : null,
            valid: state.form.firstName.valid || state.form.firstName.pure,
            errorMessage: state.form.firstName.valid
                ? null
                : 'Nombre ${state.form.firstName.error?.message}',
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
