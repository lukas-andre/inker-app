import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/register_bloc.dart';
import 'package:inker_studio/ui/register/widgets/close_register_button.dart';
import 'package:inker_studio/ui/register/widgets/register_artist_button.dart';
import 'package:inker_studio/ui/register/widgets/register_customer_button.dart';
import 'package:inker_studio/ui/register/widgets/register_progress_indicator.dart';
import 'package:inker_studio/ui/register/widgets/register_user_by_type_subtitle.dart';
import 'package:inker_studio/ui/register/widgets/register_user_by_type_title.dart';
import 'package:inker_studio/utils/layout/row_spacer.dart';

class RegisterUserByTypeLayout extends StatelessWidget {
  const RegisterUserByTypeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [CloseRegisterButton()],
        ),
        BlocBuilder<RegisterBloc, RegisterState>(
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
          children: const [RegisterUserByTypeTitle()],
        ),
        Row(
          children: const [RegisterUserByTypeSubTitle()],
        ),
        const RowSpacer(space: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [RegisterArtistButton()],
        ),
        const RowSpacer(space: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [RegisterCustomerButton()],
        ),
      ],
    );
  }
}
