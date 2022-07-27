import 'package:flutter/services.dart';

extension StringExtension on String {
  String capitalize() =>
      isEmpty ? this : '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
}

class CapitalizeTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.capitalize(),
      selection: newValue.selection,
    );
  }
}
