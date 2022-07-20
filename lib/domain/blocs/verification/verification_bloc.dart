import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:inker_studio/domain/models/notifications/notification_types.dart';
import 'package:inker_studio/domain/models/user/registered_user_info.dart';
import 'package:inker_studio/domain/models/user/user_type.dart';
import 'package:inker_studio/domain/services/local_storage/local_storage.dart';
import 'package:inker_studio/domain/services/user/user_service.dart';

part 'verification_event.dart';
part 'verification_state.dart';

class VerificationBloc extends Bloc<VerificationEvent, VerificationState> {
  VerificationBloc(
      {required UserService userService, required LocalStorage localStorage})
      : _userService = userService,
        _localStorage = localStorage,
        super(const VerificationState()) {
    on<VerificationClearEvent>(
        ((event, emit) => _mapVerificationClearEventToState(event, emit)));
    on<VerificationSetContactInfoEvent>(((event, emit) =>
        _mapVerificationSetContactInfoEventToState(event, emit)));
    on<VerificationPinCompletedEvent>(((event, emit) =>
        _mapVerificationPinCompletedEventToState(event, emit)));
    on<VerificationPinChangedEvent>(
        ((event, emit) => _mapVerificationPinChangedEventToState(event, emit)));
    on<VerificationButtonPressedEvent>(((event, emit) =>
        _mapVerificationButtonPressedEventToState(event, emit)));
    on<VerificationSendSMSEvent>(
        ((event, emit) => _mapVerificationSendSMSEventToState(event, emit)));
    on<VerificationSendEmailEvent>(
        ((event, emit) => _mapVerificationSendEmailEventToState(event, emit)));
  }

  final UserService _userService;
  final LocalStorage _localStorage;
  _mapVerificationClearEventToState(
      VerificationClearEvent event, Emitter<VerificationState> emit) {
    emit(state.copyWith(
        verificationStatusMessage: null,
        accountVerificationStatus: AccountVerificationStatus.ready,
        accountVerificationType: AccountVerificationType.sms));
  }

  _mapVerificationSetContactInfoEventToState(
      VerificationSetContactInfoEvent event,
      Emitter<VerificationState> emit) async {
    await _localStorage.setCreatedUserInfo(const RegisteredUserInfo(
        userId: 175,
        userType: UserTypeEnum.artist,
        phoneNumber: '+56964484712',
        email: 'lucas.henrydz@gmail.com'));
    emit(state.copyWith(
        accountVerificationStatus: AccountVerificationStatus.ready));
  }

  Future<void> _mapVerificationPinCompletedEventToState(
      VerificationPinCompletedEvent event,
      Emitter<VerificationState> emit) async {
    final createdUser = await _localStorage.getCreatedUserInfo();

    if (createdUser == null) {
      emit(state.copyWith(
          accountVerificationStatus: AccountVerificationStatus.failed));
      return;
    }

    emit(state.copyWith(
        pin: event.pin,
        accountVerificationStatus: AccountVerificationStatus.sentSMS));

    final notificationResult = await _userService.sendAccountVerificationCode(
        createdUser.userId.toString(),
        createdUser.phoneNumber,
        NotificationType.phone);

    if (!notificationResult) {
      emit(state.copyWith(
          accountVerificationStatus: AccountVerificationStatus.failed));
      return;
    }
  }

  _mapVerificationPinChangedEventToState(
      VerificationPinChangedEvent event, Emitter<VerificationState> emit) {
    emit(state.copyWith(pin: event.code));
  }

  _mapVerificationButtonPressedEventToState(
      VerificationButtonPressedEvent event, Emitter<VerificationState> emit) {
    emit(state.copyWith(
        accountVerificationStatus: AccountVerificationStatus.sentSMS));
  }

  _mapVerificationSendSMSEventToState(
      VerificationSendSMSEvent event, Emitter<VerificationState> emit) async {
    if (state.maxTriesReached) {
      emit(state.copyWith(
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

    final notificationResult = await _userService.sendAccountVerificationCode(
        createdUser.userId.toString(),
        createdUser.phoneNumber,
        NotificationType.phone);

    if (!notificationResult) {
      emit(state.copyWith(
          verificationStatusMessage: 'Error sending SMS',
          accountVerificationStatus: AccountVerificationStatus.sentSMSFailed));
      return;
    }

    emit(state.copyWith(
        verificationStatusMessage: 'SMS sent',
        tries: state.tries + 1,
        accountVerificationStatus: AccountVerificationStatus.sendedSMS));
  }

  _mapVerificationSendEmailEventToState(
      VerificationSendEmailEvent event, Emitter<VerificationState> emit) {
    throw UnimplementedError();
  }
}
