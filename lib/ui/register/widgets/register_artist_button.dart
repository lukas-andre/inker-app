import 'package:flutter/material.dart';
import 'package:inker_studio/ui/register/register_artist/register_artist_page_1.dart';
import 'package:inker_studio/ui/register/widgets/register_user_by_type_button.dart';
import 'package:inker_studio/utils/layout/modal_bottom_sheet.dart';

class RegisterArtistButton extends StatelessWidget {
  const RegisterArtistButton({super.key});

  @override
  Widget build(BuildContext context) {
    return RegisterUserByTypeButton(
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
