import 'package:formz/formz.dart' show FormzInput;

enum LocationValidationError { empty }

class LocationInput extends FormzInput<String, LocationValidationError> {
  const LocationInput.pure() : super.pure('');
  const LocationInput.dirty([String value = '']) : super.dirty(value);

  @override
  LocationValidationError? validator(String? value) {
    // TODO: improve location validator
    return value?.isNotEmpty == true ? null : LocationValidationError.empty;
  }
}
