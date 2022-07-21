import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/ui/login2/widgets/login_background.dart';
import 'package:inker_studio/ui/register/register_artist/form/register_artist_email_input.dart';
import 'package:inker_studio/ui/register/register_artist/form/register_artist_phone_number_input.dart';
import 'package:inker_studio/ui/register/register_artist/register_artist_page_3.dart';
import 'package:inker_studio/ui/register/widgets/close_register_button.dart';
import 'package:inker_studio/ui/register/widgets/register_action_button.dart';
import 'package:inker_studio/ui/register/widgets/register_back_button.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_subtitle.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_title.dart';
import 'package:inker_studio/ui/register/widgets/register_progress_indicator.dart';
import 'package:inker_studio/utils/layout/modal_bottom_sheet.dart';
import 'package:inker_studio/utils/snackbar/invalid_form_snackbar.dart';

class RegisterArtistPage2 extends StatelessWidget {
  const RegisterArtistPage2({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const RegisterArtistPage2());
  }

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
            RegisterArtistPage2Layout(),
            RegisterArtistPage2NextButton(),
          ],
        ),
      ),
    );
  }
}

class RegisterArtistPage2NextButton extends StatelessWidget {
  const RegisterArtistPage2NextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      buildWhen: (previous, current) =>
          previous.form.email != current.form.email ||
          previous.form.phoneNumber != current.form.phoneNumber,
      builder: (context, state) {
        return RegisterActionButton(
            text: 'Siguiente',
            onPressed: () {
              if (state.form.email.valid && state.form.phoneNumber.valid) {
                openModalBottomSheet(
                    context: context, page: const RegisterArtistPage3());
                context.read<RegisterArtistBloc>().add(
                      const RegisterArtistNextPagePressed(2),
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

class RegisterArtistPage2Layout extends StatelessWidget {
  const RegisterArtistPage2Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            RegisterBackButton(),
            CloseRegisterButton(
              index: 2,
            )
          ],
        ),
        Row(
          children: const [
            RegisterProgressIndicator(
              progress: 2 / 5,
            )
          ],
        ),
        Row(
          children: const [
            RegisterCustomTitle(
              text: 'Completa tus datos de contacto 📞',
            )
          ],
        ),
        Row(
          children: const [
            RegisterCustomSubTitle(
                text:
                    'Estas a unos pasos de formar parte de esta gran comunidad.')
          ],
        ),
        Row(
          children: [RegisterArtistEmailInput()],
        ),
        Row(
          children: [
            RegisterArtistPhoneNumberInput(),
          ],
        ),
      ],
    );
  }
}
