import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/ui/account_reactivation/widgets/pin_validator_v2.dart';
import 'package:inker_studio/features/auth/bloc/password_recovery/password_recovery_bloc.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class PasswordRecoveryPage extends StatelessWidget {
  const PasswordRecoveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordRecoveryBloc(
        userService: context.read(),
      ),
      child: const PasswordRecoveryView(),
    );
  }
}

class PasswordRecoveryView extends StatelessWidget {
  const PasswordRecoveryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: BlocBuilder<PasswordRecoveryBloc, PasswordRecoveryState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    Text(
                      'Recuperar contraseña',
                      style: TextStyleTheme.headline1,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      _getSubtitleForStatus(state.status),
                      style: TextStyleTheme.bodyText1,
                    ),
                    const SizedBox(height: 32),
                    _buildContentForStatus(context, state),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  String _getSubtitleForStatus(PasswordRecoveryStatus status) {
    switch (status) {
      case PasswordRecoveryStatus.initial:
        return 'Ingresa tu correo electrónico para recuperar tu contraseña';
      case PasswordRecoveryStatus.codeSent:
        return 'Ingresa el código que te enviamos a tu correo';
      case PasswordRecoveryStatus.verifyingCode:
        return 'Verificando código...';
      case PasswordRecoveryStatus.recoverySuccess:
        return 'Tu contraseña ha sido restablecida exitosamente';
      default:
        return 'Ingresa tu correo electrónico para recuperar tu contraseña';
    }
  }

  Widget _buildContentForStatus(
      BuildContext context, PasswordRecoveryState state) {
    switch (state.status) {
      case PasswordRecoveryStatus.initial:
        return _buildEmailForm(context, state);
      case PasswordRecoveryStatus.codeSent:
        return const PasswordRecoveryForm();
      case PasswordRecoveryStatus.recoverySuccess:
        return _buildSuccessContent(context);
      case PasswordRecoveryStatus.error:
        return _buildErrorContent(context, state);
      default:
        return _buildEmailForm(context, state);
    }
  }

  Widget _buildEmailForm(BuildContext context, PasswordRecoveryState state) {
    return Column(
      children: [
        TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyleTheme.bodyText1,
          decoration: InputDecoration(
            filled: true,
            fillColor: Theme.of(context).colorScheme.surface,
            hintText: 'Correo electrónico',
            hintStyle: TextStyle(color: Theme.of(context).hintColor),
            errorText: state.emailError,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).colorScheme.surface),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).colorScheme.surface),
            ),
          ),
          onChanged: (value) => context
              .read<PasswordRecoveryBloc>()
              .add(PasswordRecoveryEvent.updateEmail(value)),
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            onPressed: state.isLoading
                ? null
                : () => context
                    .read<PasswordRecoveryBloc>()
                    .add(const PasswordRecoveryEvent.sendCode()),
            child: state.isLoading
                ? const CircularProgressIndicator()
                : Text(
                    'Enviar código',
                    style: TextStyleTheme.button,
                  ),
          ),
        ),
      ],
    );
  }

  Widget _buildSuccessContent(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.check_circle_outline,
          size: 64,
          color: Colors.green,
        ),
        const SizedBox(height: 24),
        Text(
          'Tu contraseña ha sido restablecida exitosamente',
          textAlign: TextAlign.center,
          style: TextStyleTheme.bodyText1,
        ),
        const SizedBox(height: 24),
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(
            'Volver al inicio de sesión',
            style: TextStyleTheme.button
                .copyWith(color: Theme.of(context).colorScheme.secondary),
          ),
        ),
      ],
    );
  }

  Widget _buildErrorContent(BuildContext context, PasswordRecoveryState state) {
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
          style: TextStyleTheme.bodyText1.copyWith(color: Colors.red),
        ),
        const SizedBox(height: 24),
        TextButton(
          onPressed: () => context
              .read<PasswordRecoveryBloc>()
              .add(const PasswordRecoveryEvent.reset()),
          child: Text(
            'Intentar nuevamente',
            style: TextStyleTheme.button
                .copyWith(color: Theme.of(context).colorScheme.secondary),
          ),
        ),
      ],
    );
  }
}

class PasswordRecoveryForm extends StatelessWidget {
  const PasswordRecoveryForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Código de verificación
        PinValidatorV2(
          length: 5,
          onChanged: (value) => context
              .read<PasswordRecoveryBloc>()
              .add(PasswordRecoveryEvent.updateCode(value)),
          onCompleted: (value) => context
              .read<PasswordRecoveryBloc>()
              .add(PasswordRecoveryEvent.updateCode(value)),
        ),
        const SizedBox(height: 24),

        // Nueva contraseña
        BlocBuilder<PasswordRecoveryBloc, PasswordRecoveryState>(
          builder: (context, state) {
            return TextField(
              obscureText: true,
              style: TextStyleTheme.bodyText1,
              decoration: InputDecoration(
                filled: true,
                fillColor: Theme.of(context).colorScheme.surface,
                hintText: 'Nueva contraseña',
                hintStyle: TextStyle(color: Theme.of(context).hintColor),
                errorText: state.passwordError,
                border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Theme.of(context).colorScheme.surface),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Theme.of(context).colorScheme.surface),
                ),
              ),
              onChanged: (value) => context
                  .read<PasswordRecoveryBloc>()
                  .add(PasswordRecoveryEvent.updatePassword(value)),
            );
          },
        ),
        const SizedBox(height: 16),

        // Confirmar contraseña
        BlocBuilder<PasswordRecoveryBloc, PasswordRecoveryState>(
          builder: (context, state) {
            return TextField(
              obscureText: true,
              style: TextStyleTheme.bodyText1,
              decoration: InputDecoration(
                filled: true,
                fillColor: Theme.of(context).colorScheme.surface,
                hintText: 'Confirmar contraseña',
                hintStyle: TextStyle(color: Theme.of(context).hintColor),
                errorText: state.confirmPasswordError,
                border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Theme.of(context).colorScheme.surface),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Theme.of(context).colorScheme.surface),
                ),
              ),
              onChanged: (value) => context
                  .read<PasswordRecoveryBloc>()
                  .add(PasswordRecoveryEvent.updateConfirmPassword(value)),
            );
          },
        ),
        const SizedBox(height: 24),

        // Botón de actualizar
        SizedBox(
          width: double.infinity,
          child: BlocBuilder<PasswordRecoveryBloc, PasswordRecoveryState>(
            builder: (context, state) {
              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: state.isLoading
                    ? null
                    : () => context
                        .read<PasswordRecoveryBloc>()
                        .add(const PasswordRecoveryEvent.resetPassword()),
                child: state.isLoading
                    ? const CircularProgressIndicator()
                    : Text(
                        'Actualizar contraseña',
                        style: TextStyleTheme.button,
                      ),
              );
            },
          ),
        ),

        // Reenviar código
        const SizedBox(height: 16),
        TextButton(
          onPressed: () => context
              .read<PasswordRecoveryBloc>()
              .add(const PasswordRecoveryEvent.sendCode()),
          child: Text(
            'Reenviar código',
            style: TextStyleTheme.button.copyWith(color: Theme.of(context).colorScheme.secondary),
          ),
        ),
      ],
    );
  }
}
