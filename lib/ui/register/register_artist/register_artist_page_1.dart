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
import 'package:inker_studio/ui/register/widgets/register_custom_subtitle.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_title.dart';
import 'package:inker_studio/ui/register/widgets/register_progress_indicator.dart';
import 'package:inker_studio/utils/forms/custom_input.dart';
import 'package:inker_studio/utils/snackbar/custom_snackbar.dart';
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
              if (state.form.firstName.valid &&
                  state.form.lastName.valid &&
                  state.form.username.valid) {
                if (Platform.isIOS) {
                  // Navigator.of(context).push(MaterialWithModalsPageRoute(
                  //     builder: (context) => const RegisterArtistPage2()));
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
        content: 'Hay campos inválidos, por favor revisa los campos 🙏',
        duration: const Duration(seconds: 3),
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

class RegisterActionButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const RegisterActionButton(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.085),
              child: Center(
                child: TextButton(
                  onPressed: onPressed,
                  child: SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Center(
                      child: Text(
                        text,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff7450ff)),
                  ),
                ),
              ),
            ),
          ],
        );
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

class RegisterArtistPhoneNumberInput extends StatelessWidget {
  const RegisterArtistPhoneNumberInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      builder: (context, state) {
        return CustomInput(
            onChanged: (value) {
              context.read<RegisterArtistBloc>().add(
                    RegisterArtistPhoneNumberChanged(value),
                  );
            },
            label: 'Teléfono');
      },
    );
  }
}

class RegisterArtistPasswordInput extends StatelessWidget {
  const RegisterArtistPasswordInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      builder: (context, state) {
        return CustomInput(
            onChanged: (value) {
              context.read<RegisterArtistBloc>().add(
                    RegisterArtistPasswordChanged(value),
                  );
            },
            label: 'Contraseña');
      },
    );
  }
}

class RegisterArtistConfirmPasswordInput extends StatelessWidget {
  const RegisterArtistConfirmPasswordInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      builder: (context, state) {
        return CustomInput(
            onChanged: (value) {
              context.read<RegisterArtistBloc>().add(
                    RegisterArtistConfirmedPasswordChanged(value),
                  );
            },
            label: 'Confirmar Contraseña');
      },
    );
  }
}
