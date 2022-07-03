import 'package:formz/formz.dart' show FormzInput;
import 'package:inker_studio/utils/dev.dart';

enum NameValidationError { empty }

class NameInput extends FormzInput<String, NameValidationError> {
  const NameInput.pure() : super.pure('');
  const NameInput.dirty([String value = '']) : super.dirty(value);

  @override
  NameValidationError? validator(String? value) {
    dev.log(value ?? value!, 'NameInput.validator');
    return value.isNotEmpty == true ? null : NameValidationError.empty;
  }
}
