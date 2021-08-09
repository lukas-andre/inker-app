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
      this.phoneNumber = const PhoneNumber.pure(),
      this.errorMessage});

  final FormzStatus status;
  final String? errorMessage;
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
    String? errorMessage,
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
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
        status,
        username,
        firstName,
        lastName,
        password,
        repeatPassword,
        email,
        phoneNumber,
        errorMessage
      ];
}
