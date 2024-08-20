import 'package:flutter/material.dart';
import 'package:inker_studio/ui/register/widgets/close_register_button.dart';
import 'package:inker_studio/ui/register/widgets/register_artist_button.dart';
import 'package:inker_studio/ui/register/widgets/register_customer_button.dart';
import 'package:inker_studio/ui/register/widgets/register_progress_indicator.dart';
import 'package:inker_studio/ui/register/widgets/register_user_by_type_subtitle.dart';
import 'package:inker_studio/ui/register/widgets/register_user_by_type_title.dart';
import 'package:inker_studio/utils/layout/row_spacer.dart';

class RegisterUserByTypeLayout extends StatelessWidget {
  const RegisterUserByTypeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CloseRegisterButton(
                index: 0,
              )
            ],
          ),
          Row(
            children: [
              RegisterProgressIndicator(
                progress: 1 / 4,
              )
            ],
          ),
          Row(
            children: [RegisterUserByTypeTitle()],
          ),
          Row(
            children: [RegisterUserByTypeSubTitle()],
          ),
          RowSpacer(space: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [RegisterArtistButton()],
          ),
          RowSpacer(space: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [RegisterCustomerButton()],
          ),
        ],
      ),
    );
  }
}
