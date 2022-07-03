import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inker_studio/utils/forms/styles.dart';

class CustomInput extends StatelessWidget {
  const CustomInput(
      {Key? key,
      required this.onChanged,
      required this.label,
      this.valid,
      this.errorMessage,
      this.inputFormatters,
      this.suffixIcon,
      this.obscureText,
      this.verticalPadding,
      this.horizontalPadding,
      this.controller})
      : super(key: key);

  final void Function(String) onChanged;
  final String label;
  final bool? valid;
  final String? errorMessage;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixIcon;
  final bool? obscureText;
  final double? verticalPadding;
  final double? horizontalPadding;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    final horizontalPadding =
        this.horizontalPadding ?? MediaQuery.of(context).size.width * 0.05;
    final verticalPadding =
        this.verticalPadding ?? MediaQuery.of(context).size.height * 0.01;
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding, vertical: verticalPadding),
        child: TextField(
          controller: controller,
          key: key,
          style: const TextStyle(color: Colors.white),
          inputFormatters: inputFormatters ?? [],
          cursorColor: const Color(0xff777E91),
          onChanged: onChanged,
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
            errorMaxLines: 3,
            errorText: valid == false ? errorMessage : null,
            errorBorder: valid == false
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.red),
                  )
                : null,
            errorStyle: const TextStyle(fontFamily: 'Poppins'),
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
                borderSide: BorderSide(
                  // color: Color(0xff777E91),
                  color: valid == false ? Colors.red : const Color(0xff777E91),
                )),
          ),
        ),
      ),
    );
  }
}
