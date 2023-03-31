part of 'register_customer_bloc.dart';

abstract class RegisterCustomerEvent extends Equatable {
  const RegisterCustomerEvent();

  @override
  List<Object> get props => [];
}

class RegisterCustomerNameChanged extends RegisterCustomerEvent {
  final String name;

  const RegisterCustomerNameChanged(this.name);

  @override
  List<Object> get props => [name];
}

class RegisterCustomerLastNameChanged extends RegisterCustomerEvent {
  final String name;

  const RegisterCustomerLastNameChanged(this.name);

  @override
  List<Object> get props => [name];
}

class RegisterCustomerEmailChanged extends RegisterCustomerEvent {
  final String email;

  const RegisterCustomerEmailChanged(this.email);

  @override
  List<Object> get props => [email];
}

class RegisterCustomerPhoneNumberChanged extends RegisterCustomerEvent {
  final PhoneNumber phoneNumber;

  const RegisterCustomerPhoneNumberChanged(this.phoneNumber);

  @override
  List<Object> get props => [phoneNumber];
}

class RegisterCustomerPasswordChanged extends RegisterCustomerEvent {
  final String password;

  const RegisterCustomerPasswordChanged(this.password);

  @override
  List<Object> get props => [password];
}

class RegisterCustomerConfirmedPasswordChanged extends RegisterCustomerEvent {
  final String password;

  const RegisterCustomerConfirmedPasswordChanged(this.password);

  @override
  List<Object> get props => [password];
}

class RegisterCustomerRegisterPressed extends RegisterCustomerEvent {
  const RegisterCustomerRegisterPressed();

  @override
  List<Object> get props => [];
}

class RegisterCustomerClearState extends RegisterCustomerEvent {
  const RegisterCustomerClearState();

  @override
  List<Object> get props => [];
}

class RegisterCustomerClearForm extends RegisterCustomerEvent {
  const RegisterCustomerClearForm();

  @override
  List<Object> get props => [];
}

class RegisterCustomerNextPagePressed extends RegisterCustomerEvent {
  final int page;
  const RegisterCustomerNextPagePressed(this.page);

  @override
  List<Object> get props => [page];
}
