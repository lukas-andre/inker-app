import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:inker_studio/domain/errors/customer/customer_exception.dart';
import 'package:inker_studio/domain/errors/remote/remote_exception.dart';
import 'package:inker_studio/domain/models/login/social_media_type.dart';
import 'package:inker_studio/domain/usescases/customer/create_customer_usecase.dart';
import 'package:inker_studio/utils/dev.dart';

part 'customer_creation_event.dart';
part 'customer_creation_state.dart';

class CustomerCreationBloc
    extends Bloc<CustomerCreationEvent, CustomerCreationState> {
  static const className = 'CustomerCreationBloc';

  CustomerCreationBloc({required createCustomerUseCase})
      : _createCustomerUseCase = createCustomerUseCase,
        super(const CustomerCreationState()) {
    on<CustomerCreationUsernameChanged>(
        (event, emit) => _mapUsernameChangedToState(event, emit));
    on<CustomerCreationLastNameChanged>(
        (event, emit) => _mapLastNameChangedToState(event, emit));
    on<CustomerCreationFirstNameChanged>(
        (event, emit) => _mapFirstNameChangedToState(event, emit));
    on<CustomerCreationEmailChanged>(
        (event, emit) => _mapEmailChangedToState(event, emit));
    on<CustomerCreationPasswordChanged>(
        (event, emit) => _mapPasswordChangedToState(event, emit));
    on<CustomerCreationRepeatedPasswordChanged>(
        (event, emit) => _mapRepeatedPasswordChangedToState(event, emit));
    // on<CustomerCreationPhoneNumberChanged>(
    //     (event, emit) => _mapPhoneNumberChangedToState(event, emit));
    on<CustomerCreationSubmitted>(
        (event, emit) => _mapCustomerCreationSubmittedToState(event, emit));
  }

  final CreateCustomerUseCase _createCustomerUseCase;

  void _mapUsernameChangedToState(CustomerCreationUsernameChanged event,
      Emitter<CustomerCreationState> emit) {
    final username = UsernameInput.dirty(event.username);
    emit(state.copyWith(
        username: username,
        status: Formz.validate([
          username,
          state.firstName,
          state.lastName,
          state.email,
          state.password,
          state.repeatPassword,
          state.phoneNumber
        ])));
  }

  void _mapFirstNameChangedToState(CustomerCreationFirstNameChanged event,
      Emitter<CustomerCreationState> emit) {
    final firstName = NameInput.dirty(event.firstName);
    emit(state.copyWith(
        firstName: firstName,
        status: Formz.validate([
          firstName,
          state.username,
          state.lastName,
          state.email,
          state.password,
          state.repeatPassword,
          state.phoneNumber
        ])));
  }

  void _mapLastNameChangedToState(CustomerCreationLastNameChanged event,
      Emitter<CustomerCreationState> emit) {
    final lastName = NameInput.dirty(event.lastName);

    emit(state.copyWith(
        lastName: lastName,
        status: Formz.validate([
          lastName,
          state.firstName,
          state.username,
          state.email,
          state.password,
          state.repeatPassword,
          state.phoneNumber
        ])));
  }

  void _mapPasswordChangedToState(CustomerCreationPasswordChanged event,
      Emitter<CustomerCreationState> emit) {
    final password = PasswordInput.dirty(event.password);
    emit(state.copyWith(
        password: password,
        status: Formz.validate([
          password,
          state.username,
          state.firstName,
          state.lastName,
          state.email,
          state.repeatPassword,
          state.phoneNumber
        ])));
  }

  void _mapRepeatedPasswordChangedToState(
      CustomerCreationRepeatedPasswordChanged event,
      Emitter<CustomerCreationState> emit) {
    final repeteadPassword = PasswordInput.dirty(event.repeteadPassword);
    dev.log('state: $state', className);
    dev.log('repeteadPassword: $repeteadPassword', className);
    emit(state.copyWith(
        repeatPassword: repeteadPassword,
        status: Formz.validate([
          repeteadPassword,
          state.username,
          state.firstName,
          state.lastName,
          state.email,
          state.password,
          state.phoneNumber
        ])));
  }

  void _mapEmailChangedToState(
      CustomerCreationEmailChanged event, Emitter<CustomerCreationState> emit) {
    final email = EmailInput.dirty(event.email);
    emit(state.copyWith(
        email: email,
        status: Formz.validate([
          email,
          state.username,
          state.firstName,
          state.lastName,
          state.password,
          state.repeatPassword,
          state.phoneNumber
        ])));
  }

  // void _mapPhoneNumberChangedToState(CustomerCreationPhoneNumberChanged event,
  //     Emitter<CustomerCreationState> emit) {
  //   final phoneNumber = PhoneNumberInput.dirty(event.phoneNumber);
  //   emit(state.copyWith(
  //       phoneNumber: phoneNumber,
  //       status: Formz.validate([
  //         phoneNumber,
  //         state.username,
  //         state.firstName,
  //         state.lastName,
  //         state.password,
  //         state.repeatPassword,
  //         state.email
  //       ])));
  // }

  Future<void> _mapCustomerCreationSubmittedToState(
      CustomerCreationSubmitted event,
      Emitter<CustomerCreationState> emit) async {
    if (state.status.isValidated) {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      try {
        final customer = await _createCustomerUseCase.execute(
            username: state.username.value,
            firstName: state.firstName.value,
            lastName: state.lastName.value,
            password: state.password.value,
            email: state.email.value,
            phoneNumber: state.phoneNumber.value.phoneNumber,
            socialMediaType: SocialMediaType.inker);
        dev.log('$customer', className, '_mapCustomerCreationSubmittedToState');
        emit(state.copyWith(status: FormzStatus.submissionSuccess));
      } on UserAlreadyExistsException {
        emit(state.copyWith(
            status: FormzStatus.submissionFailure,
            errorMessage: 'User ${state.email.value} already exists'));
      } on InternalServerException {
        emit(state.copyWith(
            status: FormzStatus.submissionFailure,
            errorMessage: 'Problems with the server'));
      } on JsonParseException {
        emit(state.copyWith(
            status: FormzStatus.submissionFailure,
            errorMessage: 'Invalid server response'));
      } catch (e, stackTrace) {
        dev.logError(e, stackTrace);
        emit(state.copyWith(
            status: FormzStatus.submissionFailure,
            errorMessage: 'Bad server response'));
      }
    }
  }
}
