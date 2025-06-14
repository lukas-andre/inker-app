import 'package:flutter/material.dart';
import 'package:inker_studio/test_utils/register_keys.dart';
import 'package:inker_studio/features/register/ui/register/artist/register_artist_page_1.dart' show RegisterArtistPage1;
import 'package:inker_studio/features/register/ui/register/widgets/register_user_by_type_button.dart' show RegisterUserByTypeButton;
import 'package:inker_studio/utils/layout/modal_bottom_sheet.dart';

class RegisterArtistButton extends StatelessWidget {
  const RegisterArtistButton({super.key});

  @override
  Widget build(BuildContext context) {
    return RegisterUserByTypeButton(
      key: registerKeys.artistRegistration.artistTypeButton,
      text: 'Soy artista',
      helper: 'Si eres barbero o tatuador',
      onTap: () {
        openModalBottomSheet(
            context: context, page: const RegisterArtistPage1());
      },
      iconPath: 'assets/icons/color_palette.png',
    );
  }
}
