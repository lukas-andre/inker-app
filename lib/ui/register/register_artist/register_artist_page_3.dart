import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/ui/login2/widgets/login_background.dart';
import 'package:inker_studio/ui/register/register_artist/form/register_artist_confirm_password_input.dart';
import 'package:inker_studio/ui/register/register_artist/form/register_artist_password_input.dart';
import 'package:inker_studio/ui/register/register_artist/register_artist_page_4.dart';
import 'package:inker_studio/ui/register/widgets/close_register_button.dart';
import 'package:inker_studio/ui/register/widgets/register_action_button.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_subtitle.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_title.dart';
import 'package:inker_studio/ui/register/widgets/register_progress_indicator.dart';
import 'package:inker_studio/utils/snackbar/invalid_form_snackbar.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class RegisterArtistPage3 extends StatelessWidget {
  const RegisterArtistPage3({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const RegisterArtistPage3());
  }

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
            RegisterArtistPage3Layout(),
            RegisterArtistPage3NextButton(),
          ],
        ),
      ),
    );
  }
}

class RegisterArtistPage3NextButton extends StatelessWidget {
  const RegisterArtistPage3NextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      buildWhen: (previous, current) =>
          previous.form.password != current.form.password ||
          previous.form.confirmedPassword != current.form.confirmedPassword,
      builder: (context, state) {
        return RegisterActionButton(
            text: 'Siguiente',
            onPressed: () {
              showCupertinoModalBottomSheet(
                  context: context,
                  builder: (context) => const RegisterArtistPage4());
              if (state.form.password.valid &&
                  state.form.confirmedPassword.valid) {
                if (Platform.isIOS) {
                  showCupertinoModalBottomSheet(
                      context: context,
                      builder: (context) => const RegisterArtistPage4());
                } else {
                  showMaterialModalBottomSheet(
                      context: context,
                      builder: (context) => const RegisterArtistPage4());
                }
                context.read<RegisterArtistBloc>().add(
                      const RegisterArtistNextPagePressed(3),
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

class RegisterArtistPage3Layout extends StatelessWidget {
  const RegisterArtistPage3Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ScrollPhysics(parent: PageScrollPhysics()),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [CloseRegisterButton()],
        ),
        BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
          builder: (context, state) {
            return Row(
              children: const [
                RegisterProgressIndicator(
                  progress: 3 / 5,
                )
              ],
            );
          },
        ),
        Row(
          children: const [
            RegisterCustomTitle(
              text: 'Crea tu contraseña para poder acceder a Inker 🔐 ',
            )
          ],
        ),
        Row(
          children: const [
            RegisterCustomSubTitle(
                text:
                    'Estas a unos pasos de formar parte de esta gran comunidad.')
          ],
        ),
        Row(
          children: const [RegisterArtistPasswordInput()],
        ),
        Row(
          children: const [RegisterArtistConfirmPasswordInput()],
        ),
      ],
    );
  }
}
