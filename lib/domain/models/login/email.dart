import 'package:formz/formz.dart' show FormzInput;

enum EmailValidationError { empty }

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure('');
  const Email.dirty([String value = '']) : super.dirty(value);

  @override
  EmailValidationError? validator(String? value) {
    // TODO: improve email validator
    return value?.isNotEmpty == true ? null : EmailValidationError.empty;
  }
}
