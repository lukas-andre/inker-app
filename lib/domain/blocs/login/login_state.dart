part of 'login_bloc.dart';

enum NewUserType { google, facebook, apple, unknown }

class LoginState extends Equatable {
  const LoginState(
      {this.status = FormzStatus.pure,
      this.username = const UsernameInput.pure(),
      this.password = const PasswordInput.pure(),
      this.isNewUser = false,
      this.newUserType = NewUserType.unknown,
      this.googleUser});

  final FormzStatus status;
  final UsernameInput username;
  final PasswordInput password;
  final bool isNewUser;
  final NewUserType newUserType;
  final firebase.User? googleUser;

  LoginState copyWith({
    FormzStatus? status,
    UsernameInput? username,
    PasswordInput? password,
    bool? isNewUser,
    NewUserType? newUserType,
    firebase.User? googleUser,
  }) {
    return LoginState(
      status: status ?? this.status,
      username: username ?? this.username,
      password: password ?? this.password,
      isNewUser: isNewUser ?? this.isNewUser,
      newUserType: newUserType ?? this.newUserType,
      googleUser: googleUser ?? this.googleUser,
    );
  }

  @override
  List<Object> get props =>
      [status, username, password, isNewUser, newUserType];

  @override
  bool get stringify => true;
}
