import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:inker_studio/domain/errors/user/activating_user_exception.dart';
import 'package:inker_studio/domain/errors/user/user_already_verified_exception.dart';
import 'package:inker_studio/domain/models/notifications/notification_types.dart';
import 'package:inker_studio/domain/services/local_storage/local_storage.dart';
import 'package:inker_studio/domain/services/user/user_service.dart';
import 'package:inker_studio/utils/dev.dart';

part 'account_verification_event.dart';
part 'account_verification_state.dart';

class AccountVerificationBloc
    extends Bloc<AccountVerificationEvent, AccountVerificationState> {
  final UserService _userService;
  final LocalStorage _localStorage;

  AccountVerificationBloc(
      {required UserService userService, required LocalStorage localStorage})
      : _userService = userService,
        _localStorage = localStorage,
        super(const AccountVerificationState()) {
    on<VerificationClearEvent>(
        ((event, emit) => _mapVerificationClearEventToState(event, emit)));
    on<VerificationPinCompletedEvent>(((event, emit) =>
        _mapVerificationPinCompletedEventToState(event, emit)));
    on<VerificationPinChangedEvent>(
        ((event, emit) => _mapVerificationPinChangedEventToState(event, emit)));
    on<VerificationSendSMSEvent>(
        ((event, emit) => _mapVerificationSendSMSEventToState(event, emit)));
    on<VerificationSendEmailEvent>(
        ((event, emit) => _mapVerificationSendEmailEventToState(event, emit)));
    on<VerificationResetEvent>(
        ((event, emit) => _mapVerificationResetEventToState(event, emit)));
  }

  _mapVerificationClearEventToState(
      VerificationClearEvent event, Emitter<AccountVerificationState> emit) {
    emit(state.copyWith(
        verificationStatusMessage: null,
        accountVerificationStatus: AccountVerificationStatus.ready,
        accountVerificationType: AccountVerificationType.sms));
  }

  Future<void> _mapVerificationPinCompletedEventToState(
      VerificationPinCompletedEvent event,
      Emitter<AccountVerificationState> emit) async {
    final createdUser = await _localStorage.getCreatedUserInfo();

    if (createdUser == null) {
      emit(state.copyWith(
          verificationStatusMessage: 'No user was created. Please try again.',
          accountVerificationStatus: AccountVerificationStatus.failed));
      return;
    }
    try {
      emit(state.copyWith(
        isVerifying: true,
      ));
      final verificationResult =
          await _userService.verifyAccountVerificationCode(
              userId: createdUser.userId.toString(),
              code: event.pin,
              notificationType: NotificationType.phone);
      emit(state.copyWith(
        isVerifying: false,
      ));
      if (!verificationResult) {
        emit(state.copyWith(
            verificationStatusMessage:
                'The pin you entered is incorrect. Please try again.',
            accountVerificationStatus: AccountVerificationStatus.failed));
        return;
      }

      emit(state.copyWith(
          verificationStatusMessage: 'Account activated successfully.',
          accountVerificationStatus: AccountVerificationStatus.activated));
    } on UserAlreadyVerified {
      emit(state.copyWith(
          verificationStatusMessage: 'El usuario ya ha sido verificado.',
          accountVerificationStatus:
              AccountVerificationStatus.userAlreadyVerified));
      return;
    } on ActivatingUserException {
      emit(state.copyWith(
          verificationStatusMessage: 'Hubo un error al activar el usuario.',
          accountVerificationStatus: AccountVerificationStatus.failed));
      return;
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      emit(state.copyWith(
          verificationStatusMessage: 'Error al verificar el usuario',
          accountVerificationStatus: AccountVerificationStatus.failed));
    }
    emit(state.copyWith(
      isVerifying: false,
    ));
  }

  _mapVerificationPinChangedEventToState(VerificationPinChangedEvent event,
      Emitter<AccountVerificationState> emit) {
    emit(state.copyWith(pin: event.code));
  }

  _mapVerificationSendSMSEventToState(VerificationSendSMSEvent event,
      Emitter<AccountVerificationState> emit) async {
    if (state.maxTriesReached) {
      emit(state.copyWith(
          verificationStatusMessage: 'Max tries reached',
          accountVerificationStatus: AccountVerificationStatus.failed));
      return;
    }
    final createdUser = await _localStorage.getCreatedUserInfo();

    if (createdUser == null) {
      emit(state.copyWith(
          verificationStatusMessage: 'Error getting user info',
          accountVerificationStatus: AccountVerificationStatus.failed));
      return;
    }

    emit(state.copyWith(
        accountVerificationStatus: AccountVerificationStatus.sentSMS));
    try {
      final notificationResult = await _userService.sendAccountVerificationCode(
          createdUser.userId.toString(),
          createdUser.phoneNumber,
          NotificationType.phone);

      if (!notificationResult) {
        emit(state.copyWith(
            verificationStatusMessage: 'Error sending SMS',
            accountVerificationStatus:
                AccountVerificationStatus.sentSMSFailed));
        return;
      }

      emit(state.copyWith(
          verificationStatusMessage: 'SMS sent',
          tries: state.tries + 1,
          accountVerificationStatus: AccountVerificationStatus.sendedSMS));
    } on UserAlreadyVerified {
      emit(state.copyWith(
          verificationStatusMessage: 'User already verified',
          accountVerificationStatus:
              AccountVerificationStatus.userAlreadyVerified));
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      emit(state.copyWith(
          verificationStatusMessage: 'Error sending SMS',
          accountVerificationStatus: AccountVerificationStatus.failed));
    }
  }

  _mapVerificationSendEmailEventToState(VerificationSendEmailEvent event,
      Emitter<AccountVerificationState> emit) {
    throw UnimplementedError();
  }

  _mapVerificationResetEventToState(
      VerificationResetEvent event, Emitter<AccountVerificationState> emit) {
    emit(const AccountVerificationState());
  }
}
