import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/account_verification/account_verification_bloc.dart';
import 'package:inker_studio/ui/login/login_page.dart';
import 'package:inker_studio/ui/login/widgets/login_background.dart';
import 'package:inker_studio/ui/on_boarding/on_boarding_page.dart';
import 'package:inker_studio/ui/register/widgets/close_register_button.dart';
import 'package:inker_studio/ui/register/widgets/register_action_button.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_subtitle.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_title.dart';
import 'package:inker_studio/ui/register/widgets/register_progress_indicator.dart';
import 'package:inker_studio/ui/verification/widgets/pin_validator.dart';
import 'package:inker_studio/utils/bloc_navigator.dart';
import 'package:inker_studio/utils/layout/row_spacer.dart';
import 'package:inker_studio/utils/snackbar/custom_snackbar.dart';
import 'package:inker_studio/utils/snackbar/invalid_form_snackbar.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const VerificationPage());
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
            VerificationLayout(),
            VerificationPageNextButton(),
          ],
        ),
      ),
    );
  }
}

class VerificationPageNextButton extends StatelessWidget {
  const VerificationPageNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<AccountVerificationBloc, AccountVerificationState>(
      listenWhen: (previous, current) =>
          previous.accountVerificationStatus?.index !=
          current.accountVerificationStatus?.index,
      listener: (context, state) {
        switch (state.accountVerificationStatus) {
          case AccountVerificationStatus.initial:
          case AccountVerificationStatus.ready:
          case AccountVerificationStatus.sentSMS:
          case AccountVerificationStatus.sentEmail:
          case AccountVerificationStatus.sendedSMS:
          case AccountVerificationStatus.sendedEmail:
            // TODO: Handle this case.
            break;
          case AccountVerificationStatus.userAlreadyVerified:
            _handleUserAlreadyVerified(context, state);
            break;
          case AccountVerificationStatus.activated:
            handleActivatedUser(state, context);
            break;
          case AccountVerificationStatus.sentSMSFailed:
          case AccountVerificationStatus.sentEmailFailed:
            _handleNotificationFailed(context, state.verificationStatusMessage);
            break;
          case AccountVerificationStatus.invalidCode:
            _handleInvalidCode(context, state.verificationStatusMessage);
            break;
          case AccountVerificationStatus.failed:
            _handleVerificationFailed(context, state.verificationStatusMessage);
            break;
          default:
            break;
        }
        context
            .read<AccountVerificationBloc>()
            .add(const VerificationClearEvent());
      },
      child: BlocBuilder<AccountVerificationBloc, AccountVerificationState>(
        buildWhen: (previous, current) =>
            previous.accountVerificationType !=
                current.accountVerificationType ||
            previous.pin != current.pin ||
            previous.isVerifying != current.isVerifying ||
            previous.accountVerificationStatus?.index !=
                current.accountVerificationStatus?.index,
        builder: (context, state) {
          return RegisterActionButton(
            text: 'Verificar ${state.accountVerificationType?.name}',
            onPressed: () {
              if (state.isPinCompleted) {
                context
                    .read<AccountVerificationBloc>()
                    .add(VerificationPinCompletedEvent(state.pin ?? ''));
              } else {
                final snackBar = getInvalidFormSnackBar(context);
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
            isLoading: state.isVerifying,
          );
        },
      ),
    );
  }

  void _handleVerificationFailed(BuildContext context, String? message) {
    final snackBar = customSnackBar(
        content: message ?? 'We were unable to verify your account');
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _handleInvalidCode(BuildContext context, String? message) {
    final snackBar =
        customSnackBar(content: message ?? 'Invalid verification code');
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _handleNotificationFailed(BuildContext context, String? message) {
    final snackBar = customSnackBar(
        content: message ?? 'Error sending verification code :( ');
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void handleActivatedUser(
      AccountVerificationState state, BuildContext context) {
    if (state.isVerifying) {
      context
          .read<AccountVerificationBloc>()
          .add(const VerificationResetEvent());
    }
    final snackBar = customSnackBar(
        content: state.verificationStatusMessage ?? 'User already verified');

    InkerNavigator.pushAndRemoveUntil(
      context,
      const OnBoardingPage(),
    );

    InkerNavigator.push(context, const LoginPage());
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _handleUserAlreadyVerified(
      BuildContext context, AccountVerificationState state) {
    InkerNavigator.pushAndRemoveUntil(
      context,
      const OnBoardingPage(),
    );

    InkerNavigator.push(context, const LoginPage());

    final snackBar = customSnackBar(
        content: state.verificationStatusMessage ?? 'User already verified');
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

class VerificationLayout extends StatelessWidget {
  const VerificationLayout({super.key});

  @override
  Widget build(BuildContext context) {
    AccountVerificationBloc bloc = context.read<AccountVerificationBloc>();
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CloseRegisterButton(
              toPage: LoginPage(),
            )
          ],
        ),
        const Row(
          children: [
            RegisterProgressIndicator(
              progress: 5 / 5,
            )
          ],
        ),
        const Row(
          children: [
            RegisterCustomTitle(
              text: 'Se ha enviado un código de verificación a tu celular',
            )
          ],
        ),
        const Row(
          children: [
            RegisterCustomSubTitle(
                text:
                    'Verifica tu cuenta mediante tu numero telefónico, revisa tu bandeja de mensajes.'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [PinValidator()],
        ),
        const RowSpacer(space: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                  text: '¿No recibiste el código?',
                  style: const TextStyle(fontFamily: 'Poppins'),
                  children: [
                    TextSpan(
                      text: '  volver a enviar',
                      style: const TextStyle(
                        color: Color(0xff7450FF),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          bloc.add(
                            const VerificationSendSMSEvent(),
                          );
                        },
                    ),
                  ]),
            ),
          ],
        ),
      ],
    );
  }
}
