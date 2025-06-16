import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/account_verification/account_verification_bloc.dart';
import 'package:inker_studio/features/auth_shared/models/user_type.dart' show UserType;
import 'package:inker_studio/features/login/ui/login/widgets/login_background.dart' show LoginBackground;
import 'package:inker_studio/features/register/ui/register/widgets/close_register_button.dart' show CloseRegisterButton;
import 'package:inker_studio/features/register/ui/register/widgets/register_back_button.dart' show RegisterBackButton;
import 'package:inker_studio/features/register/ui/register/widgets/register_custom_subtitle.dart' show RegisterCustomSubTitle;
import 'package:inker_studio/features/register/ui/register/widgets/register_custom_title.dart' show RegisterCustomTitle;
import 'package:inker_studio/features/verification/ui/widgets/pin_validator.dart';
import 'package:inker_studio/utils/layout/row_spacer.dart';

class VerificationMobileView extends StatelessWidget {
  const VerificationMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AccountVerificationBloc>();
    
    return Stack(
      children: [
        const LoginBackground(),
        Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RegisterBackButton(),
                CloseRegisterButton(
                  index: 4,
                  userType: UserType.customer,
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
        ),
      ],
    );
  }
}