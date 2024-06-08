import 'dart:async' show StreamSubscription;

import 'package:equatable/equatable.dart' show Equatable;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/auth/auth_status.dart';
import 'package:inker_studio/domain/models/session/session.dart';
import 'package:inker_studio/domain/services/auth/auth_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/domain/usescases/auth/logout_usecase.dart';
import 'package:inker_studio/utils/dev.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  static const String className = 'AuthBloc';

  AuthBloc({
    required AuthService authService,
    required LogoutUseCase logoutUseCase,
    required LocalSessionService sessionService,
  })  : _authService = authService,
        _sessionService = sessionService,
        _logoutUseCase = logoutUseCase,
        super(const AuthState.unknown()) {
    _authStatusSubscription = _authService.status.listen(
      (status) async => add(AuthStatusChanged(status)),
    );

    on<AuthStatusChanged>(
        (event, emit) => _mapAuthStatusChangedToState(event, emit));
    on<AuthNewSession>((event, emit) => _newSession(event, emit));
    on<AuthLogoutRequested>((event, emit) async {
      try {
        await _logoutUseCase.execute(event.session);
        emit(const AuthState.unauthenticated());
      } catch (e) {
        emit(const AuthState.unknown());
      }
    });
  }

  final AuthService _authService;
  final LocalSessionService _sessionService;
  final LogoutUseCase _logoutUseCase;

  late StreamSubscription<AuthStatus> _authStatusSubscription;

  @override
  Future<void> close() {
    _authStatusSubscription.cancel();
    _authService.dispose();
    return super.close();
  }

  Future<void> _mapAuthStatusChangedToState(
    AuthStatusChanged event,
    Emitter<AuthState> emit,
  ) async {
    switch (event.status) {
      case AuthStatus.unauthenticated:
        emit(const AuthState.unauthenticated());
        break;
      case AuthStatus.authenticated:
        final session = await _tryGetSession();
        session != null
            ? emit(AuthState.authenticated(session))
            : emit(const AuthState.unauthenticated());
        break;
      default:
        emit(const AuthState.unknown());
        break;
    }
  }

  Future<Session?> _tryGetSession() async {
    dev.log('_tryGetSession called', className, '_tryGetSession');
    try {
      final session = await _sessionService.tryGetActiveSession();
      dev.log('session: $session', className, '_tryGetSession');
      return session;
    } on Exception catch (_, stackTrace) {
      // ignore: no_wildcard_variable_uses
      dev.logError(_, stackTrace);
      return null;
    }
  }

  Future<void> _newSession(
      AuthNewSession event, Emitter<AuthState> emit) async {
    emit(AuthState.authenticated(event.session));
  }
}
