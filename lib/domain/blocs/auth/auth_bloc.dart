import 'dart:developer' as developer;
import 'dart:async' show StreamSubscription;

import 'package:bloc/bloc.dart' show Bloc;
import 'package:equatable/equatable.dart' show Equatable;
import 'package:inker_studio/domain/blocs/auth/auth_status.dart';
import 'package:inker_studio/domain/models/session/session.dart';
import 'package:inker_studio/domain/services/auth/auth_service.dart';
import 'package:inker_studio/domain/services/session/session_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  static const String className = 'Authbloc';

  AuthBloc(
      {required AuthService authService,
      required LocalSessionService sessionService})
      : _authService = authService,
        _sessionService = sessionService,
        super(const AuthState.unknown()) {
    _authStatusSubscription = authService.status.listen(
      (status) => add(AuthStatusChanged(status)),
    );
  }
  final AuthService _authService;
  final LocalSessionService _sessionService;

  late StreamSubscription<AuthStatus> _authStatusSubscription;
  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    developer.log('event: $event', name: '$className::mapEventToState');
    if (event is AuthStatusChanged) {
      yield await _mapAuthStatusChangedToState(event);
    } else if (event is AuthLogoutRequested) {
      _authService.logOut();
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
    developer.log('_tryGetSession called', name: className);
    try {
      final session = await _sessionService.getSession();
      developer.log('session: $session', name: className);
      return session;
    } on Exception {
      return null;
    }
  }
}
