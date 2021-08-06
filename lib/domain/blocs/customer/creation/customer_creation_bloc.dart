import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:inker_studio/domain/models/login/email.dart';
import 'package:inker_studio/domain/models/login/name.dart';
import 'package:inker_studio/domain/models/login/password.dart';
import 'package:inker_studio/domain/models/login/phone_number.dart';
import 'package:inker_studio/domain/models/login/username.dart';
import 'package:inker_studio/domain/usescases/customer/create_customer_usecase.dart';
import 'package:inker_studio/utils/dev.dart';

part 'customer_creation_event.dart';
part 'customer_creation_state.dart';

class CustomerCreationBloc
    extends Bloc<CustomerCreationEvent, CustomerCreationState> {
  static const className = 'CustomerCreationBloc';

  CustomerCreationBloc({required createCustomerUseCase})
      : _createCustomerUseCase = createCustomerUseCase,
        super(const CustomerCreationState());
  final CreateCustomerUseCase _createCustomerUseCase;

  @override
  Stream<CustomerCreationState> mapEventToState(
    CustomerCreationEvent event,
  ) async* {
    // TODO: implement mapEventToState
    dev.log('event $event', className, 'event');
    if (event is CustomerCreationUsernameChanged) {
      yield _mapUsernameChangedToState(event, state);
    } else if (event is CustomerCreationFirstNameChanged) {
      yield _mapFirstNameChangedToState(event, state);
    } else if (event is CustomerCreationLastNameChanged) {
      yield _mapLastNameChangedToState(event, state);
    } else if (event is CustomerCreationPasswordChanged) {
      yield _mapPasswordChangedToState(event, state);
    } else if (event is CustomerCreationRepeatedPasswordChanged) {
      yield _mapRepeatedPasswordChangedToState(event, state);
    } else if (event is CustomerCreationEmailChanged) {
      yield _mapEmailChangedToState(event, state);
    } else if (event is CustomerCreationPhoneNumberChanged) {
      yield _mapPhoneNumberChangedToState(event, state);
    } else if (event is CustomerCreationSubmitted) {
      yield* _mapCustomerCreationSubmittedToState(event, state);
    }
  }

  CustomerCreationState _mapUsernameChangedToState(
      CustomerCreationUsernameChanged event, CustomerCreationState state) {
    final username = Username.dirty(event.username);
    return state.copyWith(
        username: username,
        status: Formz.validate([
          username,
          state.firstName,
          state.lastName,
          state.email,
          state.password,
          state.repeatPassword,
          state.phoneNumber
        ]));
  }

  CustomerCreationState _mapFirstNameChangedToState(
      CustomerCreationFirstNameChanged event, CustomerCreationState state) {
    final firstName = Name.dirty(event.firstName);
    return state.copyWith(
        firstName: firstName,
        status: Formz.validate([
          firstName,
          state.lastName,
          state.email,
          state.password,
          state.repeatPassword,
          state.phoneNumber
        ]));
  }

  CustomerCreationState _mapLastNameChangedToState(
      CustomerCreationLastNameChanged event, CustomerCreationState state) {
    final lastName = Name.dirty(event.lastName);
    return state.copyWith(
        lastName: lastName,
        status: Formz.validate([
          lastName,
          state.firstName,
          state.email,
          state.password,
          state.repeatPassword,
          state.phoneNumber
        ]));
  }

  CustomerCreationState _mapPasswordChangedToState(
      CustomerCreationPasswordChanged event, CustomerCreationState state) {
    final password = Password.dirty(event.password);
    return state.copyWith(
        password: password,
        status: Formz.validate([
          password,
          state.username,
          state.firstName,
          state.lastName,
          state.email,
          state.repeatPassword,
          state.phoneNumber
        ]));
  }

  CustomerCreationState _mapRepeatedPasswordChangedToState(
      CustomerCreationRepeatedPasswordChanged event,
      CustomerCreationState state) {
    final repeteadPassword = Password.dirty(event.repeteadPassword);
    return state.copyWith(
        repeatPassword: repeteadPassword,
        status: Formz.validate([
          repeteadPassword,
          state.username,
          state.firstName,
          state.lastName,
          state.email,
          state.password,
          state.phoneNumber
        ]));
  }

  CustomerCreationState _mapEmailChangedToState(
      CustomerCreationEmailChanged event, CustomerCreationState state) {
    final email = Email.dirty(event.email);
    return state.copyWith(
        email: email,
        status: Formz.validate([
          email,
          state.username,
          state.firstName,
          state.lastName,
          state.password,
          state.repeatPassword,
          state.phoneNumber
        ]));
  }

  CustomerCreationState _mapPhoneNumberChangedToState(
      CustomerCreationPhoneNumberChanged event, CustomerCreationState state) {
    final phoneNumber = PhoneNumber.dirty(event.phoneNumber);
    return state.copyWith(
        phoneNumber: phoneNumber,
        status: Formz.validate([
          phoneNumber,
          state.username,
          state.firstName,
          state.lastName,
          state.password,
          state.repeatPassword,
          state.email
        ]));
  }

  Stream<CustomerCreationState> _mapCustomerCreationSubmittedToState(
      CustomerCreationSubmitted event, CustomerCreationState state) async* {
    if (state.status.isValidated) {
      yield state.copyWith(status: FormzStatus.submissionInProgress);
      try {
        final customer = await _createCustomerUseCase.execute(
          username: state.username.value,
          firstName: state.firstName.value,
          lastName: state.lastName.value,
          password: state.password.value,
          email: state.email.value,
          phoneNumber: state.phoneNumber.value,
        );
        dev.log('$customer', className, '_mapCustomerCreationSubmittedToState');
      } catch (e, stackTrace) {
        dev.logError(e, stackTrace);
        yield state.copyWith(status: FormzStatus.submissionFailure);
      }
    }
  }
}
