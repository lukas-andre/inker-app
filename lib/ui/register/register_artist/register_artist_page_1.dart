import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/ui/login2/widgets/login_background.dart';
import 'package:inker_studio/ui/register/widgets/close_register_button.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_subtitle.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_title.dart';
import 'package:inker_studio/ui/register/widgets/register_progress_indicator.dart';
import 'package:inker_studio/utils/forms/custom_input.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class RegisterArtistPage1 extends StatelessWidget {
  const RegisterArtistPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterArtistBloc(),
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            final currentFocus = FocusScope.of(context);

            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: Stack(
            children: [
              const LoginBackground(),
              const RegisterArtistLayout(),
              RegisterActionButton(
                  text: 'Siguiente',
                  onPressed: () {
                    if (Platform.isIOS) {
                      showCupertinoModalBottomSheet(
                          context: context,
                          builder: (context) => const RegisterArtistPage1());
                    } else {
                      showMaterialModalBottomSheet(
                          context: context,
                          builder: (context) => const RegisterArtistPage1());
                    }
                  }),
            ],
          ),
        ),
      ),
    );
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

class RegisterArtistNameInput extends StatelessWidget {
  const RegisterArtistNameInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      builder: (context, state) {
        return CustomInput(
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

class RegisterArtistLastNameInput extends StatelessWidget {
  const RegisterArtistLastNameInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      builder: (context, state) {
        return CustomInput(
            onChanged: (value) {
              context.read<RegisterArtistBloc>().add(
                    RegisterArtistLastNameChanged(value),
                  );
            },
            label: 'Apellido');
      },
    );
  }
}

class RegisterArtistUsernameInput extends StatelessWidget {
  const RegisterArtistUsernameInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      builder: (context, state) {
        return CustomInput(
            suffixIcon: const Tooltip(
              message: 'Este sera el nombre que se vera en tu perfil',
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

class RegisterArtistEmailInput extends StatelessWidget {
  const RegisterArtistEmailInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      builder: (context, state) {
        return CustomInput(
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
