import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/verification/verification_bloc.dart';
import 'package:inker_studio/ui/login2/widgets/login_background.dart';
import 'package:inker_studio/ui/register/widgets/close_register_button.dart';
import 'package:inker_studio/ui/register/widgets/register_action_button.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_subtitle.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_title.dart';
import 'package:inker_studio/ui/register/widgets/register_progress_indicator.dart';
import 'package:inker_studio/utils/forms/styles.dart';
import 'package:inker_studio/utils/layout/row_spacer.dart';
import 'package:pinput/pinput.dart';

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
      builder: (context, state) {
        return RegisterActionButton(
            text: 'Verificar ${state.accountVerificationType?.name}',
            onPressed: () {});
      },
    );
  }
}

class VerificationLayout extends StatelessWidget {
  const VerificationLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        const RowSpacer(space: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: const TextSpan(text: '¿No recibiste el código?', children: [
                TextSpan(
                  text: '  volver a enviar',
                  style: TextStyle(
                    color: Color(0xff7450FF),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
            ),
          ],
        ),
      ],
    );
  }
}

class PinValidator extends StatelessWidget {
  PinValidator({Key? key}) : super(key: key);
  final controller = TextEditingController();
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    const length = 4;
    const borderColor = Color(0xff777E91);
    const errorColor = Color.fromRGBO(255, 234, 238, 1);
    final fillColor = inputBackgroundColor;
    final defaultPinTheme = PinTheme(
      width: 62,
      height: 62,
      textStyle: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins',
        color: Colors.white,
      ),
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.transparent),
      ),
    );

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SizedBox(
          height: 72,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Pinput(
            length: length,
            controller: controller,
            focusNode: focusNode,
            defaultPinTheme: defaultPinTheme,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            keyboardType: TextInputType.number,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            onCompleted: (pin) {
              print('Pin: $pin');
            },
            focusedPinTheme: defaultPinTheme.copyWith(
              height: 72,
              width: 72,
              decoration: defaultPinTheme.decoration!.copyWith(
                border: Border.all(color: borderColor),
              ),
            ),
            errorPinTheme: defaultPinTheme.copyWith(
              decoration: BoxDecoration(
                color: errorColor,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        );
      },
    );
  }
}
