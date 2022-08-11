import 'package:formz/formz.dart' show FormzInput;

enum IdentifierValidationError {
  empty,
  invalid;

  String get message {
    switch (this) {
      case IdentifierValidationError.empty:
        return 'El correo no puede estar vacio.';
      case IdentifierValidationError.invalid:
        return 'El correo no es valido.';
    }
  }
}

class IdentifierInput extends FormzInput<String, IdentifierValidationError> {
  const IdentifierInput.pure() : super.pure('');
  const IdentifierInput.dirty([String value = '']) : super.dirty(value);

  @override
  IdentifierValidationError? validator(String? value) {
    if (value == null || value.isEmpty) {
      return IdentifierValidationError.empty;
    } else {
      return null;
    }
  }
}
