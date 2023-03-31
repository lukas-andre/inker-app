import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/ui/register/register_artist/inputs/register_artist_last_name_input.dart';
import 'package:inker_studio/ui/register/register_artist/inputs/register_artist_name_input.dart';
import 'package:inker_studio/ui/register/register_artist/inputs/register_artist_username_input.dart';
import 'package:inker_studio/ui/register/register_artist/register_artist_page_1.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

class RegisterArtistFormPage1 extends StatelessWidget {
  const RegisterArtistFormPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      height: 118,
      child: KeyboardActions(
        config: _buildKeyboardActionsConfig(context),
        child: ListView(
          scrollDirection: Axis.horizontal,
          controller: context.read<RegisterArtistBloc>().scrollController,
          children: [
            RegisterArtistNameInput(
              key: const Key('register_artist_name_input'),
            ),
            RegisterArtistLastNameInput(
              key: const Key('register_artist_last_name_input'),
            ),
            RegisterArtistUsernameInput(
              key: const Key('register_artist_username_input'),
            ),
          ],
        ),
      ),
    );
  }

  KeyboardActionsConfig _buildKeyboardActionsConfig(BuildContext context) {
    final bloc = context.read<RegisterArtistBloc>();
    final widthPosition = MediaQuery.of(context).size.width * 0.9;
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
                  Future.delayed(const Duration(milliseconds: 500),
                      () => bloc.lastNameFocusNode.requestFocus());
                },
                child: const KeyBoardActionNextButton(),
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
                    Future.delayed(const Duration(milliseconds: 500),
                        () => bloc.nameFocusNode.requestFocus());
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
                    Future.delayed(const Duration(milliseconds: 500),
                        () => bloc.usernameFocusNode.requestFocus());
                  },
                  child: const KeyBoardActionNextButton(),
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
                    Future.delayed(const Duration(milliseconds: 500), () {
                      bloc.lastNameFocusNode.requestFocus();
                    });
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
                  child: const KeyBoardActionNextButton(
                    isActive: true,
                    isFinal: true,
                  ),
                );
              }
            ]),
      ],
    );
  }
}
