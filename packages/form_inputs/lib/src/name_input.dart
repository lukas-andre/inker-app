import 'package:formz/formz.dart' show FormzInput;
import 'package:inker_studio/utils/dev.dart';

enum NameValidationError { empty, invalid }

class NameInput extends FormzInput<String, NameValidationError> {
  const NameInput.pure() : super.pure('');
  const NameInput.dirty([String value = '']) : super.dirty(value);

  @override
  NameValidationError? validator(String? value) {
    dev.log(value ?? value!, 'NameInput.validator');

    final match = RegExp(r'/^[a-zA-Z]/').hasMatch(value);
    dev.log(match.toString(), 'NameInput.validator match');
    if (value.isEmpty) {
      return NameValidationError.empty;
      // Only letters
    } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
      return NameValidationError.invalid;
    } else {
      return null;
    }
  }
}

extension NameErrorExplanation on NameValidationError {
  String? get name {
    switch (this) {
      case NameValidationError.empty:
        return 'no puede estar vacío';
      case NameValidationError.invalid:
        return 'no es valido, solo se permiten letras.';
      default:
        return null;
    }
  }
}
