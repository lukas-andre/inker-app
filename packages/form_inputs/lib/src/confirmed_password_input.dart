import 'package:formz/formz.dart';

enum ConfirmedPasswordValidationError {
  invalid,
  mismatch;

  String? get message {
    switch (this) {
      case ConfirmedPasswordValidationError.invalid:
        return 'La contraseña no es valida.';
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
      return ConfirmedPasswordValidationError.invalid;
    }
    return password == value ? null : ConfirmedPasswordValidationError.mismatch;
  }
}
