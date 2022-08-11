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
    this.addressExtra = const AddressExtraInput.pure(),
  });

  final NameInput firstName;
  final NameInput lastName;
  final UsernameInput username;
  final EmailInput email;
  final PhoneNumberInput phoneNumber;
  final PasswordInput password;
  final ConfirmedPasswordInput confirmedPassword;
  final LocationInput location;
  final AddressExtraInput addressExtra;

  @override
  List<FormzInput> get inputs => [
        firstName,
        lastName,
        username,
        email,
        phoneNumber,
        password,
        confirmedPassword,
        location,
        addressExtra
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
    AddressExtraInput? addressExtra,
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
      addressExtra: addressExtra ?? this.addressExtra,
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
        location,
        addressExtra
      ];

  @override
  bool get stringify => true;
}

enum AddressType {
  @JsonValue('HOME')
  home,
  @JsonValue('DEPARTMENT')
  apartment,
  @JsonValue('OFFICE')
  office,
  @JsonValue('STUDIO')
  studio,
  @JsonValue('OTHER')
  other,
  none;

  String? get displayName {
    switch (this) {
      case AddressType.home:
        return 'Casa 🏠';
      case AddressType.apartment:
        return 'Departamento 🏢';
      case AddressType.office:
        return 'Oficina 🏢';
      case AddressType.studio:
        return 'Estudio 🏢';
      case AddressType.other:
        return 'Otro 🏢';
      default:
        return null;
    }
  }
}

class AddressTypeOption extends Equatable {
  final AddressType type;
  final bool isSelected;

  const AddressTypeOption({
    required this.type,
    required this.isSelected,
  });

  @override
  List<Object?> get props => [type, isSelected];

  @override
  bool get stringify => true;

  AddressTypeOption copyWith({
    required AddressType type,
    required bool isSelected,
  }) {
    return AddressTypeOption(
      type: type,
      isSelected: isSelected,
    );
  }
}

enum RegisterArtistStatus {
  initial,
  submitted,
  ok,
  error,
}

enum PartialFormStatus {
  initial,
  submitted,
  ok,
  error,
}

class RegisterArtistState extends Equatable {
  const RegisterArtistState(
      {this.pageIndex = 0,
      this.initialProgress = 0.2,
      this.progress = 0.4,
      this.addressTypeOption = const [
        AddressTypeOption(type: AddressType.home, isSelected: true),
        AddressTypeOption(type: AddressType.apartment, isSelected: false),
      ],
      this.registerState = RegisterArtistStatus.initial,
      this.partialFormStatus = PartialFormStatus.initial,
      this.errorMessage,
      required this.form});

  final int pageIndex;
  final double initialProgress;
  final double progress;
  final RegisterArtistForm form;
  final List<AddressTypeOption> addressTypeOption;
  final RegisterArtistStatus registerState;
  final String? errorMessage;
  final PartialFormStatus partialFormStatus;

  @override
  List<Object?> get props => [
        pageIndex,
        initialProgress,
        progress,
        form,
        addressTypeOption,
        registerState,
        errorMessage,
        partialFormStatus
      ];

  @override
  bool get stringify => true;

  AddressType get addressType =>
      addressTypeOption.firstWhere((option) => option.isSelected).type;

  RegisterArtistState copyWith({
    int? pageIndex,
    double? initialProgress,
    double? progress,
    RegisterArtistForm? form,
    List<AddressTypeOption>? addressTypeOption,
    RegisterArtistStatus? registerState,
    String? errorMessage,
    PartialFormStatus? partialFormStatus,
  }) {
    return RegisterArtistState(
      pageIndex: pageIndex ?? this.pageIndex,
      initialProgress: initialProgress ?? this.initialProgress,
      progress: progress ?? this.progress,
      form: form ?? this.form,
      addressTypeOption: addressTypeOption ?? this.addressTypeOption,
      registerState: registerState ?? this.registerState,
      errorMessage: errorMessage ?? this.errorMessage,
      partialFormStatus: partialFormStatus ?? this.partialFormStatus,
    );
  }
}
