part of 'customer_creation_bloc.dart';

class CustomerCreationState extends Equatable {
  const CustomerCreationState({
    this.status = FormzStatus.pure,
    this.username = const UsernameInput.pure(),
    this.firstName = const NameInput.pure(),
    this.lastName = const NameInput.pure(),
    this.password = const PasswordInput.pure(),
    this.repeatPassword = const PasswordInput.pure(),
    this.email = const EmailInput.pure(),
    this.phoneNumber = const PhoneNumberInput.pure(),
    this.errorMessage,
    this.initialCountry = 'CL',
    this.isoCode = 'CL',
  });

  final FormzStatus status;
  final String? errorMessage;
  final UsernameInput username;
  final NameInput firstName;
  final NameInput lastName;
  final PasswordInput password;
  final PasswordInput repeatPassword;
  final EmailInput email;
  final PhoneNumberInput phoneNumber;
  final String initialCountry;
  final String isoCode;

  CustomerCreationState copyWith({
    FormzStatus? status,
    UsernameInput? username,
    NameInput? firstName,
    NameInput? lastName,
    PasswordInput? password,
    PasswordInput? repeatPassword,
    EmailInput? email,
    PhoneNumberInput? phoneNumber,
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
