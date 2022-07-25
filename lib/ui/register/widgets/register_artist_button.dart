import 'dart:io';

import 'package:flutter/material.dart';
import 'package:inker_studio/ui/register/register_artist/register_artist_page_1.dart';
import 'package:inker_studio/ui/register/register_user_by_type_page.dart';
import 'package:inker_studio/ui/register/widgets/register_user_by_type_button.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class RegisterArtistButton extends StatelessWidget {
  const RegisterArtistButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RegisterUserByTypeButton(
      text: 'Soy artista',
      helper: 'Si eres barbero o tatuador',
      onTap: () {
        if (Platform.isIOS) {
          showCupertinoModalBottomSheet(
              context: context,
              builder: (context) => const RegisterArtistPage1());
        } else {
          showMaterialModalBottomSheet(
              context: context,
              builder: (context) => const RegisterUserByTypePage());
        }
      },
      iconPath: 'assets/icons/color_palette.png',
    );
  }
}
