import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/ui/login2/widgets/login_background.dart';
import 'package:inker_studio/ui/register/register_artist/form/register_artist_confirm_password_input.dart';
import 'package:inker_studio/ui/register/register_artist/form/register_artist_password_input.dart';
import 'package:inker_studio/ui/register/widgets/close_register_button.dart';
import 'package:inker_studio/ui/register/widgets/register_action_button.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_subtitle.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_title.dart';
import 'package:inker_studio/ui/register/widgets/register_progress_indicator.dart';
import 'package:inker_studio/utils/snackbar/custom_snackbar.dart';
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
          previous.form.email != current.form.email ||
          previous.form.phoneNumber != current.form.phoneNumber ||
          previous.form.password != current.form.password ||
          previous.form.confirmedPassword != current.form.confirmedPassword,
      builder: (context, state) {
        return RegisterActionButton(
            text: 'Siguiente',
            onPressed: () {
              if (state.form.firstName.valid &&
                  state.form.lastName.valid &&
                  state.form.username.valid) {
                if (Platform.isIOS) {
                  showCupertinoModalBottomSheet(
                      context: context,
                      builder: (context) => const RegisterArtistPage3());
                } else {
                  showMaterialModalBottomSheet(
                      context: context,
                      builder: (context) => const RegisterArtistPage3());
                }
                context.read<RegisterArtistBloc>().add(
                      const RegisterArtistNextPagePressed(1),
                    );
              } else {
                final snackBar = _getInvalidFormSnackBar(context);
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            });
      },
    );
  }

  SnackBar _getInvalidFormSnackBar(context) {
    return customSnackBar(
        context: context,
        onTop: true,
        content: 'Hay campos invalidos, por favor revisa los campos 🙏',
        duration: const Duration(seconds: 4),
        action: SnackBarAction(
          label: 'Vale 👌',
          disabledTextColor: Colors.white,
          textColor: Colors.white,
          onPressed: () {
            //Do whatever you want
          },
        ));
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
                  progress: 3 / 4,
                )
              ],
            );
          },
        ),
        Row(
          children: const [
            RegisterCustomTitle(
              text: 'Crea tu contraseña 🔐, para poder acceder a Inker',
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
