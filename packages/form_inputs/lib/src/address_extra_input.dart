import 'package:formz/formz.dart' show FormzInput;
import 'address_type.dart';

enum AddressExtraValidationError {
  empty,
  invalid;

  String get message {
    switch (this) {
      case AddressExtraValidationError.empty:
        return 'Tu numero de departamento no puede estar vacio';
      case AddressExtraValidationError.invalid:
        return 'Tu numero de departamento no puede contener caracteres especiales';
    }
  }
}

class AddressExtraInput
    extends FormzInput<String, AddressExtraValidationError> {
  const AddressExtraInput.pure({this.addressType = AddressType.none})
      : super.pure('');
  const AddressExtraInput.dirty({required this.addressType, String value = ''})
      : super.dirty(value);
  final AddressType addressType;

  @override
  AddressExtraValidationError? validator(String? value) {
    if (value == null ||
        value.isEmpty && addressType == AddressType.apartment) {
      return AddressExtraValidationError.empty;
    } else {
      return null;
    }
  }
}
