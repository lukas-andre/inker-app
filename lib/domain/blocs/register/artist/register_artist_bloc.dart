import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:form_inputs/form_inputs.dart';

part 'register_artist_event.dart';
part 'register_artist_state.dart';

class RegisterArtistBloc
    extends Bloc<RegisterArtistEvent, RegisterArtistState> {
  RegisterArtistBloc()
      : super(RegisterArtistState(form: RegisterArtistForm())) {
    on<RegisterArtistNameChanged>((event, emit) {
      _mapRegisterArtistNameChangedToState(emit, event);
    });
    on<RegisterArtistLastNameChanged>((event, emit) {
      _mapRegisterArtistLastNameChangedToState(emit, event);
    });
    on<RegisterArtistUsernameChanged>((event, emit) {
      _mapRegisterArtistUsernameChangedToState(emit, event);
    });
    on<RegisterArtistEmailChanged>((event, emit) {
      _mapRegisterArtistEmailChangedToState(emit, event);
    });
    on<RegisterArtistPhoneNumberChanged>((event, emit) {
      _mapRegisterArtistPhoneNumberChangedToState(emit, event);
    });
    on<RegisterArtistPasswordChanged>((event, emit) {
      _mapRegisterArtistPasswordChangedToState(emit, event);
    });
    on<RegisterArtistConfirmedPasswordChanged>((event, emit) {
      _mapRegisterArtistConfirmedPasswordChangedToState(emit, event);
    });
    on<RegisterArtistLocationChanged>((event, emit) {
      _mapRegisterArtistLocationChangedToState(emit, event);
    });
    on<RegisterArtistNextPagePressed>((event, emit) {
      _mapRegisterArtistNextPagePressedToState(emit, event);
    });
  }

  void _mapRegisterArtistNameChangedToState(
      Emitter<RegisterArtistState> emit, RegisterArtistNameChanged event) {
    final firstName = NameInput.dirty(event.name);
    emit(state.copyWith(form: state.form.copyWith(firstName: firstName)));
  }

  void _mapRegisterArtistLastNameChangedToState(
      Emitter<RegisterArtistState> emit, RegisterArtistLastNameChanged event) {
    final lastName = NameInput.dirty(event.name);
    emit(state.copyWith(form: state.form.copyWith(lastName: lastName)));
  }

  void _mapRegisterArtistUsernameChangedToState(
      Emitter<RegisterArtistState> emit, RegisterArtistUsernameChanged event) {
    final username = UsernameInput.dirty(event.username);
    emit(state.copyWith(form: state.form.copyWith(username: username)));
  }

  void _mapRegisterArtistEmailChangedToState(
      Emitter<RegisterArtistState> emit, RegisterArtistEmailChanged event) {
    final email = EmailInput.dirty(event.email);
    emit(state.copyWith(form: state.form.copyWith(email: email)));
  }

  void _mapRegisterArtistPhoneNumberChangedToState(
      Emitter<RegisterArtistState> emit,
      RegisterArtistPhoneNumberChanged event) {
    final phoneNumber = PhoneNumberInput.dirty(event.phoneNumber);
    emit(state.copyWith(form: state.form.copyWith(phoneNumber: phoneNumber)));
  }

  void _mapRegisterArtistPasswordChangedToState(
      Emitter<RegisterArtistState> emit, RegisterArtistPasswordChanged event) {
    final password = PasswordInput.dirty(event.password);
    emit(state.copyWith(form: state.form.copyWith(password: password)));
  }

  void _mapRegisterArtistConfirmedPasswordChangedToState(
      Emitter<RegisterArtistState> emit,
      RegisterArtistConfirmedPasswordChanged event) {
    final confirmedPassword = ConfirmedPasswordInput.dirty(
        password: state.form.password.value, value: event.password);
    emit(state.copyWith(
        form: state.form.copyWith(confirmedPassword: confirmedPassword)));
  }

  void _mapRegisterArtistLocationChangedToState(
      Emitter<RegisterArtistState> emit, RegisterArtistLocationChanged event) {
    final location = LocationInput.dirty(event.location);
    emit(state.copyWith(form: state.form.copyWith(location: location)));
  }

  void _mapRegisterArtistNextPagePressedToState(
      Emitter<RegisterArtistState> emit, RegisterArtistNextPagePressed event) {
    emit(state.copyWith(
      pageIndex: event.page,
    ));
  }
}
