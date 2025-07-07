import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/account_verification/account_verification_bloc.dart';
import 'package:inker_studio/features/login/ui/login/widgets/login_background.dart';
import 'package:inker_studio/features/register/bloc/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/features/register/ui/register/artist/inputs/register_artist_address_extra_input.dart';
import 'package:inker_studio/features/register/ui/register/artist/inputs/register_artist_address_input.dart';
import 'package:inker_studio/features/register/ui/register/artist/inputs/register_artist_address_type_input.dart';
import 'package:inker_studio/features/register/ui/register/artist/inputs/register_artist_confirm_password_input.dart';
import 'package:inker_studio/features/register/ui/register/artist/inputs/register_artist_email_input.dart';
import 'package:inker_studio/features/register/ui/register/artist/inputs/register_artist_last_name_input.dart';
import 'package:inker_studio/features/register/ui/register/artist/inputs/register_artist_name_input.dart';
import 'package:inker_studio/features/register/ui/register/artist/inputs/register_artist_password_input.dart';
import 'package:inker_studio/features/register/ui/register/artist/inputs/register_artist_phone_number_input.dart';
import 'package:inker_studio/features/register/ui/register/artist/inputs/register_artist_username_input.dart';
import 'package:inker_studio/ui/shared/widgets/buttons.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';
import 'package:inker_studio/utils/snackbar/custom_snackbar.dart';

class RegisterArtistSimplePage extends StatelessWidget {
  const RegisterArtistSimplePage({super.key});

  static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => const RegisterArtistSimplePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final registerArtistBloc = BlocProvider.of<RegisterArtistBloc>(context);
    final verificationBloc = BlocProvider.of<AccountVerificationBloc>(context);
    
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
            verificationBloc.add(const VerificationSendEmailEvent());
            
            // For web, navigate to verification page using named route
            Navigator.of(context).pushNamed('/verification');
            
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
                    vertical: 20,
                  ),
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 700),
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
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            // Header
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  icon: const Icon(Icons.arrow_back, color: Colors.white,),
                                ),
                                IconButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  icon: const Icon(Icons.close, color: Colors.white,),
                                ),
                              ],
                            ),
                            
                            const SizedBox(height: 10),
                            
                            // Title
                            Text(
                              'Registro de Artista',
                              style: TextStyle(
                                fontSize: Responsive.fontSize(context, 28),
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            
                            const SizedBox(height: 6),
                            
                            Text(
                              'Completa todos los campos para crear tu cuenta de artista',
                              style: TextStyleTheme.headline1,
                              textAlign: TextAlign.center,
                            ),
                            
                            const SizedBox(height: 24),
                            
                            // Form
                            _buildForm(context),
                            
                            const SizedBox(height: 24),
                            
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
        const SizedBox(height: 12),
        
        if (isDesktop) ...[
          Row(
            children: [
              Flexible(child: RegisterArtistNameInput()),
              const SizedBox(width: 16),
              Flexible(child: RegisterArtistLastNameInput()),
            ],
          ),
          const SizedBox(height: 16),
          RegisterArtistUsernameInput(),
        ] else ...[
          RegisterArtistNameInput(),
          const SizedBox(height: 16),
          RegisterArtistLastNameInput(),
          const SizedBox(height: 16),
          RegisterArtistUsernameInput(),
        ],
        
        const SizedBox(height: 20),
        
        // Contact info section
        _buildSectionHeader('Datos de Contacto'),
        const SizedBox(height: 12),
        
        if (isDesktop) ...[
          Row(
            children: [
              Flexible(child: RegisterArtistEmailInput()),
              const SizedBox(width: 16),
              Flexible(child: RegisterArtistPhoneNumberInput()),
            ],
          ),
        ] else ...[
          RegisterArtistEmailInput(),
          const SizedBox(height: 16),
          RegisterArtistPhoneNumberInput(),
        ],
        
        const SizedBox(height: 20),
        
        // Password section
        _buildSectionHeader('Contraseña'),
        const SizedBox(height: 12),
        
        if (isDesktop) ...[
          Row(
            children: [
              Flexible(child: RegisterArtistPasswordInput()),
              const SizedBox(width: 16),
              Flexible(child: RegisterArtistConfirmPasswordInput()),
            ],
          ),
        ] else ...[
          RegisterArtistPasswordInput(),
          const SizedBox(height: 16),
          RegisterArtistConfirmPasswordInput(),
        ],
        
        const SizedBox(height: 20),
        
        // Address section
        _buildSectionHeader('Dirección del Estudio'),
        const SizedBox(height: 12),
        
        const RegisterArtistAddressInput(),
        const SizedBox(height: 16),
        const RegisterArtistAddressTypeInput(),
        
        // Conditional extra address field
        BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
          builder: (context, state) {
            // Show extra field if needed (simplified logic)
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 16),
                RegisterArtistAddressExtraInput(),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _buildSectionHeader(String title) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyleTheme.headline2,
      ),
    );
  }

  Widget _buildSubmitButton(BuildContext context) {
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      builder: (context, state) {
        final isFormValid = state.form.firstName.valid &&
            state.form.lastName.valid &&
            state.form.username.valid &&
            state.form.email.valid &&
            state.form.phoneNumber.valid &&
            state.form.password.valid &&
            state.form.confirmedPassword.valid &&
            state.form.location.valid;
            
        return PrimaryButton(
          onPressed: () {
            if (isFormValid) {
              context.read<RegisterArtistBloc>().add(
                const RegisterArtistRegisterPressed(),
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
          isLoading: state.registerState == RegisterArtistStatus.submitted,
          isDisabled: !isFormValid,
          text: 'Crear Cuenta de Artista',
        );
      },
    );
  }
}