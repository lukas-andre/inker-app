import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:inker_studio/domain/blocs/artist/creation/artist_creation_form_state.dart';
import 'package:inker_studio/domain/errors/customer/customer_exception.dart';
import 'package:inker_studio/domain/errors/remote/remote_exception.dart';
import 'package:inker_studio/utils/dev.dart';

part 'artist_creation_event.dart';
part 'artist_creation_state.dart';

class ArtistCreationBloc
    extends Bloc<ArtistCreationEvent, ArtistCreationState> {
  static const className = 'ArtistCreationBloc';

  ArtistCreationBloc({required createArtistUseCase})
      :
        //  _createArtistUseCase = createArtistUseCase,
        super(const ArtistCreationState()) {
    on<ArtistCreationUsernameChanged>(
        (event, emit) => _mapUsernameChangedToState(event, emit));
    on<ArtistCreationLastNameChanged>(
        (event, emit) => _mapLastNameChangedToState(event, emit));
    on<ArtistCreationFirstNameChanged>(
        (event, emit) => _mapFirstNameChangedToState(event, emit));
    on<ArtistCreationEmailChanged>(
        (event, emit) => _mapEmailChangedToState(event, emit));
    on<ArtistCreationPasswordChanged>(
        (event, emit) => _mapPasswordChangedToState(event, emit));
    on<ArtistCreationRepeatedPasswordChanged>(
        (event, emit) => _mapRepeatedPasswordChangedToState(event, emit));
    on<ArtistCreationPhoneNumberChanged>(
        (event, emit) => _mapPhoneNumberChangedToState(event, emit));
    on<ArtistCreationSubmitted>(
        (event, emit) => _mapArtistCreationSubmittedToState(event, emit));
  }

  // final CreateArtistUseCase _createArtistUseCase;

  void _mapUsernameChangedToState(
      ArtistCreationUsernameChanged event, Emitter<ArtistCreationState> emit) {
    final username = UsernameInput.dirty(event.username);
    emit(state.copyWith(
      formState: state.formState.copyWith(username: username),
    ));
  }

  void _mapFirstNameChangedToState(
      ArtistCreationFirstNameChanged event, Emitter<ArtistCreationState> emit) {
    final firstName = NameInput.dirty(event.firstName);
    emit(state.copyWith(
      formState: state.formState.copyWith(firstName: firstName),
    ));
  }

  void _mapLastNameChangedToState(
      ArtistCreationLastNameChanged event, Emitter<ArtistCreationState> emit) {
    final lastName = NameInput.dirty(event.lastName);

    emit(state.copyWith(
      formState: state.formState.copyWith(lastName: lastName),
    ));
  }

  void _mapPasswordChangedToState(
      ArtistCreationPasswordChanged event, Emitter<ArtistCreationState> emit) {
    final password = PasswordInput.dirty(event.password);
    emit(state.copyWith(
      formState: state.formState.copyWith(password: password),
    ));
  }

  void _mapRepeatedPasswordChangedToState(
      ArtistCreationRepeatedPasswordChanged event,
      Emitter<ArtistCreationState> emit) {
    final repeteadPassword = PasswordInput.dirty(event.repeteadPassword);
    dev.log('state: $state', className);
    dev.log('repeteadPassword: $repeteadPassword', className);
    emit(state.copyWith(
      formState: state.formState.copyWith(repeateadPassword: repeteadPassword),
    ));
  }

  void _mapEmailChangedToState(
      ArtistCreationEmailChanged event, Emitter<ArtistCreationState> emit) {
    final email = EmailInput.dirty(event.email);
    emit(state.copyWith(
      formState: state.formState.copyWith(email: email),
    ));
  }

  void _mapPhoneNumberChangedToState(ArtistCreationPhoneNumberChanged event,
      Emitter<ArtistCreationState> emit) {
    final phoneNumber = PhoneNumberInput.dirty(event.phoneNumber);
    emit(state.copyWith(
      formState: state.formState.copyWith(phoneNumber: phoneNumber),
    ));
  }

  Future<void> _mapArtistCreationSubmittedToState(
      ArtistCreationSubmitted event, Emitter<ArtistCreationState> emit) async {
    if (state.formState.status.isValidated) {
      emit(state.copyWith(
          formState: state.formState
              .copyWith(submissionStatus: SubmissionStatus.inProgress)));
      try {
        // final customer = await _createArtistUseCase.execute(
        //     username: state.username.value,
        //     firstName: state.firstName.value,
        //     lastName: state.lastName.value,
        //     password: state.password.value,
        //     email: state.email.value,
        //     phoneNumber: state.phoneNumber.value,
        //     socialMediaType: SocialMediaType.inker);
        // dev.log('$customer', className, '_mapArtistCreationSubmittedToState');
        emit(state.copyWith(
          formState: state.formState
              .copyWith(submissionStatus: SubmissionStatus.success),
        ));
      } on UserAlreadyExistsException {
        emit(state.copyWith(
            formState: state.formState
                .copyWith(submissionStatus: SubmissionStatus.failded),
            errorMessage:
                'User ${state.formState.email.value} already exists'));
      } on InternalServerException {
        emit(state.copyWith(
            formState: state.formState
                .copyWith(submissionStatus: SubmissionStatus.failded),
            errorMessage: 'Problems with the server'));
      } on JsonParseException {
        emit(state.copyWith(
            formState: state.formState
                .copyWith(submissionStatus: SubmissionStatus.failded),
            errorMessage: 'Invalid server response'));
      } catch (e, stackTrace) {
        dev.logError(e, stackTrace);
        emit(state.copyWith(
            formState: state.formState
                .copyWith(submissionStatus: SubmissionStatus.failded),
            errorMessage: 'Bad server response'));
      }
    }
  }
}
