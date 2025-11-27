part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginIdentifierChanged extends LoginEvent {
  const LoginIdentifierChanged(this.identifier);

  final String identifier;

  @override
  List<Object> get props => [identifier];
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

class CreateAccountWithInkerInfoPressed extends LoginEvent {
  const CreateAccountWithInkerInfoPressed();
}

class CreateArtistUserPressed extends LoginEvent {
  const CreateArtistUserPressed();
}

class CreateUserByTypeBackButtonPressed extends LoginEvent {
  const CreateUserByTypeBackButtonPressed();
}

class CreateCustomerWithGoogleSignInInfo extends LoginEvent {
  const CreateCustomerWithGoogleSignInInfo();
}

class CreateArtistWithGoogleSignInInfo extends LoginEvent {
  const CreateArtistWithGoogleSignInInfo();
}

class CreateCustomerWithInkerFormInfo extends LoginEvent {
  const CreateCustomerWithInkerFormInfo();
}

class CreateArtistWithInkerFormInfo extends LoginEvent {
  const CreateArtistWithInkerFormInfo();
}

class LoginClearMessages extends LoginEvent {
  const LoginClearMessages();
}
