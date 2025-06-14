import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/notifications/notification_types.dart';
import 'package:inker_studio/domain/services/user/user_service.dart';

part 'password_recovery_bloc.freezed.dart';
part 'password_recovery_state.dart';
part 'password_recovery_event.dart';

class PasswordRecoveryBloc
    extends Bloc<PasswordRecoveryEvent, PasswordRecoveryState> {
  final UserService _userService;

  PasswordRecoveryBloc({
    required UserService userService,
  }) : _userService = userService,
        super(const PasswordRecoveryState()) {
    on<PasswordRecoveryEvent>((event, emit) async {
      await event.when(
        updateEmail: (email) => _onUpdateEmail(email, emit),
        sendCode: () => _onSendCode(emit),
        updateCode: (code) => _onUpdateCode(code, emit),
        updatePassword: (password) => _onUpdatePassword(password, emit),
        updateConfirmPassword: (password) => _onUpdateConfirmPassword(password, emit),
        resetPassword: () => _onResetPassword(emit),
        reset: () => _onReset(emit),
      );
    });
  }

  Future<void> _onUpdateEmail(
    String email,
    Emitter<PasswordRecoveryState> emit,
  ) async {
    String? error;
    if (email.isEmpty) {
      error = 'Este campo es requerido';
    } else {
      final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
      if (!emailRegex.hasMatch(email)) {
        error = 'Ingresa un correo electrónico válido';
      }
    }
    emit(state.copyWith(
      email: email,
      emailError: error,
      errorMessage: null,
    ));
  }

  Future<void> _onSendCode(Emitter<PasswordRecoveryState> emit) async {
    if (!state.isValidEmail) {
      emit(state.copyWith(
        errorMessage: 'Por favor, verifica el correo ingresado',
        status: PasswordRecoveryStatus.error,
      ));
      return;
    }

    try {
      emit(state.copyWith(
        isLoading: true,
        status: PasswordRecoveryStatus.sendingCode,
        errorMessage: null,
      ));

      await _userService.sendPasswordRecoveryCode(
        email: state.email,
        notificationType: NotificationType.email,
      );

      emit(state.copyWith(
        isLoading: false,
        status: PasswordRecoveryStatus.codeSent,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        status: PasswordRecoveryStatus.error,
        errorMessage: 'Error al enviar el código: ${e.toString()}',
      ));
    }
  }

  Future<void> _onUpdateCode(
    String code,
    Emitter<PasswordRecoveryState> emit,
  ) async {
    emit(state.copyWith(
      code: code,
      codeError: code.length < 5 ? 'Código incompleto' : null,
    ));
  }

  Future<void> _onUpdatePassword(
    String password,
    Emitter<PasswordRecoveryState> emit,
  ) async {
    String? error;
    if (password.isEmpty) {
      error = 'Este campo es requerido';
    } else if (password.length < 8) {
      error = 'La contraseña debe tener al menos 8 caracteres';
    }

    emit(state.copyWith(
      password: password,
      passwordError: error,
      confirmPasswordError: state.confirmPassword.isNotEmpty 
          ? (password != state.confirmPassword ? 'Las contraseñas no coinciden' : null)
          : null,
    ));
  }

  Future<void> _onUpdateConfirmPassword(
    String password,
    Emitter<PasswordRecoveryState> emit,
  ) async {
    emit(state.copyWith(
      confirmPassword: password,
      confirmPasswordError: password != state.password 
          ? 'Las contraseñas no coinciden' 
          : null,
    ));
  }

  Future<void> _onResetPassword(Emitter<PasswordRecoveryState> emit) async {
    if (!state.isValidCode || !state.isValidPasswords) {
      emit(state.copyWith(
        errorMessage: 'Por favor, verifica los datos ingresados',
        status: PasswordRecoveryStatus.error,
      ));
      return;
    }

    try {
      emit(state.copyWith(
        isLoading: true,
        errorMessage: null,
      ));

      await _userService.resetPassword(
        state.code,
        state.password,
        state.confirmPassword,
        state.email,
      );

      emit(state.copyWith(
        isLoading: false,
        status: PasswordRecoveryStatus.recoverySuccess,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        status: PasswordRecoveryStatus.error,
        errorMessage: 'Error al restablecer la contraseña: ${e.toString()}',
      ));
    }
  }

  Future<void> _onReset(Emitter<PasswordRecoveryState> emit) async {
    emit(const PasswordRecoveryState());
  }
}