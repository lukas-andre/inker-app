part of 'auth_bloc.dart';

class AuthState extends Equatable {
  const AuthState._({
    this.status = AuthStatus.unknown,
    this.session = Session.empty,
  });

  const AuthState.unknown() : this._();

  const AuthState.authenticated(Session session)
      : this._(status: AuthStatus.authenticated, session: session);

  const AuthState.unauthenticated()
      : this._(status: AuthStatus.unauthenticated);

  final AuthStatus status;
  final Session session;

  @override
  List<Object> get props => [];

  @override
  bool get stringify => true;
}
