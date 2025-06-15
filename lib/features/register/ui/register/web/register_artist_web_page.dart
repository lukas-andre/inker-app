import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/features/login/ui/login/widgets/login_background.dart'
    show LoginBackground;
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
import 'package:inker_studio/features/register/ui/register/web/register_web_stepper.dart';
import 'package:inker_studio/features/register/ui/register/widgets/close_register_button.dart';
import 'package:inker_studio/features/register/ui/register/widgets/register_custom_subtitle.dart';
import 'package:inker_studio/features/register/ui/register/widgets/register_custom_title.dart';
import 'package:inker_studio/ui/shared/widgets/buttons.dart';
import 'package:inker_studio/utils/layout/row_spacer.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';

class RegisterArtistWebPage extends StatefulWidget {
  const RegisterArtistWebPage({super.key});

  static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => const RegisterArtistWebPage(),
    );
  }

  @override
  State<RegisterArtistWebPage> createState() => _RegisterArtistWebPageState();
}

class _RegisterArtistWebPageState extends State<RegisterArtistWebPage> {
  int currentStep = 0;
  
  final List<String> stepTitles = [
    'Datos personales',
    'Contacto',
    'Contraseña',
    'Dirección',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const LoginBackground(),
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Stepper
                    RegisterWebStepper(
                      currentStep: currentStep,
                      totalSteps: 4,
                      stepTitles: stepTitles,
                    ),
                    
                    // Content
                    Container(
                      width: 600,
                      padding: EdgeInsets.all(
                        Responsive.value(
                          context,
                          mobile: 20,
                          tablet: 32,
                          desktop: 40,
                        ),
                      ),
                      child: Column(
                        children: [
                          // Close button
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CloseRegisterButton(
                                index: currentStep,
                              ),
                            ],
                          ),
                          
                          const RowSpacer(space: 20),
                          
                          // Step content
                          _buildStepContent(context),
                          
                          const RowSpacer(space: 40),
                          
                          // Action buttons
                          _buildActionButtons(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStepContent(BuildContext context) {
    switch (currentStep) {
      case 0:
        return _buildPersonalInfoStep();
      case 1:
        return _buildContactStep();
      case 2:
        return _buildPasswordStep();
      case 3:
        return _buildAddressStep();
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _buildPersonalInfoStep() {
    return Column(
      children: [
        const RegisterCustomTitle(
          text: 'Completa tus datos personales ℹ️',
        ),
        const RowSpacer(space: 16),
        const RegisterCustomSubTitle(
          text: 'Estos datos los utilizaremos para crear tu cuenta',
        ),
        const RowSpacer(space: 40),
        
        // Form fields in a responsive grid
        _buildFormGrid([
          RegisterArtistNameInput(),
          RegisterArtistLastNameInput(),
        ]),
        const RowSpacer(space: 20),
        RegisterArtistUsernameInput(),
      ],
    );
  }

  Widget _buildContactStep() {
    return Column(
      children: [
        const RegisterCustomTitle(
          text: 'Completa tus datos de contacto 📞',
        ),
        const RowSpacer(space: 16),
        const RegisterCustomSubTitle(
          text: 'Te enviaremos un código de verificación para validar tu cuenta',
        ),
        const RowSpacer(space: 40),
        
        // Form fields in a responsive grid
        _buildFormGrid([
          RegisterArtistEmailInput(),
          RegisterArtistPhoneNumberInput(),
        ]),
      ],
    );
  }

  Widget _buildPasswordStep() {
    return Column(
      children: [
        const RegisterCustomTitle(
          text: 'Crea tu contraseña para poder acceder a Inker 🔐',
        ),
        const RowSpacer(space: 16),
        const RegisterCustomSubTitle(
          text: 'Tu contraseña debe tener al menos 8 caracteres',
        ),
        const RowSpacer(space: 40),
        
        // Form fields in a responsive grid
        _buildFormGrid([
          RegisterArtistPasswordInput(),
          RegisterArtistConfirmPasswordInput(),
        ]),
      ],
    );
  }

  Widget _buildAddressStep() {
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      builder: (context, state) {
        return Column(
          children: [
            const RegisterCustomTitle(
              text: 'Ingresa la dirección de tu estudio o local',
            ),
            const RowSpacer(space: 16),
            const RegisterCustomSubTitle(
              text: 'Esta dirección será visible para tus clientes',
            ),
            const RowSpacer(space: 40),
            
            // Address input
            const RegisterArtistAddressInput(),
            const RowSpacer(space: 20),
            
            // Address type selector
            const RegisterArtistAddressTypeInput(),
            
            // Extra field for apartment
            const RowSpacer(space: 20),
            RegisterArtistAddressExtraInput(),
          ],
        );
      },
    );
  }

  Widget _buildFormGrid(List<Widget> fields) {
    final isDesktop = Responsive.isDesktop(context);
    
    if (isDesktop && fields.length > 1) {
      // Two columns layout for desktop
      return Column(
        children: [
          for (int i = 0; i < fields.length; i += 2)
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  Expanded(child: fields[i]),
                  if (i + 1 < fields.length) ...[
                    const SizedBox(width: 16),
                    Expanded(child: fields[i + 1]),
                  ] else
                    const Expanded(child: SizedBox.shrink()),
                ],
              ),
            ),
        ],
      );
    } else {
      // Single column layout
      return Column(
        children: fields
            .map((field) => Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: field,
                ))
            .toList(),
      );
    }
  }

  Widget _buildActionButtons(BuildContext context) {
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      builder: (context, state) {
        final canProceed = _canProceedToNextStep(state);
        
        return Row(
          children: [
            if (currentStep > 0) ...[
              Expanded(
                child: SecondaryButton(
                  onPressed: () => _previousStep(),
                  text: 'Anterior',
                ),
              ),
              const SizedBox(width: 16),
            ],
            Expanded(
              child: PrimaryButton(
                onPressed: () => _nextStep(context),
                isLoading: state.registerState == RegisterArtistStatus.submitted,
                isDisabled: !canProceed,
                text: currentStep == 3 ? 'Registrarme' : 'Siguiente',
              ),
            ),
          ],
        );
      },
    );
  }

  bool _canProceedToNextStep(RegisterArtistState state) {
    switch (currentStep) {
      case 0:
        return state.form.firstName.valid && 
               state.form.lastName.valid && 
               state.form.username.valid;
      case 1:
        return state.form.email.valid && 
               state.form.phoneNumber.valid;
      case 2:
        return state.form.password.valid && 
               state.form.confirmedPassword.valid;
      case 3:
        return state.form.location.valid;
      default:
        return false;
    }
  }

  void _nextStep(BuildContext context) {
    final state = context.read<RegisterArtistBloc>().state;
    final canProceed = _canProceedToNextStep(state);
    
    if (!canProceed) {
      // Show validation error
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Por favor completa todos los campos correctamente'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }
    
    if (currentStep < 3) {
      setState(() {
        currentStep++;
      });
    } else {
      // Submit registration
      context.read<RegisterArtistBloc>().add(
            const RegisterArtistRegisterPressed(),
          );
    }
  }

  void _previousStep() {
    if (currentStep > 0) {
      setState(() {
        currentStep--;
      });
    }
  }
}