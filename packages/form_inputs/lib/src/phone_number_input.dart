import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart' show FormzInput;

enum PhoneNumberValidationError {
  empty,
  invalidIsoCode,
  invalidPhoneNumber;

  String? get message {
    switch (this) {
      case PhoneNumberValidationError.empty:
        return 'El numero de telefono no puede estar vacio.';
      case PhoneNumberValidationError.invalidIsoCode:
        return 'El codigo de pais no es valido.';
      case PhoneNumberValidationError.invalidPhoneNumber:
        return 'El numero de telefono no es valido.';
      default:
        return null;
    }
  }
}

class PhoneNumber extends Equatable {
  const PhoneNumber(
      {required this.isoCode,
      required this.phoneNumber,
      required this.dialCode});

  final String phoneNumber;
  final String isoCode;
  final String dialCode;

  const PhoneNumber.pure()
      : isoCode = '',
        phoneNumber = '',
        dialCode = '';

  @override
  List<Object?> get props => [isoCode, phoneNumber, dialCode];

  @override
  bool get stringify => true;
}

class PhoneNumberInput
    extends FormzInput<PhoneNumber, PhoneNumberValidationError> {
  const PhoneNumberInput.pure() : super.pure(const PhoneNumber.pure());
  const PhoneNumberInput.dirty([super.value = const PhoneNumber.pure()])
      : super.dirty();

  @override
  PhoneNumberValidationError? validator(PhoneNumber value) {
    if (value.phoneNumber.isEmpty) {
      return PhoneNumberValidationError.empty;
    }

    if (!RegExp(r'^(\+?56)?(\s?)(0?9)(\s?)[98765432]\d{7}$')
        .hasMatch(value.phoneNumber)) {
      return PhoneNumberValidationError.invalidPhoneNumber;
    }

    final valueSplit = value.phoneNumber.split(value.dialCode);

    final rawNumber = valueSplit.last;
    return rawNumber.isNotEmpty ? null : PhoneNumberValidationError.empty;
  }
}
