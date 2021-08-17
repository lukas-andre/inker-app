import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:inker_studio/domain/errors/customer/customer_exception.dart';
import 'package:inker_studio/domain/errors/remote/remote_exception.dart';
import 'package:inker_studio/domain/usescases/customer/create_customer_usecase.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:form_inputs/form_inputs.dart';

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
    final username = UsernameInput.dirty(event.username);
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
    final firstName = NameInput.dirty(event.firstName);
    return state.copyWith(
        firstName: firstName,
        status: Formz.validate([
          firstName,
          state.username,
          state.lastName,
          state.email,
          state.password,
          state.repeatPassword,
          state.phoneNumber
        ]));
  }

  CustomerCreationState _mapLastNameChangedToState(
      CustomerCreationLastNameChanged event, CustomerCreationState state) {
    final lastName = NameInput.dirty(event.lastName);
    return state.copyWith(
        lastName: lastName,
        status: Formz.validate([
          lastName,
          state.firstName,
          state.username,
          state.email,
          state.password,
          state.repeatPassword,
          state.phoneNumber
        ]));
  }

  CustomerCreationState _mapPasswordChangedToState(
      CustomerCreationPasswordChanged event, CustomerCreationState state) {
    final password = PasswordInput.dirty(event.password);
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
    final repeteadPassword = PasswordInput.dirty(event.repeteadPassword);
    dev.log('state: $state', className);
    dev.log('repeteadPassword: $repeteadPassword', className);
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
    final email = EmailInput.dirty(event.email);
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
    final phoneNumber = PhoneNumberInput.dirty(event.phoneNumber);
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
        yield state.copyWith(status: FormzStatus.submissionSuccess);
      } on UserAlreadyExistsException {
        yield state.copyWith(
            status: FormzStatus.submissionFailure,
            errorMessage: 'User ${state.email.value} already exists');
      } on InternalServerException {
        yield state.copyWith(
            status: FormzStatus.submissionFailure,
            errorMessage: 'Problems with the server');
      } on JsonParseException {
        yield state.copyWith(
            status: FormzStatus.submissionFailure,
            errorMessage: 'Invalid server response');
      } catch (e, stackTrace) {
        dev.logError(e, stackTrace);
        yield state.copyWith(
            status: FormzStatus.submissionFailure,
            errorMessage: 'Bad server response');
      }
    }
  }
}
