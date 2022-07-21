import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/verification/verification_bloc.dart';
import 'package:inker_studio/ui/login2/login_page2.dart';
import 'package:inker_studio/ui/login2/widgets/login_background.dart';
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
  const VerificationPage({Key? key}) : super(key: key);

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
        child: Stack(
          children: const [
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
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerificationBloc, VerificationState>(
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
            _handleNotificationFailed(context);
            break;
          case AccountVerificationStatus.invalidCode:
            _handleInvalidCode(context);
            break;
          case AccountVerificationStatus.failed:
            _handleVerificationFailed(context);
            break;
          default:
            break;
        }
      },
      child: BlocBuilder<VerificationBloc, VerificationState>(
        buildWhen: (previous, current) =>
            previous.accountVerificationType !=
                current.accountVerificationType ||
            previous.pin != current.pin ||
            previous.isVerifying != current.isVerifying,
        builder: (context, state) {
          return RegisterActionButton(
            text: 'Verificar ${state.accountVerificationType?.name}',
            onPressed: () {
              if (state.isPinCompleted) {
                context
                    .read<VerificationBloc>()
                    .add(const VerificationButtonPressedEvent());
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

  void _handleVerificationFailed(BuildContext context) {
    final snackBar =
        customSnackBar(content: 'We were unable to verify your account');
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _handleInvalidCode(BuildContext context) {
    final snackBar = customSnackBar(content: 'Invalid verification code');
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _handleNotificationFailed(BuildContext context) {
    final snackBar =
        customSnackBar(content: 'Error sending verification code :( ');
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void handleActivatedUser(VerificationState state, BuildContext context) {
    if (state.isVerifying) {
      context.read<VerificationBloc>().add(const VerificationResetEvent());
    }
    final snackBar = customSnackBar(
        content: state.verificationStatusMessage ?? 'User already verified');

    InkerNavigator.pushAndRemoveUntil(
      context,
      const OnBoardingPage(),
    );

    InkerNavigator.push(context, const LoginPage2());
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _handleUserAlreadyVerified(
      BuildContext context, VerificationState state) {
    InkerNavigator.pushAndRemoveUntil(
      context,
      const OnBoardingPage(),
    );

    InkerNavigator.push(context, const LoginPage2());

    final snackBar = customSnackBar(
        content: state.verificationStatusMessage ?? 'User already verified');
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

class VerificationLayout extends StatelessWidget {
  const VerificationLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerificationBloc bloc = context.read<VerificationBloc>();
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CloseRegisterButton(
              toPage: LoginPage2(),
            )
          ],
        ),
        Row(
          children: const [
            RegisterProgressIndicator(
              progress: 5 / 5,
            )
          ],
        ),
        Row(
          children: const [
            RegisterCustomTitle(
              text: 'Se ha enviado un código de verificación a tu celular',
            )
          ],
        ),
        Row(
          children: const [
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
