part of 'register_artist_bloc.dart';

class RegisterArtistForm extends Equatable with FormzMixin {
  RegisterArtistForm({
    this.username = const UsernameInput.pure(),
    this.firstName = const NameInput.pure(),
    this.lastName = const NameInput.pure(),
    this.email = const EmailInput.pure(),
    this.phoneNumber = const PhoneNumberInput.pure(),
    this.password = const PasswordInput.pure(),
    this.confirmedPassword = const ConfirmedPasswordInput.pure(),
    this.location = const LocationInput.pure(),
  });

  final NameInput firstName;
  final NameInput lastName;
  final UsernameInput username;
  final EmailInput email;
  final PhoneNumberInput phoneNumber;
  final PasswordInput password;
  final ConfirmedPasswordInput confirmedPassword;
  final LocationInput location;

  @override
  List<FormzInput> get inputs => [
        firstName,
        lastName,
        username,
        email,
        phoneNumber,
        password,
        confirmedPassword,
        location
      ];

  RegisterArtistForm copyWith({
    NameInput? firstName,
    NameInput? lastName,
    UsernameInput? username,
    EmailInput? email,
    PhoneNumberInput? phoneNumber,
    PasswordInput? password,
    ConfirmedPasswordInput? confirmedPassword,
    LocationInput? location,
  }) {
    return RegisterArtistForm(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      username: username ?? this.username,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      password: password ?? this.password,
      confirmedPassword: confirmedPassword ?? this.confirmedPassword,
      location: location ?? this.location,
    );
  }

  @override
  List<Object> get props => [
        firstName,
        lastName,
        username,
        email,
        phoneNumber,
        password,
        confirmedPassword,
        location
      ];

  @override
  bool get stringify => true;
}

class RegisterArtistState extends Equatable {
  const RegisterArtistState(
      {this.pageIndex = 0,
      this.initialProgress = 0.2,
      this.progress = 0.4,
      this.autoCompleteAddressResult,
      required this.searchOnChange,
      required this.form});

  final int pageIndex;
  final double initialProgress;
  final double progress;
  final RegisterArtistForm form;
  final BehaviorSubject<String> searchOnChange;
  final List<Prediction>? autoCompleteAddressResult;

  @override
  List<Object> get props => [pageIndex, initialProgress, progress, form];

  @override
  bool get stringify => true;

  RegisterArtistState copyWith({
    int? pageIndex,
    double? initialProgress,
    double? progress,
    RegisterArtistForm? form,
    BehaviorSubject<String>? searchOnChange,
    List<Prediction>? autoCompleteAddressResult,
  }) {
    return RegisterArtistState(
      pageIndex: pageIndex ?? this.pageIndex,
      initialProgress: initialProgress ?? this.initialProgress,
      progress: progress ?? this.progress,
      form: form ?? this.form,
      searchOnChange: searchOnChange ?? this.searchOnChange,
      autoCompleteAddressResult:
          autoCompleteAddressResult ?? this.autoCompleteAddressResult,
    );
  }
}
