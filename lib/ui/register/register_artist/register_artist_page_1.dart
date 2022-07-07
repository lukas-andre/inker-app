import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/ui/login2/widgets/login_background.dart';
import 'package:inker_studio/ui/register/register_artist/form/register_artist_last_name_input.dart';
import 'package:inker_studio/ui/register/register_artist/form/register_artist_name_input.dart';
import 'package:inker_studio/ui/register/register_artist/form/register_artist_username_input.dart';
import 'package:inker_studio/ui/register/register_artist/register_artist_page_2.dart';
import 'package:inker_studio/ui/register/widgets/close_register_button.dart';
import 'package:inker_studio/ui/register/widgets/register_action_button.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_subtitle.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_title.dart';
import 'package:inker_studio/ui/register/widgets/register_progress_indicator.dart';
import 'package:inker_studio/utils/snackbar/invalid_form_snackbar.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class RegisterArtistPage1 extends StatelessWidget {
  const RegisterArtistPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          final currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Stack(
          children: const [
            LoginBackground(),
            RegisterArtistLayout(),
            RegisterArtistPage1NextButton(),
          ],
        ),
      ),
    );
  }
}

class RegisterArtistPage1NextButton extends StatelessWidget {
  const RegisterArtistPage1NextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      buildWhen: (previous, current) =>
          previous.form.firstName != current.form.firstName ||
          previous.form.lastName != current.form.lastName ||
          previous.form.username != current.form.username,
      builder: (context, state) {
        return RegisterActionButton(
            text: 'Siguiente',
            onPressed: () {
              showCupertinoModalBottomSheet(
                  context: context,
                  builder: (context) => const RegisterArtistPage2());
              if (state.form.firstName.valid &&
                  state.form.lastName.valid &&
                  state.form.username.valid) {
                if (Platform.isIOS) {
                  showCupertinoModalBottomSheet(
                      context: context,
                      builder: (context) => const RegisterArtistPage2());
                } else {
                  showMaterialModalBottomSheet(
                      context: context,
                      builder: (context) => const RegisterArtistPage2());
                }
                context.read<RegisterArtistBloc>().add(
                      const RegisterArtistNextPagePressed(1),
                    );
              } else {
                final snackBar = getInvalidFormSnackBar(context);
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            });
      },
    );
  }
}

class RegisterArtistLayout extends StatelessWidget {
  const RegisterArtistLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [CloseRegisterButton()],
        ),
        BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
          builder: (context, state) {
            return Row(
              children: [
                RegisterProgressIndicator(
                  progress: state.initialProgress,
                )
              ],
            );
          },
        ),
        Row(
          children: const [
            RegisterCustomTitle(
              text: 'Requerimos tus datos para registrarte como artista',
            )
          ],
        ),
        Row(
          children: const [
            RegisterCustomSubTitle(
                text:
                    'Introduce tus datos personales para poder continuar tu registro.')
          ],
        ),
        Row(
          children: const [RegisterArtistNameInput()],
        ),
        Row(
          children: const [RegisterArtistLastNameInput()],
        ),
        Row(
          children: const [RegisterArtistUsernameInput()],
        ),
      ],
    );
  }
}
