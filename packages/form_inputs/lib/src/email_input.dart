import 'package:formz/formz.dart' show FormzInput;

enum EmailValidationError { empty, invalid }

class EmailInput extends FormzInput<String, EmailValidationError> {
  const EmailInput.pure() : super.pure('');
  const EmailInput.dirty([String value = '']) : super.dirty(value);

  @override
  EmailValidationError? validator(String? value) {
    // TODO: improve email validator
    // https://www.regexpal.com/?fam=104027
    String namePattern = r'/^([a-z0-9_.+-]+)@([da-z.-]+).([a-z.]{2,6})$/';
    RegExp regExp = RegExp(namePattern, caseSensitive: false);

    if (value == null || value.isEmpty) {
      return EmailValidationError.empty;
    } else if (!regExp.hasMatch(value)) {
      return EmailValidationError.invalid;
    } else {
      return null;
    }
  }
}
