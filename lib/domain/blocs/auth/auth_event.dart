part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthStatusChanged extends AuthEvent {
  const AuthStatusChanged(this.status);

  final AuthStatus status;

  @override
  List<Object> get props => [status];
}

class AuthLogoutRequested extends AuthEvent {}

class AuthNewSession extends AuthEvent {
  const AuthNewSession(this.session);

  final Session session;

  @override
  List<Object> get props => [session];
}
