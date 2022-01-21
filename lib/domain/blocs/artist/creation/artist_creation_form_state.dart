import 'package:equatable/equatable.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart' show FormzInput, FormzMixin;

enum SubmissionStatus { pure, inProgress, success, failded }

class ArtistCreationFormState extends Equatable with FormzMixin {
  final UsernameInput username;
  final NameInput firstName;
  final NameInput lastName;
  final PasswordInput password;
  final PasswordInput repeatPassword;
  final EmailInput email;
  final PhoneNumberInput phoneNumber;
  final LocationInput location;
  final SubmissionStatus submissionStatus;

  const ArtistCreationFormState({
    this.username = const UsernameInput.pure(),
    this.firstName = const NameInput.pure(),
    this.lastName = const NameInput.pure(),
    this.password = const PasswordInput.pure(),
    this.repeatPassword = const PasswordInput.pure(),
    this.email = const EmailInput.pure(),
    this.phoneNumber = const PhoneNumberInput.pure(),
    this.location = const LocationInput.pure(),
    this.submissionStatus = SubmissionStatus.pure,
  });

  @override
  List<FormzInput> get inputs => [
        username,
        firstName,
        lastName,
        password,
        repeatPassword,
        email,
        phoneNumber,
        location
      ];

  ArtistCreationFormState copyWith({
    UsernameInput? username,
    NameInput? firstName,
    NameInput? lastName,
    PasswordInput? password,
    PasswordInput? repeateadPassword,
    EmailInput? email,
    PhoneNumberInput? phoneNumber,
    LocationInput? location,
    SubmissionStatus? submissionStatus,
  }) {
    return ArtistCreationFormState(
      username: username ?? this.username,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      password: password ?? this.password,
      repeatPassword: repeateadPassword ?? repeatPassword,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      location: location ?? this.location,
      submissionStatus: submissionStatus ?? this.submissionStatus,
    );
  }

  @override
  String toString() {
    return 'ArtistCreationFormState(username: $username, firstName: $firstName, lastName: $lastName, password: $password, repeatPassword: $repeatPassword, email: $email, phoneNumber: $phoneNumber, location: $location, submissionStatus: $submissionStatus)';
  }

  @override
  List<Object> get props {
    return [
      username,
      firstName,
      lastName,
      password,
      repeatPassword,
      email,
      phoneNumber,
      location,
      submissionStatus,
    ];
  }
}
