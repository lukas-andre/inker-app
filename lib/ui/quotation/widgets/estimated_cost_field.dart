import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ChileanPesoInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) {
      return newValue;
    }

    final String cleanedText = newValue.text.replaceAll(RegExp(r'[^\d]'), '');

    final formattedText = _formatNumber(cleanedText);

    final int cursorPosition = newValue.selection.end;
    final int oldDotCount = '.'.allMatches(oldValue.text).length;
    final int newDotCount = '.'.allMatches(formattedText).length;
    final int cursorOffset = newDotCount - oldDotCount;
    final int newCursorPosition = cursorPosition + cursorOffset;

    return TextEditingValue(
      text: formattedText,
      selection: TextSelection.collapsed(
        offset: newCursorPosition.clamp(0, formattedText.length),
      ),
    );
  }

  String _formatNumber(String value) {
    final buffer = StringBuffer();
    for (int i = 0; i < value.length; i++) {
      if (i > 0 && (value.length - i) % 3 == 0) {
        buffer.write('.');
      }
      buffer.write(value[i]);
    }
    return buffer.toString();
  }
}

class EstimatedCostField extends StatefulWidget {
  final TextEditingController controller;
  final S l10n;
  final Function(String) onChanged;
  final FocusNode focusNode;
  final minCost = 100;
  final maxCost = 10000000;

  const EstimatedCostField({
    super.key,
    required this.controller,
    required this.l10n,
    required this.onChanged,
    required this.focusNode,
  });

  @override
  _EstimatedCostFieldState createState() => _EstimatedCostFieldState();
}

class _EstimatedCostFieldState extends State<EstimatedCostField> {
  // ignore: unused_field
  late NumberFormat _numberFormat;
  String? _errorText;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _initializeNumberFormat();
  }

  void _initializeNumberFormat() {
    final locale = Localizations.localeOf(context);
    if (locale.toString() == 'es_CL') {
      _numberFormat = NumberFormat.currency(
        locale: 'es_CL',
        symbol: '\$',
        decimalDigits: 0,
      );
    } else {
      _numberFormat = NumberFormat.currency(locale: locale.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: widget.l10n.estimatedCostDisclaimer,
      child: TextFormField(
        focusNode: widget.focusNode,
        controller: widget.controller,
        decoration: InputDecoration(
          labelText: widget.l10n.estimatedCost,
          labelStyle: TextStyleTheme.bodyText1,
          fillColor: inputBackgroundColor,
          filled: true,
          border: inputBorder,
          focusedBorder: focusedBorder,
          errorText: _errorText,
          prefixIcon: Icon(Icons.attach_money, color: tertiaryColor),
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(Icons.info_outline, color: tertiaryColor),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text(widget.l10n.estimatedCostDisclaimer)),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.close, color: tertiaryColor),
                onPressed: () {
                  widget.controller.clear();
                  widget.onChanged('');
                  setState(() {
                    _errorText = null;
                  });
                },
              ),
            ],
          ),
        ),
        style: TextStyleTheme.bodyText1,
        keyboardType: TextInputType.number,
        inputFormatters: [
          ChileanPesoInputFormatter(),
        ],
        onChanged: (value) {
          widget.onChanged(value);
          setState(() {
            _errorText = _validateInput(value);
          });
        },
        validator: _validateInput,
      ),
    );
  }

  String? _validateInput(String? value) {
    if (value == null || value.isEmpty) {
      return '${widget.l10n.requiredField} ${widget.l10n.estimatedCostDisclaimer}';
    }

    String numberString = value.replaceAll('.', '');
    int? number = int.tryParse(numberString);

    if (number == null) {
      return '${widget.l10n.invalidNumber} ${widget.l10n.estimatedCostDisclaimer}';
    }

    if (number < widget.minCost || number > widget.maxCost) {
      return '${widget.l10n.invalidRange} ${widget.l10n.estimatedCostDisclaimer}';
    }

    return null;
  }
}
