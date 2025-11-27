import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/notifications/notification_types.dart';
import 'package:inker_studio/domain/services/user/user_service.dart';

part 'account_reactivation_bloc.freezed.dart';
part 'account_reactivation_state.dart';
part 'account_reactivation_event.dart';

class AccountReactivationBloc
    extends Bloc<AccountReactivationEvent, AccountReactivationState> {
  final UserService _userService;

  AccountReactivationBloc({
    required UserService userService,
  })  : _userService = userService,
        super(const AccountReactivationState()) {
    on<AccountReactivationEvent>((event, emit) async {
      await event.when(
        selectMethod: (method) => _onSelectVerificationMethod(method, emit),
        updateIdentifier: (identifier) => _onUpdateIdentifier(identifier, emit),
        sendCode: () => _onSendVerificationCode(emit),
        verifyCode: (code) => _onVerifyCode(code, emit),
        reset: () => _onReset(emit),
      );
    });
  }

  Future<void> _onSelectVerificationMethod(
    VerificationMethod method,
    Emitter<AccountReactivationState> emit,
  ) async {
    emit(state.copyWith(
      selectedMethod: method,
      status: ReactivationStatus.methodSelected,
      errorMessage: null,
      identifier: '', // Reset identifier when changing method
      identifierError: null,
    ));
  }

  Future<void> _onUpdateIdentifier(
    String identifier,
    Emitter<AccountReactivationState> emit,
  ) async {
    String? error;

    if (identifier.isEmpty) {
      error = 'Este campo es requerido';
    } else {
      switch (state.selectedMethod) {
        case VerificationMethod.email:
          final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
          if (!emailRegex.hasMatch(identifier)) {
            error = 'Ingresa un correo electrónico válido';
          }
          break;
        case VerificationMethod.sms:
          final phoneRegex = RegExp(r'^\+?56?9\d{8}$');

          final cleanNumber = identifier.replaceAll(RegExp(r'[^0-9+]'), '');
          if (!phoneRegex.hasMatch(cleanNumber)) {
            error = 'Ingresa un número de teléfono válido';
          }
          break;
        case VerificationMethod.none:
          error = 'Selecciona un método de verificación';
          break;
      }
    }

    emit(state.copyWith(
      identifier: identifier,
      identifierError: error,
      errorMessage: null,
    ));
  }

  Future<void> _onSendVerificationCode(
    Emitter<AccountReactivationState> emit,
  ) async {
    if (!state.isValidIdentifier) {
      emit(state.copyWith(
        errorMessage: 'Por favor, verifica los datos ingresados',
        status: ReactivationStatus.error,
      ));
      return;
    }

    try {
      emit(state.copyWith(
        isLoading: true,
        status: ReactivationStatus.sendingCode,
        errorMessage: null,
      ));

      final notificationType = state.selectedMethod == VerificationMethod.email
          ? NotificationType.email
          : NotificationType.phone;

      final response = await _userService.sendAccountVerificationCodeByEmailOrPhone(
        email: state.selectedMethod == VerificationMethod.email
            ? state.identifier
            : null,
        phoneNumber: state.selectedMethod == VerificationMethod.sms
            ? state.identifier
            : null,
        notificationType: notificationType,
      );

      emit(state.copyWith(
        isLoading: false,
        status: ReactivationStatus.codeSent,
        validatedUserId: response.data.userId.toString(),
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        status: ReactivationStatus.error,
        errorMessage: 'Error al enviar el código: ${e.toString()}',
      ));
    }
  }

  Future<void> _onVerifyCode(
    String code,
    Emitter<AccountReactivationState> emit,
  ) async {
    if (!state.isValidIdentifier) {
      emit(state.copyWith(
        errorMessage: 'Identificador no válido',
        status: ReactivationStatus.error,
      ));
      return;
    }

    try {
      emit(state.copyWith(
        isLoading: true,
        status: ReactivationStatus.verifyingCode,
        errorMessage: null,
      ));

      await _userService.verifyAccountVerificationCode(
        userId: state.validatedUserId!,
        code: code,
        notificationType: state.selectedMethod == VerificationMethod.email
            ? NotificationType.email
            : NotificationType.phone,
      );

      emit(state.copyWith(
        isLoading: false,
        status: ReactivationStatus.reactivationSuccess,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        status: ReactivationStatus.error,
        errorMessage: 'Error al verificar el código: ${e.toString()}',
      ));
    }
  }

  Future<void> _onReset(Emitter<AccountReactivationState> emit) async {
    emit(const AccountReactivationState());
  }
}
