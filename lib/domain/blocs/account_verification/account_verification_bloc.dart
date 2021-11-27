import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/errors/account_verification/hash_not_found_exception.dart';
import 'package:inker_studio/domain/errors/account_verification/invalid_verification_code_exception.dart';
import 'package:inker_studio/domain/errors/account_verification/max_sms_tries_exception.dart';
import 'package:inker_studio/domain/errors/user/can_not_activate_user_exception.dart';
import 'package:inker_studio/domain/errors/user/user_not_found_exception.dart';
import 'package:inker_studio/domain/services/account_verification/account_verification_service.dart';
import 'package:inker_studio/domain/services/customer/local_customer_service.dart';
import 'package:inker_studio/utils/dev.dart';

part 'account_verification_event.dart';
part 'account_verification_state.dart';

class AccountVerificationBloc
    extends Bloc<AccountVerificationEvent, AccountVerificationState> {
  final String className = 'AccountVerificationBloc';

  AccountVerificationBloc({
    required LocalCustomerService localCustomerService,
    required AccountVerificationService accountVerificationService,
  })  : _localCustomerService = localCustomerService,
        _accountVerificationService = accountVerificationService,
        super(const AccountVerificationState()) {
    on<AccountVerificationCreationSuccedEvent>(
        (event, emit) => _mapCreationSuccedToState(event, emit));
    on<AccountVerificationSendSMS>(
        (event, emit) => _mapSendSMSToState(event, emit));
    on<AccountVerificationSendEmail>(
        (event, emit) => _mapSendEmailEventToState(event, emit));
    on<AccountVerificationFailedEvent>(
        (event, emit) => _mapSMSFailedToState(event, emit));
    on<AccountVerificationValidateVerificationCode>((event, emit) =>
        _mapAccountVerificationValidateVerificationCodeToState(event, emit));
  }

  final LocalCustomerService _localCustomerService;
  final AccountVerificationService _accountVerificationService;

  Future<void> _mapCreationSuccedToState(
      AccountVerificationCreationSuccedEvent event,
      Emitter<AccountVerificationState> emit) async {
    dev.log('state $state', className);

    final customer = await _localCustomerService.getCustomer();

    if (customer == null) {
      emit(state);
      return;
    }

    final newState = state.copyWith(
        firstName: customer.firstName,
        userId: customer.userId,
        email: customer.contactEmail,
        phoneNumber: customer.contactPhoneNumber,
        accountVerificationStatus: AccountVerificationStatus.created);
    dev.log('newState $newState', className);
    emit(newState);
  }

  Future<void> _mapSendSMSToState(AccountVerificationSendSMS event,
      Emitter<AccountVerificationState> emit) async {
    // TODO: add try catch and manage bad request exception and other exceptions
    try {
      emit(state.copyWith(
        accountVerificationStatus: AccountVerificationStatus.smsSent,
      ));
      await _accountVerificationService.sendSMS(
          state.userId!, state.phoneNumber!);

      emit(state.copyWith(
        accountVerificationStatus: AccountVerificationStatus.smsSentOk,
      ));
    } on MaxSMSTriesException {
      emit(state.copyWith(
          accountVerificationStatus: AccountVerificationStatus.smsSentFailure,
          errorMessage:
              'Max sms tries reached. Please try again other day uwu')); // TODO: change this message pls
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      emit(state.copyWith(
          accountVerificationStatus: AccountVerificationStatus.smsSentFailure,
          errorMessage: 'Bad server response'));
    }
  }

  void _mapSendEmailEventToState(AccountVerificationSendEmail event,
      Emitter<AccountVerificationState> emit) {
    // TODO: implement this map
  }

  void _mapSMSFailedToState(AccountVerificationFailedEvent event,
      Emitter<AccountVerificationState> emit) {
    // TODO: implement this map
  }

  // TODO: AGREGAR MAXIMO INTENTOS DE VALIDACION DE HASH
  Future<void> _mapAccountVerificationValidateVerificationCodeToState(
      AccountVerificationValidateVerificationCode event,
      Emitter<AccountVerificationState> emit) async {
    try {
      emit(state.copyWith(
        accountVerificationStatus:
            AccountVerificationStatus.smsVerificationInProcess,
      ));

      await _accountVerificationService.validateVerificationCode(
          state.userId!, event.code);

      emit(state.copyWith(
        accountVerificationStatus: AccountVerificationStatus.smsVerifciationOk,
      ));
    } on HashNotFound {
      emit(state.copyWith(
          accountVerificationStatus:
              AccountVerificationStatus.smsVerifciationFailure,
          errorMessage: 'Invalid Hash')); // TODO: change this message pls
    } on UserNotFound {
      emit(state.copyWith(
          accountVerificationStatus:
              AccountVerificationStatus.smsVerifciationFailure,
          errorMessage: 'Not acceptable user'));
    } on CanNotActivateUser {
      emit(state.copyWith(
          accountVerificationStatus:
              AccountVerificationStatus.smsVerifciationFailure,
          errorMessage: 'Problemas activating user'));
    } on InvalidVerificationCode {
      emit(state.copyWith(
          accountVerificationStatus:
              AccountVerificationStatus.smsVerifciationFailure,
          errorMessage: 'Invalid verification code'));
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      emit(state.copyWith(
          accountVerificationStatus: AccountVerificationStatus.smsSentFailure,
          errorMessage: 'Bad server response'));
    }
  }
}
