import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ChileanPesoInputFormatter extends TextInputFormatter {
  final NumberFormat _numberFormat;

  ChileanPesoInputFormatter(this._numberFormat);

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.length < oldValue.text.length) {
      return newValue;
    }

    if (newValue.text.isEmpty) {
      return const TextEditingValue(text: '');
    }

    String newText = newValue.text.replaceAll(RegExp(r'[^\d]'), '');
    if (newText.isEmpty) newText = '0';
    int value = int.parse(newText);

    String formattedValue = _numberFormat.format(value);

    return TextEditingValue(
      text: formattedValue,
      selection: TextSelection.collapsed(offset: formattedValue.length),
    );
  }
}

class EstimatedCostField extends StatefulWidget {
  final TextEditingController controller;
  final S l10n;
  final Function(String) onChanged;
  final FocusNode focusNode;

  const EstimatedCostField({
    Key? key,
    required this.controller,
    required this.l10n,
    required this.onChanged,
    required this.focusNode,
  }) : super(key: key);

  @override
  _EstimatedCostFieldState createState() => _EstimatedCostFieldState();
}

class _EstimatedCostFieldState extends State<EstimatedCostField> {
  late NumberFormat _numberFormat;
  String? _errorText;

  @override
  void dispose() {
    widget.focusNode.dispose();
    super.dispose();
  }

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
        keyboardType: TextInputType.numberWithOptions(
            decimal: _numberFormat.currencyName != 'CLP'),
        inputFormatters: [
          ChileanPesoInputFormatter(_numberFormat),
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
    if (double.tryParse(value.replaceAll(RegExp(r'[^\d.]'), '')) == null) {
      return '${widget.l10n.invalidNumber} ${widget.l10n.estimatedCostDisclaimer}';
    }
    return null;
  }
}
