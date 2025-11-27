import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:inker_studio/data/api/user/dtos/create_artist_user_response.dart';
import 'package:inker_studio/domain/errors/artist/artist_already_exists_exception.dart';
import 'package:inker_studio/domain/errors/remote/bad_request_exception.dart';
import 'package:inker_studio/domain/errors/remote/un_processable_exception.dart';
import 'package:inker_studio/domain/errors/user/user_already_exists_exception.dart';
import 'package:inker_studio/domain/services/local_storage/local_storage.dart';
import 'package:inker_studio/domain/services/places/places_service.dart';
import 'package:inker_studio/domain/usescases/user/create_user_usecase.dart';
import 'package:inker_studio/features/auth_shared/models/user_type.dart';
import 'package:inker_studio/features/register/models/registered_user_info.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:json_annotation/json_annotation.dart';

part 'register_artist_event.dart';
part 'register_artist_state.dart';

class RegisterArtistBloc
    extends Bloc<RegisterArtistEvent, RegisterArtistState> {
  final PlacesService placesService;
  final CreateUserUseCase _createUserUseCase;
  final LocalStorage _localStorage;

  RegisterArtistBloc(
      {required this.placesService,
      required CreateUserUseCase createUserUseCase,
      required LocalStorage localStorage})
      : _createUserUseCase = createUserUseCase,
        _localStorage = localStorage,
        super(RegisterArtistState(form: RegisterArtistForm())) {
    on<RegisterArtistNameChanged>(
        (event, emit) => _mapRegisterArtistNameChangedToState(emit, event));
    on<RegisterArtistLastNameChanged>(
        (event, emit) => _mapRegisterArtistLastNameChangedToState(emit, event));
    on<RegisterArtistUsernameChanged>(
        (event, emit) => _mapRegisterArtistUsernameChangedToState(emit, event));
    on<RegisterArtistEmailChanged>(
        (event, emit) => _mapRegisterArtistEmailChangedToState(emit, event));
    on<RegisterArtistPhoneNumberChanged>((event, emit) =>
        _mapRegisterArtistPhoneNumberChangedToState(emit, event));
    on<RegisterArtistPasswordChanged>(
        (event, emit) => _mapRegisterArtistPasswordChangedToState(emit, event));
    on<RegisterArtistConfirmedPasswordChanged>((event, emit) =>
        _mapRegisterArtistConfirmedPasswordChangedToState(emit, event));
    on<RegisterArtistLocationChanged>(
        (event, emit) => _mapRegisterArtistLocationChangedToState(emit, event));
    on<RegisterArtistNextPagePressed>(
        (event, emit) => _mapRegisterArtistNextPagePressedToState(emit, event));
    on<RegisterArtistAddressTypeChanged>((event, emit) =>
        _mapRegisterArtistAddressTypeChangedToState(emit, event));
    on<RegisterArtistAddressExtraChanged>((event, emit) =>
        _mapRegisterArtistAddressExtraChangedToState(emit, event));
    on<RegisterArtistRegisterPressed>(
        (event, emit) => _mapRegisterArtistRegisterPressedToState(emit, event));
    on<RegisterArtistClearState>(
        (event, emit) => _mapRegisterArtistClearStateToState(emit, event));
    on<RegisterArtistClearPartialForm>((event, emit) =>
        _mapRegisterArtistClearPartialFormToState(emit, event));
    on<RegisterArtistClearForm>(
        (event, emit) => _mapRegisterArtistClearFormToState(emit, event));
  }
  final ScrollController _scrollController =
      ScrollController(keepScrollOffset: false);

  final FocusNode _nameNode = FocusNode();
  final FocusNode _lastNameNode = FocusNode();
  final FocusNode _usernameNode = FocusNode();

  FocusNode get nameFocusNode => _nameNode;
  FocusNode get lastNameFocusNode => _lastNameNode;
  FocusNode get usernameFocusNode => _usernameNode;

  ScrollController get scrollController => _scrollController;

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
    if (!state.form.confirmedPassword.pure) {
      final confirmedPassword = ConfirmedPasswordInput.dirty(
          password: event.password, value: state.form.confirmedPassword.value);
      emit(state.copyWith(
          form: state.form.copyWith(
              password: password, confirmedPassword: confirmedPassword)));
    } else {
      emit(state.copyWith(form: state.form.copyWith(password: password)));
    }
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
    if (event.page == 1) {
      emit(state.copyWith(partialFormStatus: PartialFormStatus.submitted));
    }
  }

  void _mapRegisterArtistAddressTypeChangedToState(
      Emitter<RegisterArtistState> emit,
      RegisterArtistAddressTypeChanged event) {
    final List<AddressTypeOption> addressTypeOptions =
        List.from(state.addressTypeOption);
    for (var i = 0; i < state.addressTypeOption.length; i++) {
      addressTypeOptions[i] = i == event.index
          ? state.addressTypeOption[i]
              .copyWith(type: state.addressTypeOption[i].type, isSelected: true)
          : state.addressTypeOption[i].copyWith(
              type: state.addressTypeOption[i].type, isSelected: false);
    }
    emit(state.copyWith(
      addressTypeOption: addressTypeOptions,
    ));
  }

  void _mapRegisterArtistAddressExtraChangedToState(
      Emitter<RegisterArtistState> emit,
      RegisterArtistAddressExtraChanged event) {
    final addressExtra =
        AddressExtraInput.dirty(addressType: event.type, value: event.extra);

    emit(state.copyWith(
      form: state.form.copyWith(
        addressExtra: addressExtra,
      ),
    ));
  }

  Future<void> _mapRegisterArtistRegisterPressedToState(
      Emitter<RegisterArtistState> emit,
      RegisterArtistRegisterPressed event) async {
    final alreadyCreated = await _localStorage.getCreatedUserInfo();
    if (alreadyCreated != null) {
      // TODO: Just for now we are using AND phone number to check if the user is already created.
      // In production we should use the email and phoneNumber unique.
      if (alreadyCreated.email == state.form.email.value &&
          alreadyCreated.phoneNumber ==
              state.form.phoneNumber.value.phoneNumber) {
        emit(state.copyWith(registerState: RegisterArtistStatus.ok));
      }
    }

    emit(state.copyWith(
      registerState: RegisterArtistStatus.submitted,
    ));
    String? errorMessage;

    try {
      final response =
          await _createUserUseCase.execute(state) as CreateArtistUserResponse;

      dev.log('response: $response', 'RegisterArtistBloc');

      await _localStorage.setCreatedUserInfo(RegisteredUserInfo(
          userId: response.userId,
          userType: UserTypeEnum.artist,
          email: state.form.email.value,
          phoneNumber: state.form.phoneNumber.value.phoneNumber));

      emit(state.copyWith(
        registerState: RegisterArtistStatus.ok,
      ));
    } on DetailsNotFound {
      errorMessage = 'We have problems registering your address. 😔';
    } on BadRequest catch (e) {
      if (e is ArtistAlreadyExistsException) {
        errorMessage = 'This artist already exists. 😔';
      } else if (e is UserAlreadyExistsException) {
        errorMessage = 'This user already exists. 😔';
      } else {
        errorMessage = 'We have problems registering your account. 😔';
      }
    } on UnprocessableEntity {
      errorMessage = 'We have problems creating your account. 😔';
    } catch (error, stackTrace) {
      dev.logError(error, stackTrace);
      errorMessage = 'We have problems creating your account.😔';
    }

    if (errorMessage != null &&
        state.registerState != RegisterArtistStatus.ok) {
      emit(state.copyWith(
        registerState: RegisterArtistStatus.error,
        errorMessage: errorMessage,
      ));
    }
  }

  _mapRegisterArtistClearStateToState(
      Emitter<RegisterArtistState> emit, RegisterArtistClearState event) {
    emit(state.copyWith(registerState: RegisterArtistStatus.initial));
  }

  _mapRegisterArtistClearPartialFormToState(
      Emitter<RegisterArtistState> emit, RegisterArtistClearPartialForm event) {
    emit(state.copyWith(
      partialFormStatus: PartialFormStatus.initial,
    ));
  }

  _mapRegisterArtistClearFormToState(
      Emitter<RegisterArtistState> emit, RegisterArtistClearForm event) {
    emit(RegisterArtistState(form: RegisterArtistForm()));
  }
}
