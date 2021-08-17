import 'package:formz/formz.dart' show FormzInput;

enum PhoneNumberValidationError {
  empty,
  invalidIsoCode,
  invalidPhoneNumber,
}

class PhoneNumberInput extends FormzInput<String, PhoneNumberValidationError> {
  const PhoneNumberInput.pure() : super.pure('');
  const PhoneNumberInput.dirty([String value = '']) : super.dirty(value);

  @override
  PhoneNumberValidationError? validator(String? value) {
    // TODO: fix this validation
    // dev.inspect(value);

    // final valueSplit = value!.split('+56');
    // dev.inspect(valueSplit);

    // final rawNumber = valueSplit.last;
    // dev.inspect(rawNumber);

    // final isoCode = valueSplit.first;
    // final isoCodeSplit = isoCode.split('+');
    // dev.inspect(isoCode);
    // dev.inspect(isoCodeSplit);

    // final plusSign = isoCodeSplit.first;
    // final number = isoCodeSplit.last;
    // dev.inspect(plusSign);
    // dev.inspect(number);

    // if ((number.length <= 3 && number.isNotEmpty) &&
    //     int.tryParse(number) != null) {
    //   return PhoneNumberValidationError.invalidIsoCode;
    // }

    // if (int.tryParse(rawNumber) != null) {
    //   return PhoneNumberValidationError.invalidPhoneNumber;
    // }

    final valueSplit = value!.split('+56');

    final rawNumber = valueSplit.last;
    return rawNumber.isNotEmpty == true
        ? null
        : PhoneNumberValidationError.empty;
  }
}
