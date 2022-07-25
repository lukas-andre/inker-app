import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/domain/cubits/login/hide_password_cubit.dart';
import 'package:inker_studio/utils/forms/custom_input.dart';

class RegisterArtistPasswordInput extends StatelessWidget {
  RegisterArtistPasswordInput({
    Key? key,
  }) : super(key: key);
  final _texEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _texEditingController.text =
        context.read<RegisterArtistBloc>().state.form.password.value;
    return BlocProvider(
      create: (context) => HidePasswordCubit(),
      child: BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
        buildWhen: (previous, current) =>
            previous.form.password.value != current.form.password.value,
        builder: (context, state) {
          return BlocBuilder<HidePasswordCubit, HidePasswordState>(
            builder: (context, cubit) {
              return CustomInput(
                  controller: _texEditingController,
                  obscureText: cubit is HidePasswordVisible ? false : true,
                  onChanged: (value) {
                    context.read<RegisterArtistBloc>().add(
                          RegisterArtistPasswordChanged(value),
                        );
                  },
                  suffixIcon: GestureDetector(
                    onTap: (() {
                      context.read<HidePasswordCubit>().toggle();
                    }),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 23),
                      child: Icon(
                        cubit is HidePasswordInitial
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: const Color(0xff777E91),
                      ),
                    ),
                  ),
                  valid: state.form.password.valid || state.form.password.pure,
                  errorMessage: state.form.password.valid
                      ? null
                      : state.form.password.error?.message,
                  label: 'Contraseña');
            },
          );
        },
      ),
    );
  }
}
