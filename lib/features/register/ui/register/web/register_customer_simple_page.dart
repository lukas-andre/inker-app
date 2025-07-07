import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/account_verification/account_verification_bloc.dart';
import 'package:inker_studio/features/login/ui/login/widgets/login_background.dart';
import 'package:inker_studio/features/register/bloc/register/customer/register_customer_bloc.dart';
import 'package:inker_studio/features/register/ui/register/customer/inputs/register_customer_confirm_password_input.dart';
import 'package:inker_studio/features/register/ui/register/customer/inputs/register_customer_email_input.dart';
import 'package:inker_studio/features/register/ui/register/customer/inputs/register_customer_last_name_input.dart';
import 'package:inker_studio/features/register/ui/register/customer/inputs/register_customer_name_input.dart';
import 'package:inker_studio/features/register/ui/register/customer/inputs/register_customer_password_input.dart';
import 'package:inker_studio/features/register/ui/register/customer/inputs/register_customer_phone_number_input.dart';
import 'package:inker_studio/ui/shared/widgets/buttons.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';
import 'package:inker_studio/utils/snackbar/custom_snackbar.dart';

class RegisterCustomerSimplePage extends StatelessWidget {
  const RegisterCustomerSimplePage({super.key});

  static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => const RegisterCustomerSimplePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final registerCustomerBloc = BlocProvider.of<RegisterCustomerBloc>(context);
    final verificationBloc = BlocProvider.of<AccountVerificationBloc>(context);
    
    return BlocListener<RegisterCustomerBloc, RegisterCustomerState>(
      listenWhen: (previous, current) =>
          previous.registerState != current.registerState,
      listener: (context, state) {
        switch (state.registerState) {
          case RegisterCustomerStatus.ok:
            final snackBar = customSnackBar(
                content: 'Tu usuario ha sido creado! 🥳',
                duration: const Duration(seconds: 4));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            verificationBloc.add(const VerificationSendEmailEvent());
            
            // For web, navigate to verification page using named route
            Navigator.of(context).pushNamed('/verification');
            
            registerCustomerBloc.add(const RegisterCustomerClearForm());
            break;
          case RegisterCustomerStatus.error:
            final snackBar = customSnackBar(
                content: state.errorMessage ?? 'Error',
                duration: const Duration(seconds: 4));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            break;
          case RegisterCustomerStatus.initial:
            registerCustomerBloc.add(const RegisterCustomerClearState());
            break;
          case RegisterCustomerStatus.submitted:
            // Loading state - handled by button
            break;
        }
      },
      child: Scaffold(
        body: Stack(
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
                  vertical: 40,
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
                          mobile: 24,
                          tablet: 32,
                          desktop: 40,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          // Header
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () => Navigator.of(context).pop(),
                                icon: const Icon(Icons.arrow_back),
                              ),
                              IconButton(
                                onPressed: () => Navigator.of(context).pop(),
                                icon: const Icon(Icons.close),
                              ),
                            ],
                          ),
                          
                          const SizedBox(height: 20),
                          
                          // Title
                          Text(
                            'Registro de Cliente',
                            style: TextStyle(
                              fontSize: Responsive.fontSize(context, 28),
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          
                          const SizedBox(height: 8),
                          
                          Text(
                            'Completa todos los campos para crear tu cuenta',
                            style: TextStyleTheme.headline1,
                            textAlign: TextAlign.center,
                          ),
                          
                          const SizedBox(height: 40),
                          
                          // Form
                          _buildForm(context),
                          
                          const SizedBox(height: 40),
                          
                          // Submit button
                          _buildSubmitButton(context),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    );
  }

  Widget _buildForm(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Personal info section
        _buildSectionHeader('Datos Personales'),
        const SizedBox(height: 16),
        
        if (isDesktop) ...[
          // Two columns for desktop
          Row(
            children: [
              Flexible(child: RegisterCustomerNameInput()),
              const SizedBox(width: 16),
              Flexible(child: RegisterCustomerLastNameInput()),
            ],
          ),
        ] else ...[
          // Single column for mobile/tablet
          RegisterCustomerNameInput(),
          const SizedBox(height: 16),
          RegisterCustomerLastNameInput(),
        ],
        
        const SizedBox(height: 32),
        
        // Contact info section
        _buildSectionHeader('Datos de Contacto'),
        const SizedBox(height: 16),
        
        if (isDesktop) ...[
          Row(
            children: [
              Flexible(child: RegisterCustomerEmailInput()),
              const SizedBox(width: 16),
              Flexible(child: RegisterCustomerPhoneNumberInput()),
            ],
          ),
        ] else ...[
          RegisterCustomerEmailInput(),
          const SizedBox(height: 16),
          RegisterCustomerPhoneNumberInput(),
        ],
        
        const SizedBox(height: 32),
        
        // Password section
        _buildSectionHeader('Contraseña'),
        const SizedBox(height: 16),
        
        if (isDesktop) ...[
          Row(
            children: [
              Flexible(child: RegisterCustomerPasswordInput()),
              const SizedBox(width: 16),
              Flexible(child: RegisterCustomerConfirmPasswordInput()),
            ],
          ),
        ] else ...[
          RegisterCustomerPasswordInput(),
          const SizedBox(height: 16),
          RegisterCustomerConfirmPasswordInput(),
        ],
      ],
    );
  }

  Widget _buildSectionHeader(String title) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    return BlocBuilder<RegisterCustomerBloc, RegisterCustomerState>(
      builder: (context, state) {
        final isFormValid = state.form.firstName.valid &&
            state.form.lastName.valid &&
            state.form.email.valid &&
            state.form.phoneNumber.valid &&
            state.form.password.valid &&
            state.form.confirmedPassword.valid;
            
        return PrimaryButton(
          onPressed: () {
            if (isFormValid) {
              context.read<RegisterCustomerBloc>().add(
                const RegisterCustomerRegisterPressed(),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Por favor completa todos los campos correctamente', style: TextStyleTheme.headline2,),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          isLoading: state.registerState == RegisterCustomerStatus.submitted,
          isDisabled: !isFormValid,
          text: 'Crear Cuenta',
        );
      },
    );
  }
}