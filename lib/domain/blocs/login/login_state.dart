part of 'login_bloc.dart';

class LoginState extends Equatable {
  const LoginState({
    this.status = FormzStatus.pure,
    this.username = const UsernameInput.pure(),
    this.password = const PasswordInput.pure(),
  });

  final FormzStatus status;
  final UsernameInput username;
  final PasswordInput password;

  LoginState copyWith({
    FormzStatus? status,
    UsernameInput? username,
    PasswordInput? password,
  }) {
    return LoginState(
      status: status ?? this.status,
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  @override
  List<Object> get props => [status, username, password];
}
