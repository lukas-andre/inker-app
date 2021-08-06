part of 'customer_creation_bloc.dart';

abstract class CustomerCreationEvent extends Equatable {
  const CustomerCreationEvent();

  @override
  List<Object> get props => [];
}

class CustomerCreationUsernameChanged extends CustomerCreationEvent {
  const CustomerCreationUsernameChanged(this.username);

  final String username;

  @override
  List<Object> get props => [username];
}

class CustomerCreationFirstNameChanged extends CustomerCreationEvent {
  const CustomerCreationFirstNameChanged(this.firstName);

  final String firstName;

  @override
  List<Object> get props => [firstName];
}

class CustomerCreationLastNameChanged extends CustomerCreationEvent {
  const CustomerCreationLastNameChanged(this.lastName);

  final String lastName;

  @override
  List<Object> get props => [lastName];
}

class CustomerCreationPasswordChanged extends CustomerCreationEvent {
  const CustomerCreationPasswordChanged(this.password);

  final String password;

  @override
  List<Object> get props => [password];
}

class CustomerCreationRepeatedPasswordChanged extends CustomerCreationEvent {
  const CustomerCreationRepeatedPasswordChanged(this.repeteadPassword);

  final String repeteadPassword;

  @override
  List<Object> get props => [repeteadPassword];
}

class CustomerCreationEmailChanged extends CustomerCreationEvent {
  const CustomerCreationEmailChanged(this.email);

  final String email;

  @override
  List<Object> get props => [email];
}

class CustomerCreationPhoneNumberChanged extends CustomerCreationEvent {
  const CustomerCreationPhoneNumberChanged(this.phoneNumber);

  final String phoneNumber;

  @override
  List<Object> get props => [phoneNumber];
}

class CustomerCreationSubmitted extends CustomerCreationEvent {
  const CustomerCreationSubmitted();
}
