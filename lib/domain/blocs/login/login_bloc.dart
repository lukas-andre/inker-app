import 'package:bloc/bloc.dart' show Bloc;
import 'package:equatable/equatable.dart' show Equatable;
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart' show Formz, FormzStatus, FormzStatusX;
import 'package:inker_studio/data/firebase/google_auth_service.dart';
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';
import 'package:inker_studio/domain/errors/customer/customer_exception.dart';
import 'package:inker_studio/domain/errors/remote/http_exception.dart';
import 'package:inker_studio/domain/errors/remote/remote_exception.dart';
import 'package:inker_studio/domain/errors/remote/resource_not_found.dart';
import 'package:inker_studio/domain/models/login/login_type.dart';
import 'package:inker_studio/domain/models/login/social_media_type.dart';
import 'package:inker_studio/domain/models/user/user_type.dart';
import 'package:inker_studio/domain/usescases/auth/google_singin_usecase.dart';
import 'package:inker_studio/domain/usescases/auth/login_usecase.dart';
import 'package:inker_studio/domain/usescases/customer/create_customer_usecase.dart';
import 'package:inker_studio/utils/dev.dart';

part 'login_event.dart';
part 'login_state.dart';

class CustomerLoginFailed implements Exception {}

class CreateCustomerFailed implements Exception {}

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  static const className = 'LoginBloc';

  LoginBloc({
    required LoginUseCase loginUseCase,
    required GoogleSingInUsecase googleSingInUsecase,
    required CreateCustomerUseCase createCustomerUseCase,
    required AuthBloc authBloc,
  })  : _loginUseCase = loginUseCase,
        _authBloc = authBloc,
        _googleSingInUsecase = googleSingInUsecase,
        _createCustomerUseCase = createCustomerUseCase,
        super(const LoginState()) {
    on<LoginUsernameChanged>(
        (event, emit) => _mapUsernameChangedToState(event, emit));
    on<LoginPasswordChanged>(
        (event, emit) => _mapPasswordChangedToState(event, emit));
    on<LoginSubmitted>((event, emit) => _mapLoginSubmittedToState(event, emit));
    on<CreateAccountWithInkerInfoPressed>((event, emit) =>
        _mapCreateAccountWithInkerInfoPressedToState(event, emit));
    on<SignInWithGooglePressed>(
        (event, emit) => _mapSignInWithGoogleToState(event, emit));
    on<CreateArtistUserPressed>(
        (event, emit) => _mapCreateArtistUserPressedToState(event, emit));

    // TODO: MOVE TO CUSTOMER_CREATION_BLOC
    on<CreateUserByTypeBackButtonPressed>((event, emit) =>
        _mapCreateUserByTypeBackButtonPressedToState(event, emit));
    // TODO: MOVE TO CUSTOMER_CREATION_BLOC
    on<CreateCustomerWithInkerFormInfo>((event, emit) =>
        _mapCreateCustomerWithInkerFormInfoToState(event, emit));
    // TODO: MOVE TO CUSTOMER_CREATION_BLOC
    on<CreateCustomerWithGoogleSignInInfo>((event, emit) =>
        _mapCreateCustomerWithGoogleSignInInfoToState(event, emit));

    on<LoginClearMessages>(
        (event, emit) => _mapLoginErrorMessageEmmitedToState(event, emit));
  }

  final LoginUseCase _loginUseCase;
  final GoogleSingInUsecase _googleSingInUsecase;
  final AuthBloc _authBloc;
  final CreateCustomerUseCase _createCustomerUseCase;

  void _mapUsernameChangedToState(
    LoginUsernameChanged event,
    Emitter<LoginState> emit,
  ) {
    final username = UsernameInput.dirty(event.username);
    emit(state.copyWith(
      username: username,
      status: Formz.validate([state.password, username]),
    ));
  }

  void _mapPasswordChangedToState(
    LoginPasswordChanged event,
    Emitter<LoginState> emit,
  ) {
    final password = PasswordInput.dirty(event.password);
    emit(state.copyWith(
      password: password,
      status: Formz.validate([password, state.username]),
    ));
  }

  Future<void> _mapLoginSubmittedToState(
    LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    if (state.status.isValidated) {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      try {
        final session = await _loginUseCase.execute(
            state.username.value, state.password.value, LoginType.email);

        if (session == null) {
          emit(state.copyWith(status: FormzStatus.submissionFailure));
          return;
        }

        _authBloc.add(AuthNewSession(session));

        emit(state.copyWith(status: FormzStatus.submissionSuccess));
      } on Exception catch (_) {
        emit(state.copyWith(status: FormzStatus.submissionFailure));
      }
    }
  }

  Future<void> _mapSignInWithGoogleToState(
    SignInWithGooglePressed event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      final result = await _googleSingInUsecase.execute();

      switch (result.flowStatus) {
        case GoogleLoginFlowStatus.error:
          emit(state.copyWith(
              status: FormzStatus.submissionFailure,
              errorMessage: result.message));
          break;
        case GoogleLoginFlowStatus.partial:
          emit(state.copyWith(
              status: FormzStatus.submissionInProgress,
              infoMessage: result.message,
              googleUser: result.googleUser,
              newUserType: NewUserType.google));
          break;
        case GoogleLoginFlowStatus.success:
          final loginResult = await _loginUseCase.execute(
              result.googleUser!.email!,
              result.googleUser!.uid,
              LoginType.google);

          if (loginResult == null) {
            emit(state.copyWith(
                status: FormzStatus.submissionFailure,
                errorMessage: 'Login failed'));
            break;
          }

          _authBloc.add(AuthNewSession(loginResult));
          emit(
            state.copyWith(
              status: FormzStatus.submissionSuccess,
              googleUser: result.googleUser,
              newUserType: NewUserType.google,
            ),
          );
          break;
        case GoogleLoginFlowStatus.inital:
          break;
      }
    } on GoogleAuthServiceException catch (error) {
      emit(state.copyWith(
          status: FormzStatus.submissionFailure, errorMessage: error.message));
    } on ResourceNotFound catch (_) {
      emit(state.copyWith(
          status: FormzStatus.submissionFailure,
          errorMessage: 'Inker service not found'));
    } on HttpException catch (_) {
      emit(state.copyWith(
          status: FormzStatus.submissionFailure,
          errorMessage: 'Error from Inker service'));
    } on Exception catch (error, stackTrace) {
      dev.logError(error, stackTrace);
      emit(state.copyWith(
          status: FormzStatus.submissionFailure,
          errorMessage: 'Not Catched Error :o'));
    }
  }

  _mapCreateUserByTypeBackButtonPressedToState(
      CreateUserByTypeBackButtonPressed event, Emitter<LoginState> emit) {
    emit(const LoginState());
  }

  _mapCreateCustomerWithInkerFormInfoToState(
      CreateCustomerWithInkerFormInfo event, Emitter<LoginState> emit) {
    emit(state.copyWith(
        userTypeToCreate: UserType.customer, newUserType: NewUserType.inker));
  }

  _mapCreateCustomerWithGoogleSignInInfoToState(
      CreateCustomerWithGoogleSignInInfo event,
      Emitter<LoginState> emit) async {
    try {
      dev.inspect(state.googleUser, 'googleUser');
      final customer = await _createCustomerUseCase.execute(
          username: state.googleUser!.displayName!,
          firstName: state.googleUser!.displayName!,
          email: state.googleUser!.email!,
          password: state.googleUser!.uid,
          socialMediaType: SocialMediaType.google);

      if (customer == null) {
        throw CreateCustomerFailed();
      }

      final loginResult = await _loginUseCase.execute(
          state.googleUser!.email!, state.googleUser!.uid, LoginType.google);

      if (loginResult == null) {
        throw CustomerLoginFailed();
      }

      _authBloc.add(AuthNewSession(loginResult));
      emit(
        state.copyWith(
          status: FormzStatus.submissionSuccess,
          googleUser: state.googleUser,
          newUserType: NewUserType.google,
        ),
      );
    } on CustomerLoginFailed {
      emit(state.copyWith(
        status: FormzStatus.submissionFailure,
        errorMessage: 'Login failed',
      ));
    } on CreateCustomerFailed {
      emit(state.copyWith(
        status: FormzStatus.submissionFailure,
        errorMessage: 'Craete customer with Google sign in info failed',
      ));
    } on UserAlreadyExistsException {
      emit(state.copyWith(
          status: FormzStatus.submissionFailure,
          errorMessage: 'User ${state.googleUser!.email} already exists'));
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

  _mapLoginErrorMessageEmmitedToState(
      LoginClearMessages event, Emitter<LoginState> emit) {
    emit(state.copyWith(errorMessage: null, infoMessage: null));
  }

  _mapCreateAccountWithInkerInfoPressedToState(
      CreateAccountWithInkerInfoPressed event, Emitter<LoginState> emit) {
    emit(state.copyWith(
      newUserType: NewUserType.inker,
    ));
  }

  _mapCreateArtistUserPressedToState(
      CreateArtistUserPressed event, Emitter<LoginState> emit) {
    emit(state.copyWith(
      newUserType: NewUserType.inker,
      userTypeToCreate: UserType.artist,
    ));
  }
}
