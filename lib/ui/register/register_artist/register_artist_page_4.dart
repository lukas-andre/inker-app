import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:inker_studio/domain/blocs/account_verification/account_verification_bloc.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/domain/models/user/user_type.dart';
import 'package:inker_studio/test_utils/register_keys.dart';
import 'package:inker_studio/ui/login/widgets/login_background.dart';
import 'package:inker_studio/ui/register/register_artist/inputs/register_artist_address_extra_input.dart';
import 'package:inker_studio/ui/register/register_artist/inputs/register_artist_address_input.dart';
import 'package:inker_studio/ui/register/register_artist/inputs/register_artist_address_type_input.dart';
import 'package:inker_studio/ui/register/widgets/close_register_button.dart';
import 'package:inker_studio/ui/register/widgets/register_action_button.dart';
import 'package:inker_studio/ui/register/widgets/register_back_button.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_subtitle.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_title.dart';
import 'package:inker_studio/ui/register/widgets/register_progress_indicator.dart';
import 'package:inker_studio/ui/verification/verification_page.dart';
import 'package:inker_studio/utils/layout/modal_bottom_sheet.dart';
import 'package:inker_studio/utils/layout/row_spacer.dart';
import 'package:inker_studio/utils/snackbar/custom_snackbar.dart';
import 'package:inker_studio/utils/snackbar/invalid_form_snackbar.dart';

class RegisterArtistPage4 extends StatelessWidget {
  const RegisterArtistPage4({super.key});

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const RegisterArtistPage4());
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
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    RegisterArtistBloc registerArtistBloc =
        BlocProvider.of<RegisterArtistBloc>(context);
    AccountVerificationBloc verificationBloc =
        BlocProvider.of<AccountVerificationBloc>(context);
    return BlocListener<RegisterArtistBloc, RegisterArtistState>(
      listenWhen: (previous, current) =>
          previous.registerState != current.registerState,
      listener: (context, state) {
        switch (state.registerState) {
          case RegisterArtistStatus.ok:
            final snackBar = customSnackBar(
                content: 'Tu usuario ha sido creado! 🥳',
                duration: const Duration(seconds: 4));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            verificationBloc.add(const VerificationSendSMSEvent());
            openModalBottomSheet(
                context: context,
                page: const VerificationPage(),
                enableDrag: false);
            registerArtistBloc.add(const RegisterArtistClearForm());
            break;
          case RegisterArtistStatus.error:
            final snackBar = customSnackBar(
                content: state.errorMessage ?? 'Error',
                duration: const Duration(seconds: 4));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            break;

          case RegisterArtistStatus.initial:
            registerArtistBloc.add(const RegisterArtistClearState());
            break;
          case RegisterArtistStatus.submitted:
            // TODO: Handle this case.
            break;
        }
      },
      child: BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
        buildWhen: (previous, current) =>
            previous.registerState.index != current.registerState.index,
        builder: (context, state) {
          return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
            buildWhen: (previous, current) =>
                previous.form.location != current.form.location ||
                previous.form.addressExtra != current.form.addressExtra ||
                previous.registerState.index != current.registerState.index,
            builder: (context, state) {
              return RegisterActionButton(
                key: registerKeys.artistRegistration.registerButton,
                text: 'Registrarme',
                onPressed: () {
                  if (state.form.location.valid &&
                      state.form.addressExtra.valid &&
                      state.form.status == FormzStatus.valid) {
                    registerArtistBloc.add(
                      const RegisterArtistRegisterPressed(),
                    );
                  } else {
                    final snackBar = getInvalidFormSnackBar(context);
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                isLoading:
                    state.registerState == RegisterArtistStatus.submitted,
              );
            },
          );
        },
      ),
    );
  }
}

class RegisterArtistPage4Layout extends StatelessWidget {
  const RegisterArtistPage4Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      buildWhen: (previous, current) =>
          previous.addressTypeOption != current.addressTypeOption,
      builder: (context, state) {
        return Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RegisterBackButton(),
                CloseRegisterButton(
                  index: 4,
                  userType: UserType.artist,
                )
              ],
            ),
            const Row(
              children: [
                RegisterProgressIndicator(
                  progress: 4 / 5,
                )
              ],
            ),
            const Row(
              children: [
                RegisterCustomTitle(
                  text: 'Ingresa la dirección de tu estudio o local',
                )
              ],
            ),
            const Row(
              children: [RegisterArtistAddressInput()],
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              switchInCurve: Curves.easeInSine,
              switchOutCurve: Curves.easeOutSine,
              child: state.addressType == AddressType.apartment
                  ? Row(
                      children: [
                        RegisterArtistAddressExtraInput(),
                      ],
                    )
                  : const SizedBox(),
            ),
            const Row(
              children: [
                RegisterCustomSubTitle(
                  text: 'Detalle de la dirección',
                ),
              ],
            ),
            const Row(
              children: [
                RegisterArtistAddressTypeInput(),
              ],
            ),
            RowSpacer(space: MediaQuery.of(context).size.height * 0.04),
            const Row(
              children: [
                RegisterCustomSubTitle(
                    fontSize: 15,
                    text:
                        'De esta forma nuestros usuarios cercanos a ti podran ver tu encontrarte de manera rapida y facil.'),
              ],
            ),
          ],
        );
      },
    );
  }
}
