import 'package:formz/formz.dart' show FormzInput;

enum EmailValidationError { empty }

class EmailInput extends FormzInput<String, EmailValidationError> {
  const EmailInput.pure() : super.pure('');
  const EmailInput.dirty([String value = '']) : super.dirty(value);

  @override
  EmailValidationError? validator(String? value) {
    // TODO: improve email validator
    return value?.isNotEmpty == true ? null : EmailValidationError.empty;
  }
}
