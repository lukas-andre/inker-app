import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class CustomPhoneNumberInput extends StatelessWidget {
  const CustomPhoneNumberInput(
      {super.key,
      required this.label,
      required this.searchDecoratorLabel,
      required this.onInputChanged,
      this.valid,
      this.errorMessage,
      this.inputFormatters,
      this.suffixIcon,
      this.countries,
      this.controller,
      this.number});

  final void Function(PhoneNumber)? onInputChanged;

  final String label;
  final String searchDecoratorLabel;
  final bool? valid;
  final String? errorMessage;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixIcon;
  final List<String>? countries;
  final TextEditingController? controller;
  final PhoneNumber? number;

  @override
  Widget build(BuildContext context) {
    var inputDecoration = InputDecoration(
      errorMaxLines: 2,
      errorText: valid == false ? errorMessage : null,
      errorStyle: const TextStyle(fontFamily: 'Poppins'),
      errorBorder: valid == false
          ? OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.red),
            )
          : null,
      contentPadding: inputContentPadding,
      label: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.0035),
          child: Text(label, textAlign: TextAlign.left, style: labelTextStyle)),
      filled: true,
      fillColor: inputBackgroundColor,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      border: inputBorder,
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: valid == false ? Colors.red : const Color(0xff777E91),
          )),
    );

    return Expanded(
      key: key,
      child: Container(
        padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.05,
            left: MediaQuery.of(context).size.width * 0.06,
            top: MediaQuery.of(context).size.height * 0.01,
            bottom: MediaQuery.of(context).size.height * 0.01),
        child: InternationalPhoneNumberInput(
          key: key,
          formatInput: true,
          initialValue: number ?? PhoneNumber(isoCode: 'CL'),
          countries: countries ?? ['CL'],
          cursorColor: const Color(0xff777E91),
          textStyle: const TextStyle(color: Colors.white),
          textFieldController: controller,
          ignoreBlank: false,
          autoValidateMode: AutovalidateMode.disabled,
          keyboardType: const TextInputType.numberWithOptions(
              signed: true, decimal: true),
          selectorConfig: SelectorConfig(
              selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
              leadingPadding: MediaQuery.of(context).size.height * 0.03,
              useEmoji: false,
              setSelectorButtonAsPrefixIcon: true),
          selectorTextStyle: const TextStyle(
              color: Colors.white, fontFamily: 'Poppins', fontSize: 16),
          inputDecoration: inputDecoration,
          onInputChanged: onInputChanged,
          spaceBetweenSelectorAndTextField: 0,
          searchBoxDecoration: InputDecoration(
            errorMaxLines: 3,
            label: Text(
              searchDecoratorLabel,
              textAlign: TextAlign.left,
              style: labelTextStyle,
            ),
            filled: true,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: inputBorder,
            focusedBorder: focusedBorder,
          ),
        ),
      ),
    );
  }
}
