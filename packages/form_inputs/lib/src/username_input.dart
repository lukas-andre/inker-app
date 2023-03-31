import 'package:formz/formz.dart' show FormzInput;

enum UsernameValidationError {
  empty,
  invalid,
  minLength;

  String? get message {
    switch (this) {
      case UsernameValidationError.empty:
        return 'Nombre artistico no puede estar vacio.';
      case UsernameValidationError.invalid:
        return 'Los nombres artisticos solo pueden contener letras del alfabeto, números, guiones, puntos y guiones bajos.';
      case UsernameValidationError.minLength:
        return 'El nombre artistico debe tener al menos 3 caracteres.';
      default:
        return null;
    }
  }
}

class UsernameInput extends FormzInput<String, UsernameValidationError> {
  const UsernameInput.pure() : super.pure('');
  const UsernameInput.dirty([String value = '']) : super.dirty(value);

  @override
  UsernameValidationError? validator(String? value) {
    if (value == null || value.isEmpty) {
      return UsernameValidationError.empty;
      // Alphanumeric string that may include _ and – having a length of 3 to 16 characters –
    } else if (value.length < 3) {
      return UsernameValidationError.minLength;
    } else if (!RegExp(r'^([a-z]){1}([a-z0-9_.-]){2,}$').hasMatch(value)) {
      return UsernameValidationError.invalid;
    } else {
      return null;
    }
  }
}
