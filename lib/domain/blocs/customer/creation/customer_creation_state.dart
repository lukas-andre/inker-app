part of 'customer_creation_bloc.dart';

class CustomerCreationState extends Equatable {
  const CustomerCreationState(
      {this.status = FormzStatus.pure,
      this.username = const Username.pure(),
      this.firstName = const Name.pure(),
      this.lastName = const Name.pure(),
      this.password = const Password.pure(),
      this.repeatPassword = const Password.pure(),
      this.email = const Email.pure(),
      this.phoneNumber = const PhoneNumber.pure()});

  final FormzStatus status;
  final Username username;
  final Name firstName;
  final Name lastName;
  final Password password;
  final Password repeatPassword;
  final Email email;
  final PhoneNumber phoneNumber;

  CustomerCreationState copyWith({
    FormzStatus? status,
    Username? username,
    Name? firstName,
    Name? lastName,
    Password? password,
    Password? repeatPassword,
    Email? email,
    PhoneNumber? phoneNumber,
  }) {
    return CustomerCreationState(
      status: status ?? this.status,
      username: username ?? this.username,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      password: password ?? this.password,
      repeatPassword: repeatPassword ?? this.repeatPassword,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }

  @override
  List<Object> get props =>
      [status, username, password, repeatPassword, email, phoneNumber];
}
