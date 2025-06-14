import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/features/register/bloc/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/features/auth_shared/models/user_type.dart';
import 'package:inker_studio/features/login/ui/login/widgets/login_background.dart';
import 'package:inker_studio/features/register/ui/register/widgets/close_register_button.dart'
    show CloseRegisterButton;
import 'package:inker_studio/features/register/ui/register/widgets/register_action_button.dart'
    show RegisterActionButton;
import 'package:inker_studio/features/register/ui/register/widgets/register_back_button.dart'
    show RegisterBackButton;
import 'package:inker_studio/features/register/ui/register/widgets/register_custom_subtitle.dart'
    show RegisterCustomSubTitle;
import 'package:inker_studio/features/register/ui/register/widgets/register_custom_title.dart'
    show RegisterCustomTitle;
import 'package:inker_studio/features/register/ui/register/widgets/register_progress_indicator.dart'
    show RegisterProgressIndicator;
import 'package:inker_studio/test_utils/register_keys.dart';
import 'package:inker_studio/features/register/ui/register/artist/inputs/register_artist_email_input.dart';
import 'package:inker_studio/features/register/ui/register/artist/inputs/register_artist_phone_number_input.dart';
import 'package:inker_studio/features/register/ui/register/artist/register_artist_page_3.dart';
import 'package:inker_studio/utils/layout/modal_bottom_sheet.dart';
import 'package:inker_studio/utils/snackbar/invalid_form_snackbar.dart';

class RegisterArtistPage2 extends StatelessWidget {
  const RegisterArtistPage2({super.key});

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
        child: const Stack(
          children: [
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
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      buildWhen: (previous, current) =>
          previous.form.email != current.form.email ||
          previous.form.phoneNumber != current.form.phoneNumber,
      builder: (context, state) {
        return RegisterActionButton(
            key: registerKeys.artistRegistration.nextButton,
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
  const RegisterArtistPage2Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RegisterBackButton(),
            CloseRegisterButton(
              index: 2,
              userType: UserType.artist,
            )
          ],
        ),
        const Row(
          children: [
            RegisterProgressIndicator(
              progress: 2 / 5,
            )
          ],
        ),
        const Row(
          children: [
            RegisterCustomTitle(
              text: 'Completa tus datos de contacto 📞',
            )
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
        const Row(
          children: [
            RegisterCustomSubTitle(
                text:
                    'Estas a unos pasos de formar parte de esta gran comunidad.')
          ],
        ),
      ],
    );
  }
}
