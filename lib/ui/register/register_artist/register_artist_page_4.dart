import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/ui/login2/widgets/login_background.dart';
import 'package:inker_studio/ui/register/register_artist/form/register_artist_address_extra_input.dart';
import 'package:inker_studio/ui/register/register_artist/form/register_artist_address_input.dart';
import 'package:inker_studio/ui/register/register_artist/form/register_artist_address_type_input.dart';
import 'package:inker_studio/ui/register/widgets/close_register_button.dart';
import 'package:inker_studio/ui/register/widgets/register_action_button.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_subtitle.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_title.dart';
import 'package:inker_studio/ui/register/widgets/register_progress_indicator.dart';

import 'package:inker_studio/utils/snackbar/invalid_form_snackbar.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class RegisterArtistPage4 extends StatelessWidget {
  const RegisterArtistPage4({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const RegisterArtistPage4());
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
            RegisterArtistPage4Layout(),
            RegisterArtistPage4NextButton(),
          ],
        ),
      ),
    );
  }
}

class RegisterArtistPage4NextButton extends StatelessWidget {
  const RegisterArtistPage4NextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      buildWhen: (previous, current) =>
          previous.form.location != current.form.location ||
          previous.form.addressExtra != current.form.addressExtra,
      builder: (context, state) {
        return RegisterActionButton(
            text: 'Siguiente',
            onPressed: () {
              if (state.form.location.valid && state.form.addressExtra.valid) {
                if (Platform.isIOS) {
                  showCupertinoModalBottomSheet(
                      context: context,
                      builder: (context) => const RegisterArtistPage4());
                } else {
                  showMaterialModalBottomSheet(
                      context: context,
                      builder: (context) => const RegisterArtistPage4());
                }
                context.read<RegisterArtistBloc>().add(
                      const RegisterArtistNextPagePressed(4),
                    );
              } else {
                final snackBar = getInvalidFormSnackBar(context);
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            });
      },
    );
  }
}

class RegisterArtistPage4Layout extends StatelessWidget {
  const RegisterArtistPage4Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      buildWhen: (previous, current) =>
          previous.addressTypeOption != current.addressTypeOption,
      builder: (context, state) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [CloseRegisterButton()],
            ),
            Row(
              children: const [
                RegisterProgressIndicator(
                  progress: 4 / 5,
                )
              ],
            ),
            Row(
              children: const [
                RegisterCustomTitle(
                  text: 'Ingresa la dirección de tu estudio o local',
                )
              ],
            ),
            Row(
              children: const [
                RegisterCustomSubTitle(
                    text:
                        'De esta forma nuestros usuarios cercanos a ti podran ver tu encontrarte de manera rapida y facil.'),
              ],
            ),
            Row(
              children: [RegisterArtistAddressInput()],
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              switchInCurve: Curves.easeInSine,
              switchOutCurve: Curves.easeOutSine,
              child: (state.addressTypeOption
                              .where((element) => element.isSelected)
                              .first)
                          .type ==
                      AddressType.apartment
                  ? Row(
                      children: [
                        RegisterArtistAddressExtraInput(),
                      ],
                    )
                  : const SizedBox(),
            ),
            Row(
              children: const [
                RegisterCustomSubTitle(
                  text: 'Detalle de la dirección',
                ),
              ],
            ),
            Row(
              children: const [
                RegisterArtistAddressTypeInput(),
              ],
            )
          ],
        );
      },
    );
  }
}
