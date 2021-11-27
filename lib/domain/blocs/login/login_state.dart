part of 'login_bloc.dart';

enum NewUserType { google, facebook, apple, inker, unknown }

class LoginState extends Equatable {
  const LoginState(
      {this.status = FormzStatus.pure,
      this.username = const UsernameInput.pure(),
      this.password = const PasswordInput.pure(),
      this.newUserType = NewUserType.unknown,
      this.googleUser,
      this.errorMessage,
      this.infoMessage,
      this.userTypeToCreate});

  final FormzStatus status;
  final UsernameInput username;
  final PasswordInput password;
  final NewUserType newUserType;
  final firebase_auth.User? googleUser;
  final String? errorMessage;
  final String? infoMessage;
  final String? userTypeToCreate;

  LoginState copyWith({
    FormzStatus? status,
    UsernameInput? username,
    PasswordInput? password,
    bool? isNewUser,
    NewUserType? newUserType,
    String? errorMessage,
    String? infoMessage,
    String? userTypeToCreate,
    firebase_auth.User? googleUser,
  }) {
    return LoginState(
      status: status ?? this.status,
      username: username ?? this.username,
      password: password ?? this.password,
      newUserType: newUserType ?? this.newUserType,
      googleUser: googleUser ?? this.googleUser,
      errorMessage: errorMessage ?? this.errorMessage,
      infoMessage: infoMessage ?? this.infoMessage,
      userTypeToCreate: userTypeToCreate ?? this.userTypeToCreate,
    );
  }

  @override
  List<Object?> get props => [
        status,
        username,
        password,
        newUserType,
        googleUser,
        errorMessage,
        infoMessage
      ];

  @override
  bool get stringify => true;
}
