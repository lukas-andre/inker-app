part of 'login_bloc.dart';

enum NewUserType { google, facebook, apple, inker, unknown }

enum UserStatus { inactive, unknown, active }

enum LoginStatus { invalidCredentials, unknown, ok, unknownError }

class LoginState extends Equatable {
  const LoginState(
      {this.status = FormzStatus.pure,
      this.identifier = const IdentifierInput.pure(),
      this.password = const PasswordInput.pure(),
      this.newUserType = NewUserType.unknown,
      this.googleUser,
      this.errorMessage,
      this.infoMessage,
      this.userTypeToCreate,
      this.loginStatus = LoginStatus.unknown,
      this.userStatus = UserStatus.unknown});

  final FormzStatus status;
  final IdentifierInput identifier;
  final PasswordInput password;
  final NewUserType newUserType;
  final firebase_auth.User? googleUser;
  final String? errorMessage;
  final String? infoMessage;
  final String? userTypeToCreate;
  final UserStatus userStatus;
  final LoginStatus loginStatus;

  LoginState copyWith({
    FormzStatus? status,
    IdentifierInput? identifier,
    PasswordInput? password,
    bool? isNewUser,
    NewUserType? newUserType,
    String? errorMessage,
    String? infoMessage,
    String? userTypeToCreate,
    firebase_auth.User? googleUser,
    UserStatus? userStatus,
    LoginStatus? loginStatus,
  }) {
    return LoginState(
      status: status ?? this.status,
      identifier: identifier ?? this.identifier,
      password: password ?? this.password,
      newUserType: newUserType ?? this.newUserType,
      googleUser: googleUser ?? this.googleUser,
      errorMessage: errorMessage ?? this.errorMessage,
      infoMessage: infoMessage ?? this.infoMessage,
      userTypeToCreate: userTypeToCreate ?? this.userTypeToCreate,
      userStatus: userStatus ?? this.userStatus,
      loginStatus: loginStatus ?? this.loginStatus,
    );
  }

  @override
  List<Object?> get props => [
        status,
        identifier,
        password,
        newUserType,
        googleUser,
        errorMessage,
        infoMessage,
        userStatus,
        loginStatus
      ];

  @override
  bool get stringify => true;
}
