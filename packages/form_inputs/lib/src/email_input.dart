import 'package:formz/formz.dart' show FormzInput;

enum EmailValidationError {
  empty,
  invalid;

  String get message {
    switch (this) {
      case EmailValidationError.empty:
        return 'El correo no puede estar vacio.';
      case EmailValidationError.invalid:
        return 'El correo no es valido.';
    }
  }
}

class EmailInput extends FormzInput<String, EmailValidationError> {
  const EmailInput.pure() : super.pure('');
  const EmailInput.dirty([String value = '']) : super.dirty(value);

  @override
  EmailValidationError? validator(String? value) {
    String namePattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
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
