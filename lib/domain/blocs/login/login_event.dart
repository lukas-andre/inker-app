part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginUsernameChanged extends LoginEvent {
  const LoginUsernameChanged(this.username);

  final String username;

  @override
  List<Object> get props => [username];
}

class LoginPasswordChanged extends LoginEvent {
  const LoginPasswordChanged(this.password);

  final String password;

  @override
  List<Object> get props => [password];
}

class LoginSubmitted extends LoginEvent {
  const LoginSubmitted();
}

class SignInWithGooglePressed extends LoginEvent {
  const SignInWithGooglePressed();
}

class CreateCustomerUserPressed extends LoginEvent {
  const CreateCustomerUserPressed();
}

class CreateUserByTypeBackButtonPressedInGoogleSinginFlow extends LoginEvent {
  const CreateUserByTypeBackButtonPressedInGoogleSinginFlow();
}

class CreateCustomerWithGoogleSignInInfo extends LoginEvent {
  const CreateCustomerWithGoogleSignInInfo();
}

class CreateCustomerWithInkerFormInfo extends LoginEvent {
  const CreateCustomerWithInkerFormInfo();
}
