import 'package:formz/formz.dart' show FormzInput;

enum PhoneNumberValidationError { empty }

class PhoneNumber extends FormzInput<String, PhoneNumberValidationError> {
  const PhoneNumber.pure() : super.pure('');
  const PhoneNumber.dirty([String value = '']) : super.dirty(value);

  @override
  PhoneNumberValidationError? validator(String? value) {
    // TODO: improve PhoneNumber validator
    return value?.isNotEmpty == true ? null : PhoneNumberValidationError.empty;
  }
}
