import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:inker_studio/data/api/user/dtos/create_customer_user_response.dart';
import 'package:inker_studio/domain/errors/customer/customer_already_exists_exception.dart';
import 'package:inker_studio/domain/errors/remote/bad_request_exception.dart';
import 'package:inker_studio/domain/errors/remote/un_processable_exception.dart';
import 'package:inker_studio/domain/errors/user/user_already_exists_exception.dart';
import 'package:inker_studio/domain/models/user/registered_user_info.dart';
import 'package:inker_studio/domain/models/user/user_type.dart';
import 'package:inker_studio/domain/services/local_storage/local_storage.dart';
import 'package:inker_studio/domain/services/places/places_service.dart';
import 'package:inker_studio/domain/usescases/user/create_user_usecase.dart';
import 'package:inker_studio/utils/dev.dart';

part 'register_customer_event.dart';
part 'register_customer_state.dart';

class RegisterCustomerBloc
    extends Bloc<RegisterCustomerEvent, RegisterCustomerState> {
  final PlacesService placesService;
  final CreateUserUseCase _createUserUseCase;
  final LocalStorage _localStorage;

  RegisterCustomerBloc(
      {required this.placesService,
      required CreateUserUseCase createUserUseCase,
      required LocalStorage localStorage})
      : _createUserUseCase = createUserUseCase,
        _localStorage = localStorage,
        super(const RegisterCustomerState(form: RegisterCustomerForm())) {
    on<RegisterCustomerNameChanged>(
        (event, emit) => _mapRegisterCustomerNameChangedToState(emit, event));
    on<RegisterCustomerLastNameChanged>((event, emit) =>
        _mapRegisterCustomerLastNameChangedToState(emit, event));
    on<RegisterCustomerEmailChanged>(
        (event, emit) => _mapRegisterCustomerEmailChangedToState(emit, event));
    on<RegisterCustomerPhoneNumberChanged>((event, emit) =>
        _mapRegisterCustomerPhoneNumberChangedToState(emit, event));
    on<RegisterCustomerPasswordChanged>((event, emit) =>
        _mapRegisterCustomerPasswordChangedToState(emit, event));
    on<RegisterCustomerConfirmedPasswordChanged>((event, emit) =>
        _mapRegisterCustomerConfirmedPasswordChangedToState(emit, event));
    on<RegisterCustomerRegisterPressed>((event, emit) =>
        _mapRegisterCustomerRegisterPressedToState(emit, event));
    on<RegisterCustomerClearState>(
        (event, emit) => _mapRegisterCustomerClearStateToState(emit, event));
    on<RegisterCustomerClearForm>(
        (event, emit) => _mapRegisterCustomerClearFormToState(emit, event));
    on<RegisterCustomerNextPagePressed>((event, emit) =>
        _mapRegisterCustomerNextPagePressedToState(emit, event));
  }

  void _mapRegisterCustomerNextPagePressedToState(
      Emitter<RegisterCustomerState> emit,
      RegisterCustomerNextPagePressed event) {
    emit(state.copyWith(
      pageIndex: event.page,
    ));
  }

  void _mapRegisterCustomerNameChangedToState(
      Emitter<RegisterCustomerState> emit, RegisterCustomerNameChanged event) {
    final firstName = NameInput.dirty(event.name);
    emit(state.copyWith(form: state.form.copyWith(firstName: firstName)));
  }

  void _mapRegisterCustomerLastNameChangedToState(
      Emitter<RegisterCustomerState> emit,
      RegisterCustomerLastNameChanged event) {
    final lastName = NameInput.dirty(event.name);
    emit(state.copyWith(form: state.form.copyWith(lastName: lastName)));
  }

  void _mapRegisterCustomerEmailChangedToState(
      Emitter<RegisterCustomerState> emit, RegisterCustomerEmailChanged event) {
    final email = EmailInput.dirty(event.email);
    emit(state.copyWith(form: state.form.copyWith(email: email)));
  }

  void _mapRegisterCustomerPhoneNumberChangedToState(
      Emitter<RegisterCustomerState> emit,
      RegisterCustomerPhoneNumberChanged event) {
    final phoneNumber = PhoneNumberInput.dirty(event.phoneNumber);
    emit(state.copyWith(form: state.form.copyWith(phoneNumber: phoneNumber)));
  }

  void _mapRegisterCustomerPasswordChangedToState(
      Emitter<RegisterCustomerState> emit,
      RegisterCustomerPasswordChanged event) {
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

  void _mapRegisterCustomerConfirmedPasswordChangedToState(
      Emitter<RegisterCustomerState> emit,
      RegisterCustomerConfirmedPasswordChanged event) {
    final confirmedPassword = ConfirmedPasswordInput.dirty(
        password: state.form.password.value, value: event.password);
    emit(state.copyWith(
        form: state.form.copyWith(confirmedPassword: confirmedPassword)));
  }

  Future<void> _mapRegisterCustomerRegisterPressedToState(
      Emitter<RegisterCustomerState> emit,
      RegisterCustomerRegisterPressed event) async {
    final alreadyCreated = await _localStorage.getCreatedUserInfo();
    if (alreadyCreated != null) {
      // TODO: Just for now we are using AND phone number to check if the user is already created.
      // In production we should use the email and phoneNumber unique.
      if (alreadyCreated.email == state.form.email.value &&
          alreadyCreated.phoneNumber ==
              state.form.phoneNumber.value.phoneNumber) {
        emit(state.copyWith(registerState: RegisterCustomerStatus.ok));
      }
    }

    emit(state.copyWith(
      registerState: RegisterCustomerStatus.submitted,
    ));
    String? errorMessage;

    try {
      final response =
          await _createUserUseCase.execute(state) as CreateCustomerUserResponse;

      dev.log('response: $response', 'RegisterCustomerBloc');

      await _localStorage.setCreatedUserInfo(RegisteredUserInfo(
          userId: response.userId,
          userType: UserTypeEnum.customer,
          email: state.form.email.value,
          phoneNumber: state.form.phoneNumber.value.phoneNumber));

      emit(state.copyWith(
        registerState: RegisterCustomerStatus.ok,
      ));
    } on DetailsNotFound {
      errorMessage = 'We have problems registering your address. 😔';
    } on BadRequest catch (e) {
      if (e is CustomerAlreadyExistsException) {
        errorMessage = 'This Customer already exists. 😔';
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
        state.registerState != RegisterCustomerStatus.ok) {
      emit(state.copyWith(
        registerState: RegisterCustomerStatus.error,
        errorMessage: errorMessage,
      ));
    }
  }

  _mapRegisterCustomerClearStateToState(
      Emitter<RegisterCustomerState> emit, RegisterCustomerClearState event) {
    emit(state.copyWith(registerState: RegisterCustomerStatus.initial));
  }

  _mapRegisterCustomerClearFormToState(
      Emitter<RegisterCustomerState> emit, RegisterCustomerClearForm event) {
    emit(const RegisterCustomerState(form: RegisterCustomerForm()));
  }
}
