part of 'register_customer_bloc.dart';

class RegisterCustomerForm extends Equatable with FormzMixin {
  const RegisterCustomerForm({
    this.firstName = const NameInput.pure(),
    this.lastName = const NameInput.pure(),
    this.email = const EmailInput.pure(),
    this.phoneNumber = const PhoneNumberInput.pure(),
    this.password = const PasswordInput.pure(),
    this.confirmedPassword = const ConfirmedPasswordInput.pure(),
  });

  final NameInput firstName;
  final NameInput lastName;
  final EmailInput email;
  final PhoneNumberInput phoneNumber;
  final PasswordInput password;
  final ConfirmedPasswordInput confirmedPassword;

  @override
  List<FormzInput> get inputs => [
        firstName,
        lastName,
        email,
        phoneNumber,
        password,
        confirmedPassword,
      ];

  RegisterCustomerForm copyWith({
    NameInput? firstName,
    NameInput? lastName,
    EmailInput? email,
    PhoneNumberInput? phoneNumber,
    PasswordInput? password,
    ConfirmedPasswordInput? confirmedPassword,
  }) {
    return RegisterCustomerForm(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      password: password ?? this.password,
      confirmedPassword: confirmedPassword ?? this.confirmedPassword,
    );
  }

  @override
  List<Object> get props => [
        firstName,
        lastName,
        email,
        phoneNumber,
        password,
        confirmedPassword,
      ];

  @override
  bool get stringify => true;
}

enum RegisterCustomerStatus {
  initial,
  submitted,
  ok,
  error,
}

class RegisterCustomerState extends Equatable {
  const RegisterCustomerState(
      {this.pageIndex = 0,
      this.initialProgress = 0.2,
      this.progress = 0.4,
      this.registerState = RegisterCustomerStatus.initial,
      this.errorMessage,
      required this.form});

  final int pageIndex;
  final double initialProgress;
  final double progress;
  final RegisterCustomerForm form;
  final RegisterCustomerStatus registerState;
  final String? errorMessage;

  @override
  List<Object?> get props => [
        pageIndex,
        initialProgress,
        progress,
        form,
        registerState,
        errorMessage,
      ];

  @override
  bool get stringify => true;

  RegisterCustomerState copyWith({
    int? pageIndex,
    double? initialProgress,
    double? progress,
    RegisterCustomerForm? form,
    RegisterCustomerStatus? registerState,
    String? errorMessage,
  }) {
    return RegisterCustomerState(
      pageIndex: pageIndex ?? this.pageIndex,
      initialProgress: initialProgress ?? this.initialProgress,
      progress: progress ?? this.progress,
      form: form ?? this.form,
      registerState: registerState ?? this.registerState,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
