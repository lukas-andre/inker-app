import 'package:bloc/bloc.dart' show Bloc;
import 'package:equatable/equatable.dart' show Equatable;
import 'package:formz/formz.dart' show Formz, FormzStatus, FormzStatusX;
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';
import 'package:inker_studio/domain/models/login/login_type.dart';
import 'package:inker_studio/domain/models/login/password.dart';
import 'package:inker_studio/domain/models/login/username.dart';
import 'package:inker_studio/usescases/login_usescase.dart';
import 'package:inker_studio/utils/dev.dart' show dev;

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  static const className = 'LoginBloc';

  LoginBloc({
    required LoginUsesCase loginUseCase,
    required AuthBloc authBloc,
  })  : _loginUseCase = loginUseCase,
        _authBloc = authBloc,
        super(const LoginState());

  final LoginUsesCase _loginUseCase;
  final AuthBloc _authBloc;

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    dev.log('event $event', className, 'event');
    if (event is LoginUsernameChanged) {
      yield _mapUsernameChangedToState(event, state);
    } else if (event is LoginPasswordChanged) {
      yield _mapPasswordChangedToState(event, state);
    } else if (event is LoginSubmitted) {
      yield* _mapLoginSubmittedToState(event, state);
    }
  }

  LoginState _mapUsernameChangedToState(
    LoginUsernameChanged event,
    LoginState state,
  ) {
    final username = Username.dirty(event.username);
    return state.copyWith(
      username: username,
      status: Formz.validate([state.password, username]),
    );
  }

  LoginState _mapPasswordChangedToState(
    LoginPasswordChanged event,
    LoginState state,
  ) {
    final password = Password.dirty(event.password);
    return state.copyWith(
      password: password,
      status: Formz.validate([password, state.username]),
    );
  }

  Stream<LoginState> _mapLoginSubmittedToState(
    LoginSubmitted event,
    LoginState state,
  ) async* {
    // TODO: Ver que hacer si es el estado no es valido
    if (state.status.isValidated) {
      yield state.copyWith(status: FormzStatus.submissionInProgress);
      try {
        final session = await _loginUseCase.execute(
            state.username.value, state.password.value, LoginType.email);
        dev.log('session: $session', className);
        if (session == null) {
          yield state.copyWith(status: FormzStatus.submissionFailure);
        }

        _authBloc.add(AuthNewSession(session!));
        yield state.copyWith(status: FormzStatus.submissionSuccess);
      } on Exception catch (_) {
        yield state.copyWith(status: FormzStatus.submissionFailure);
      }
    }
  }
}
