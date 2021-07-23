import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:inker_studio/domain/blocs/auth/auth_status.dart';
import 'package:inker_studio/domain/models/session/session.dart';
import 'package:inker_studio/domain/services/auth/auth_service.dart';
import 'package:inker_studio/domain/services/session/session_service.dart';
import 'package:inker_studio/domain/services/user/user_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(
      {required AuthService authService,
      required LocalSessionService sessionService,
      required UserService userService})
      : this._authService = authService,
        this._sessionService = sessionService,
        super(AuthState.unknown()) {
    _authStatusSubscription = authService.status.listen(
      (status) => add(AuthStatusChanged(status)),
    );
  }
  AuthService _authService;
  LocalSessionService _sessionService;

  late StreamSubscription<AuthStatus> _authStatusSubscription;
  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is AuthStatusChanged) {
      yield await _mapAuthStatusChangedToState(event);
    } else if (event is AuthLogoutRequested) {
      _authService.logut();
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
    try {
      final session = await _sessionService.getSession();
      return session;
    } on Exception {
      return null;
    }
  }
}
