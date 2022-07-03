import 'package:formz/formz.dart' show FormzInput;

enum UsernameValidationError { empty, invalid }

class UsernameInput extends FormzInput<String, UsernameValidationError> {
  const UsernameInput.pure() : super.pure('');
  const UsernameInput.dirty([String value = '']) : super.dirty(value);

  @override
  UsernameValidationError? validator(String? value) {
    if (value == null || value.isEmpty) {
      return UsernameValidationError.empty;
      // Alphanumeric string that may include _ and – having a length of 3 to 16 characters –
    } else if (!RegExp(r'/^[a-z0-9_-]{3,16}$/').hasMatch(value)) {
      return UsernameValidationError.invalid;
    } else {
      return null;
    }
  }
}

extension UsernameErrorExplanation on UsernameValidationError {
  String? get name {
    switch (this) {
      case UsernameValidationError.empty:
        return 'Nombre artistico no puede estar vacio';
      case UsernameValidationError.invalid:
        return 'Solo se permiten números, letras, guiones, puntos, espacios y guiones bajos';
      default:
        return null;
    }
  }
}
