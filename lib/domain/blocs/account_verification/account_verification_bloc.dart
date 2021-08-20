import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:inker_studio/domain/errors/account_verification/max_sms_tries_exception.dart';
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
        super(const AccountVerificationState());

  final LocalCustomerService _localCustomerService;
  final AccountVerificationService _accountVerificationService;

  @override
  Stream<AccountVerificationState> mapEventToState(
    AccountVerificationEvent event,
  ) async* {
    if (event is AccountVerificationCreationSuccedEvent) {
      yield await _mapCreationSuccedEventToState(event, state);
    } else if (event is AccountVerificationSendSMS) {
      yield* _mapSendSMSEventToState(event, state);
    } else if (event is AccountVerificationSendEmail) {
      yield _mapSendEmailToState(event, state);
    } else if (event is AccountVerificationFailedEvent) {
      yield _mapSMSFailedToState(event, state);
    }
  }

  Future<AccountVerificationState> _mapCreationSuccedEventToState(
      AccountVerificationCreationSuccedEvent event,
      AccountVerificationState state) async {
    dev.log('state $state', className);

    final customer = await _localCustomerService.getCustomer();

    if (customer == null) {
      return state;
    }

    final newState = state.copyWith(
        firstName: customer.firstName,
        userId: customer.userId,
        email: customer.contactEmail,
        phoneNumber: customer.contactPhoneNumber,
        accountVerificationStatus: AccountVerificationStatus.created);
    dev.log('newState $newState', className);
    return newState;
  }

  Stream<AccountVerificationState> _mapSendSMSEventToState(
      AccountVerificationSendSMS event, AccountVerificationState state) async* {
    // TODO: add try catch and manage bad request exception and other exceptions
    try {
      yield state.copyWith(
        accountVerificationStatus: AccountVerificationStatus.smsSent,
      );
      await _accountVerificationService.sendSMS(
          state.userId!, state.phoneNumber!);

      yield state.copyWith(
        accountVerificationStatus: AccountVerificationStatus.smsSentOk,
      );
    } on MaxSMSTriesException {
      yield state.copyWith(
          accountVerificationStatus: AccountVerificationStatus.smsSentFailure,
          errorMessage:
              'Max sms tries reached. Please try again other day uwu'); // TODO: change this message pls
    } catch (e, stackTrace) {
      dev.logError(e, stackTrace);
      yield state.copyWith(
          accountVerificationStatus: AccountVerificationStatus.smsSentFailure,
          errorMessage: 'Bad server response');
    }
  }

  AccountVerificationState _mapSendEmailToState(
      AccountVerificationSendEmail event, AccountVerificationState state) {
    // TODO: implement this map
    return state;
  }

  AccountVerificationState _mapSMSFailedToState(
      AccountVerificationFailedEvent event, AccountVerificationState state) {
    // TODO: implement this map
    return state;
  }
}
