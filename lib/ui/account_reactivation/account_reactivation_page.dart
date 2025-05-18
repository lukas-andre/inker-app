import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/ui/account_reactivation/bloc/account_reactivation_bloc.dart';
import 'package:inker_studio/ui/account_reactivation/widgets/pin_validator_v2.dart';
import 'package:inker_studio/ui/login/widgets/login_background.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class AccountReactivationPage extends StatelessWidget {
  const AccountReactivationPage({super.key});

  static Route route() {
    return MaterialPageRoute<void>(
        builder: (_) => const AccountReactivationPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AccountReactivationBloc(
        userService: context.read(),
      ),
      child: const AccountReactivationView(),
    );
  }
}

class AccountReactivationView extends StatelessWidget {
  const AccountReactivationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF141D3C), // Theme.of(context).colorScheme.primary
      body: Stack(
        children: [
          const LoginBackground(),
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: BlocBuilder<AccountReactivationBloc,
                  AccountReactivationState>(
                builder: (context, state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildBackButton(context),
                      const SizedBox(height: 32),
                      Text(
                        _getTitleForStatus(state.status),
                        style: TextStyleTheme.headline1.copyWith(
                          color: const Color(0xFFF2F2F2),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        _getSubtitleForStatus(state.status),
                        style: TextStyleTheme.subtitle1.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 40),
                      _buildMainContent(context, state),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1F223C), // explorerSecondaryColor
        borderRadius: BorderRadius.circular(12),
      ),
      child: IconButton(
        icon: const Icon(Icons.arrow_back, color: Color(0xFFF2F2F2)),
        onPressed: () => Navigator.of(context).pop(),
      ),
    );
  }

  String _getTitleForStatus(ReactivationStatus status) {
    switch (status) {
      case ReactivationStatus.codeSent:
        return 'Ingresa el código';
      case ReactivationStatus.verifyingCode:
        return 'Verificando...';
      case ReactivationStatus.reactivationSuccess:
        return '¡Cuenta reactivada!';
      default:
        return 'Reactivar cuenta';
    }
  }

  String _getSubtitleForStatus(ReactivationStatus status) {
    switch (status) {
      case ReactivationStatus.codeSent:
        return 'Ingresa el código que te enviamos';
      case ReactivationStatus.verifyingCode:
        return 'Estamos verificando tu código...';
      case ReactivationStatus.reactivationSuccess:
        return 'Tu cuenta ha sido reactivada exitosamente';
      default:
        return 'Selecciona cómo quieres recibir tu código de verificación';
    }
  }

  Widget _buildMainContent(
      BuildContext context, AccountReactivationState state) {
    switch (state.status) {
      case ReactivationStatus.initial:
      case ReactivationStatus.methodSelected:
        return Column(
          children: [
            const VerificationMethodSelector(),
            if (state.selectedMethod != VerificationMethod.none) ...[
              const SizedBox(height: 24),
              _buildIdentifierInput(context, state),
              const SizedBox(height: 32),
              _buildSendCodeButton(context, state),
            ],
          ],
        );
      case ReactivationStatus.sendingCode:
      case ReactivationStatus.verifyingCode:
        return const Center(
          child: CircularProgressIndicator(
            color: Color(0xff7450FF), // Theme.of(context).colorScheme.secondary
          ),
        );
      case ReactivationStatus.codeSent:
        return const VerificationCodeSection();
      case ReactivationStatus.reactivationSuccess:
        return _buildSuccessContent();
      case ReactivationStatus.reactivationFailed:
      case ReactivationStatus.error:
        return _buildErrorContent(context, state);
    }
  }

  Widget _buildSendCodeButton(
      BuildContext context, AccountReactivationState state) {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xff7450FF), Color(0xff9747FF)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff7450FF).withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: state.isLoading
            ? null
            : () => context
                .read<AccountReactivationBloc>()
                .add(const AccountReactivationEvent.sendCode()),
        child: Text(
          'Enviar código por ${state.selectedMethod.name.toUpperCase()}',
          style: TextStyleTheme.button.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _buildIdentifierInput(
      BuildContext context, AccountReactivationState state) {
    final bool isEmail = state.selectedMethod == VerificationMethod.email;

    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1F223C),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFF686D90).withOpacity(0.3),
          width: 2,
        ),
      ),
      child: TextFormField(
        style: TextStyleTheme.bodyText1.copyWith(
          color: const Color(0xFFF2F2F2),
        ),
        keyboardType:
            isEmail ? TextInputType.emailAddress : TextInputType.phone,
        decoration: InputDecoration(
          hintText: isEmail ? 'ejemplo@correo.com' : '(123) 456-7890',
          hintStyle: TextStyleTheme.bodyText1.copyWith(
            color: const Color(0xFF686D90).withOpacity(0.5),
          ),
          prefixIcon: Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xff7450FF).withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              isEmail ? Icons.email : Icons.phone,
              color: const Color(0xff7450FF),
              size: 20,
            ),
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          errorStyle: TextStyleTheme.caption.copyWith(
            color: Colors.red,
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return isEmail
                ? 'Ingresa tu correo electrónico'
                : 'Ingresa tu número de teléfono';
          }
          if (isEmail) {
            if (!value.contains('@') || !value.contains('.')) {
              return 'Ingresa un correo electrónico válido';
            }
          } else {
            if (value.length < 10) {
              return 'Ingresa un número de teléfono válido';
            }
          }
          return null;
        },
        onChanged: (value) => context
            .read<AccountReactivationBloc>()
            .add(AccountReactivationEvent.updateIdentifier(value)),
      ),
    );
  }

  Widget _buildSuccessContent() {
    return  Column(
      children: [
        const Icon(
          Icons.check_circle_outline,
          size: 64,
          color: Color(0xff7450FF),
        ),
        const SizedBox(height: 16),
        Text(
          'Tu cuenta ha sido reactivada exitosamente',
          textAlign: TextAlign.center,
          style: TextStyleTheme.bodyText1.copyWith(
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildErrorContent(
      BuildContext context, AccountReactivationState state) {
    return Column(
      children: [
        const Icon(
          Icons.error_outline,
          size: 64,
          color: Colors.red,
        ),
        const SizedBox(height: 16),
        Text(
          state.errorMessage ?? 'Ha ocurrido un error',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            fontFamily: 'Poppins',
            color: Colors.red,
          ),
        ),
        const SizedBox(height: 24),
        TextButton(
          onPressed: () => context
              .read<AccountReactivationBloc>()
              .add(const AccountReactivationEvent.reset()),
          child: const Text('Intentar nuevamente'),
        ),
      ],
    );
  }
}

class VerificationMethodSelector extends StatelessWidget {
  const VerificationMethodSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountReactivationBloc, AccountReactivationState>(
      buildWhen: (previous, current) =>
          previous.selectedMethod != current.selectedMethod,
      builder: (context, state) {
        return Column(
          children: [
            _buildMethodCard(
              context: context,
              method: VerificationMethod.sms,
              title: 'SMS',
              subtitle: 'Enviar código por mensaje de texto',
              icon: Icons.message,
              isSelected: state.selectedMethod == VerificationMethod.sms,
            ),
            const SizedBox(height: 16),
            _buildMethodCard(
              context: context,
              method: VerificationMethod.email,
              title: 'Email',
              subtitle: 'Enviar código por correo electrónico',
              icon: Icons.email,
              isSelected: state.selectedMethod == VerificationMethod.email,
            ),
          ],
        );
      },
    );
  }

  Widget _buildMethodCard({
    required BuildContext context,
    required VerificationMethod method,
    required String title,
    required String subtitle,
    required IconData icon,
    required bool isSelected,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF1F223C) : Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isSelected ? const Color(0xff7450FF) : const Color(0xFF686D90),
          width: 2,
        ),
        boxShadow: isSelected
            ? [
                BoxShadow(
                  color: const Color(0xff7450FF).withOpacity(0.1),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ]
            : null,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => context
              .read<AccountReactivationBloc>()
              .add(AccountReactivationEvent.selectMethod(method)),
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? const Color(0xff7450FF).withOpacity(0.1)
                        : const Color(0xFF686D90).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    icon,
                    size: 24,
                    color: isSelected
                        ? const Color(0xff7450FF)
                        : const Color(0xFF686D90),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyleTheme.headline3.copyWith(
                          color: isSelected
                              ? const Color(0xFFF2F2F2)
                              : const Color(0xFF686D90),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: TextStyleTheme.bodyText2.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                if (isSelected)
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: const Color(0xff7450FF).withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.check_circle,
                      color: Color(0xff7450FF),
                      size: 20,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class VerificationCodeSection extends StatefulWidget {
  const VerificationCodeSection({super.key});

  @override
  State<VerificationCodeSection> createState() => _VerificationCodeSectionState();
}

class _VerificationCodeSectionState extends State<VerificationCodeSection> {
  final _pinController = TextEditingController();
  
  @override
  void dispose() {
    _pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PinValidatorV2(
          controller: _pinController,
          onCompleted: (pin) {
            // Handle pin completion
            print('Pin completed: $pin');
          },
          onChanged: (value) {
            // Handle pin changes
            print('Pin changed: $value');
          },
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff7450FF),
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {
              // Now you can easily get the code from the controller
              final code = _pinController.text;
              context
                  .read<AccountReactivationBloc>()
                  .add(AccountReactivationEvent.verifyCode(code));
            },
            child: const Text(
              'Verificar código',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Poppins',
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        TextButton(
          onPressed: () => context
              .read<AccountReactivationBloc>()
              .add(const AccountReactivationEvent.sendCode()),
          child: const Text(
            'Reenviar código',
            style: TextStyle(
              color: Color(0xff7450FF),
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ],
    );
  }
}