import 'dart:async' show StreamSubscription;

import 'package:bloc/bloc.dart' show Bloc;
import 'package:equatable/equatable.dart' show Equatable;

import 'package:inker_studio/domain/blocs/auth/auth_status.dart';
import 'package:inker_studio/domain/models/session/session.dart';
import 'package:inker_studio/domain/services/auth/auth_service.dart';
import 'package:inker_studio/domain/services/session/session_service.dart';
import 'package:inker_studio/domain/usescases/auth/logout_usecase.dart';
import 'package:inker_studio/utils/dev.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  static const String className = 'AuthBloc';

  AuthBloc(
      {required AuthService authService,
      required LocalSessionService sessionService,
      required LogoutUseCase logoutUseCase})
      : _authService = authService,
        _sessionService = sessionService,
        _logoutUseCase = logoutUseCase,
        super(const AuthState.unknown()) {
    _authStatusSubscription = _authService.status.listen(
      (status) async => add(AuthStatusChanged(status)),
    );
  }
  final AuthService _authService;
  final LocalSessionService _sessionService;
  final LogoutUseCase _logoutUseCase;

  late StreamSubscription<AuthStatus> _authStatusSubscription;
  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    dev.log('event: $event', className, 'mapEventToState');
    // dev.inspect(event, 'auth:event');

    if (event is AuthStatusChanged) {
      yield await _mapAuthStatusChangedToState(event);
    } else if (event is AuthNewSession) {
      dev.log('AuthNewSession', className);
      yield await _newSession(event);
    } else if (event is AuthLogoutRequested) {
      await _logoutUseCase.execute(event.session);
      yield const AuthState.unauthenticated();
    }
  }

  @override
  Future<void> close() {
    _authStatusSubscription.cancel();
    _authService.dispose();
    return super.close();
  }

  Future<AuthState> _mapAuthStatusChangedToState(
    AuthStatusChanged event,
  ) async {
    switch (event.status) {
      case AuthStatus.unauthenticated:
        return const AuthState.unauthenticated();
      case AuthStatus.authenticated:
        final session = await _tryGetSession();
        return session != null
            ? AuthState.authenticated(session)
            : const AuthState.unauthenticated();
      default:
        return const AuthState.unknown();
    }
  }

  Future<Session?> _tryGetSession() async {
    dev.log('_tryGetSession called', className, '_tryGetSession');
    try {
      final session = await _sessionService.tryGetActiveSession();
      dev.log('session: $session', className, '_tryGetSession');
      return session;
    } on Exception catch (_, stackTrace) {
      dev.logError(_, stackTrace);
      return null;
    }
  }

  Future<AuthState> _newSession(AuthNewSession event) async {
    return AuthState.authenticated(event.session);
  }
}
