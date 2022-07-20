import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/verification/verification_bloc.dart';
import 'package:inker_studio/ui/login2/widgets/login_background.dart';
import 'package:inker_studio/ui/register/widgets/close_register_button.dart';
import 'package:inker_studio/ui/register/widgets/register_action_button.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_subtitle.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_title.dart';
import 'package:inker_studio/ui/register/widgets/register_progress_indicator.dart';
import 'package:inker_studio/ui/verification/widgets/pin_validator.dart';
import 'package:inker_studio/utils/layout/row_spacer.dart';
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
    return BlocBuilder<VerificationBloc, VerificationState>(
      buildWhen: (previous, current) =>
          previous.accountVerificationType != current.accountVerificationType ||
          previous.pin != current.pin,
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
            });
      },
    );
  }
}

class VerificationLayout extends StatelessWidget {
  const VerificationLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerificationBloc bloc = context.read<VerificationBloc>();
    return ListView(
      shrinkWrap: true,
      physics: const ScrollPhysics(parent: PageScrollPhysics()),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [CloseRegisterButton()],
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
              text: 'Verifica tu cuenta mediante tu numero telefónico',
            )
          ],
        ),
        Row(
          children: const [
            RegisterCustomSubTitle(
                text:
                    'Se enviará un código de verificación a tu número telefónico, revisa tu bandeja de mensajes.'),
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
