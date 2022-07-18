import 'dart:io';

import 'package:flutter/cupertino.dart';
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
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

// TODO: TODAS SON IGUALES SOLO CAMBIAN LAS VALIDACIONES, LAS ROWS,
// EL PROGRESS, Y LOS TITULOS, POR LO QUE SE PUEDE AUTOMATIZAR
class RegisterArtistPage1 extends StatelessWidget {
  const RegisterArtistPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
    return BlocListener<RegisterArtistBloc, RegisterArtistState>(
        listenWhen: (previous, current) =>
            previous.partialFormStatus == PartialFormStatus.initial &&
            current.partialFormStatus == PartialFormStatus.submitted,
        listener: (context, state) {
          if (state.pageIndex == 1) {
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
            } else {
              final snackBar = getInvalidFormSnackBar(context);
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
            context.read<RegisterArtistBloc>().add(
                  const RegisterArtistClearPartialForm(),
                );
          }
        },
        child: RegisterActionButton(
          text: 'Siguiente',
          onPressed: () {
            context.read<RegisterArtistBloc>().add(
                  const RegisterArtistNextPagePressed(1),
                );
          },
        ));
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
        Row(
          children: const [
            RegisterProgressIndicator(
              progress: 1 / 5,
            )
          ],
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
        Container(
          margin: const EdgeInsets.only(top: 20),
          height: MediaQuery.of(context).size.height * 0.3,
          child: KeyboardActions(
            config: _buildKeyboardActionsConfig(context),
            child: ListView(
              scrollDirection: Axis.horizontal,
              controller: context.read<RegisterArtistBloc>().scrollController,
              children: [
                RegisterArtistNameInput(),
                RegisterArtistLastNameInput(),
                RegisterArtistUsernameInput(),
              ],
            ),
          ),
        )
      ],
    );
  }

  KeyboardActionsConfig _buildKeyboardActionsConfig(BuildContext context) {
    final bloc = context.read<RegisterArtistBloc>();
    final widthPosition = MediaQuery.of(context).size.width * 0.9;
    // final function = nextButtonPRe
    return KeyboardActionsConfig(
      keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
      keyboardBarColor: Colors.grey[200],
      nextFocus: false,
      actions: [
        KeyboardActionsItem(
          focusNode: bloc.nameFocusNode,
          displayDoneButton: false,
          toolbarAlignment: MainAxisAlignment.spaceBetween,
          toolbarButtons: [
            (node) {
              return const KeyBoardActionBackButton(
                isActive: false,
              );
            },
            (node) {
              return GestureDetector(
                onTap: () {
                  bloc.scrollController.animateTo(widthPosition,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
                  FocusScope.of(context).unfocus();
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 30),
                  child: const KeyBoardActionNextButton(),
                ),
              );
            }
          ],
        ),
        KeyboardActionsItem(
            focusNode: bloc.lastNameFocusNode,
            displayDoneButton: false,
            toolbarAlignment: MainAxisAlignment.spaceBetween,
            toolbarButtons: [
              (node) {
                return GestureDetector(
                  onTap: () {
                    bloc.scrollController.animateTo(0.0,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                    FocusScope.of(context).unfocus();
                  },
                  child: const KeyBoardActionBackButton(
                    isActive: true,
                  ),
                );
              },
              (node) {
                return GestureDetector(
                  onTap: () {
                    bloc.scrollController.animateTo(widthPosition * 2,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                    FocusScope.of(context).unfocus();
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 30),
                    child: const KeyBoardActionNextButton(),
                  ),
                );
              }
            ]),
        KeyboardActionsItem(
            focusNode: bloc.usernameFocusNode,
            displayDoneButton: false,
            toolbarAlignment: MainAxisAlignment.spaceBetween,
            toolbarButtons: [
              (node) {
                return GestureDetector(
                  onTap: () {
                    bloc.scrollController.animateTo(widthPosition,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                    FocusScope.of(context).unfocus();
                  },
                  child: const KeyBoardActionBackButton(
                    isActive: true,
                  ),
                );
              },
              (node) {
                return GestureDetector(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                    context.read<RegisterArtistBloc>().add(
                          const RegisterArtistNextPagePressed(1),
                        );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 30),
                    child: const KeyBoardActionNextButton(
                      isActive: true,
                      isFinal: true,
                    ),
                  ),
                );
              }
            ]),
      ],
    );
  }
}

class KeyBoardActionBackButton extends StatelessWidget {
  const KeyBoardActionBackButton({Key? key, this.isActive = true})
      : super(key: key);
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30),
      child: Text(
        'Anterior',
        style: TextStyle(
            fontSize: 16,
            color: isActive
                ? CupertinoColors.activeBlue
                : CupertinoColors.systemGrey,
            fontFamily: 'Poppins'),
      ),
    );
  }
}

class KeyBoardActionNextButton extends StatelessWidget {
  const KeyBoardActionNextButton(
      {Key? key, this.isActive = true, this.isFinal = false})
      : super(key: key);
  final bool isActive;
  final bool isFinal;

  @override
  Widget build(BuildContext context) {
    return Text(
      isFinal ? 'Listo' : 'Siguiente',
      style: TextStyle(
          fontSize: 16,
          color: isActive
              ? CupertinoColors.activeBlue
              : CupertinoColors.systemGrey,
          fontFamily: 'Poppins'),
    );
  }
}
