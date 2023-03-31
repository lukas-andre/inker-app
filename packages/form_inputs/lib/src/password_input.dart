import 'package:formz/formz.dart' show FormzInput;

enum PasswordValidationError {
  empty,
  invalid;

  String? get message {
    switch (this) {
      case PasswordValidationError.empty:
        return 'La contraseña no puede estar vacia.';
      case PasswordValidationError.invalid:
        return 'La contraseña debe tener al menos 6 caracteres, una letra y un numero.';
      default:
        return null;
    }
  }
}

class PasswordInput extends FormzInput<String, PasswordValidationError> {
  const PasswordInput.pure() : super.pure('');
  const PasswordInput.dirty([String value = '']) : super.dirty(value);

  @override
  PasswordValidationError? validator(String? value) {
    // Minimum eight characters, at least one letter and one number:
    const regex = r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$';
    if (value == null || value.isEmpty) {
      return PasswordValidationError.empty;
    }

    if (!RegExp(regex).hasMatch(value)) {
      return PasswordValidationError.invalid;
    }

    return null;
  }
}
