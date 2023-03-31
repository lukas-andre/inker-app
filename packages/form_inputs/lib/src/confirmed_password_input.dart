import 'package:formz/formz.dart';

enum ConfirmedPasswordValidationError {
  empty,
  mismatch;

  String? get message {
    switch (this) {
      case ConfirmedPasswordValidationError.empty:
        return 'La contraseña no puede estar vacia.';
      case ConfirmedPasswordValidationError.mismatch:
        return 'Las contraseñas no coinciden.';
      default:
        return null;
    }
  }
}

class ConfirmedPasswordInput
    extends FormzInput<String, ConfirmedPasswordValidationError> {
  final String password;

  const ConfirmedPasswordInput.pure({this.password = ''}) : super.pure('');

  const ConfirmedPasswordInput.dirty(
      {required this.password, String value = ''})
      : super.dirty(value);

  @override
  ConfirmedPasswordValidationError? validator(String value) {
    if (value.isEmpty) {
      return ConfirmedPasswordValidationError.empty;
    }
    return password == value ? null : ConfirmedPasswordValidationError.mismatch;
  }
}
