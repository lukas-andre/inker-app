import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inker_studio/ui/login2/form/inputs/styles.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    Key? key,
    required this.onChanged,
    required this.label,
    this.valid,
    this.errorMessage,
    this.inputFormatters,
    this.suffixIcon,
    this.obscureText,
  }) : super(key: key);

  final void Function(String) onChanged;
  final String label;
  final bool? valid;
  final String? errorMessage;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixIcon;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 16),
        child: TextField(
          key: key,
          style: const TextStyle(color: Colors.white),
          inputFormatters: inputFormatters ?? [],
          cursorColor: const Color(0xff777E91),
          onChanged: onChanged,
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
            // errorText: valid ? null : errorMessage,
            contentPadding: inputContentPadding,
            label: Text(
              label,
              textAlign: TextAlign.left,
              style: const TextStyle(color: Color(0xff777E91), fontSize: 16),
            ),
            filled: true,
            fillColor: inputBackgroundColor,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                  color: Color(0xff777E91), style: BorderStyle.none),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Color(0xff777E91),
                )),
          ),
        ),
      ),
    );
  }
}
