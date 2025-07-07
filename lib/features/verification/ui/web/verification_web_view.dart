import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/account_verification/account_verification_bloc.dart';
import 'package:inker_studio/features/login/ui/login/widgets/login_background.dart' show LoginBackground;
import 'package:inker_studio/features/verification/ui/widgets/pin_validator.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';

class VerificationWebView extends StatelessWidget {
  const VerificationWebView({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AccountVerificationBloc>();
    
    return Stack(
      children: [
        const LoginBackground(),
        SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: Responsive.value(
                  context,
                  mobile: 24,
                  tablet: 40,
                  desktop: 60,
                ),
                vertical: 20,
              ),
              child: Container(
                constraints: const BoxConstraints(maxWidth: 600),
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(
                      Responsive.value(
                        context,
                        mobile: 20,
                        tablet: 24,
                        desktop: 32,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Header with back and close buttons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () => Navigator.of(context).pop(),
                              icon: const Icon(Icons.arrow_back),
                              color: Theme.of(context).primaryColor,
                            ),
                            IconButton(
                              onPressed: () => Navigator.of(context).pop(),
                              icon: const Icon(Icons.close),
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        
                        const SizedBox(height: 20),
                        
                        // Icon
                        Icon(
                          Icons.phone_android_rounded,
                          size: Responsive.value(
                            context,
                            mobile: 60,
                            tablet: 80,
                            desktop: 100,
                          ),
                          color: Theme.of(context).primaryColor,
                        ),
                        
                        const SizedBox(height: 20),
                        
                        // Title
                        Text(
                          'Verificación de Cuenta',
                          style: TextStyle(
                            fontSize: Responsive.fontSize(context, 28),
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        
                        const SizedBox(height: 12),
                        
                        // Subtitle
                        Text(
                          'Se ha enviado un código de verificación a tu celular',
                          style: TextStyle(
                            fontSize: Responsive.fontSize(context, 18),
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        
                        const SizedBox(height: 8),
                        
                        Text(
                          'Verifica tu cuenta mediante tu número telefónico, revisa tu bandeja de mensajes.',
                          style: TextStyle(
                            fontSize: Responsive.fontSize(context, 16),
                            color: Colors.grey[400],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        
                        const SizedBox(height: 32),
                        
                        // PIN Input
                        Center(
                          child: SizedBox(
                            width: Responsive.value(
                              context,
                              mobile: 280,
                              tablet: 350,
                              desktop: 400,
                            ),
                            child: PinValidator(),
                          ),
                        ),
                        
                        const SizedBox(height: 24),
                        
                        // Resend link
                        Center(
                          child: RichText(
                            text: TextSpan(
                              text: '¿No recibiste el código?',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: Responsive.fontSize(context, 16),
                                color: Colors.grey[400],
                              ),
                              children: [
                                TextSpan(
                                  text: '  Volver a enviar',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: Responsive.fontSize(context, 16),
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      bloc.add(
                                        const VerificationSendEmailEvent(),
                                      );
                                    },
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                        const SizedBox(height: 32),
                        
                        // Note: Submit button is handled by VerificationPageNextButton
                        // positioned at the bottom of the page
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}