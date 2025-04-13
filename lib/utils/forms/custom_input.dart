import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class CustomInput extends StatelessWidget {
  const CustomInput(
      {super.key,
      required this.onChanged,
      required this.label,
      this.hint,
      this.valid,
      this.errorMessage,
      this.inputFormatters,
      this.suffixIcon,
      this.obscureText,
      this.verticalPadding,
      this.horizontalPadding,
      this.controller,
      this.withFlex = true,
      this.focusNode,
      this.keyboardType,
      this.onTap});

  final void Function(String) onChanged;
  final String label;
  final String? hint;
  final bool? valid;
  final String? errorMessage;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixIcon;
  final bool? obscureText;
  final double? verticalPadding;
  final double? horizontalPadding;
  final TextEditingController? controller;
  final bool withFlex;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final horizontalPadding =
        this.horizontalPadding ?? MediaQuery.of(context).size.width * 0.05;
    final verticalPadding =
        this.verticalPadding ?? MediaQuery.of(context).size.height * 0.01;
    return withFlex
        ? Flexible(
            child: _container(horizontalPadding, verticalPadding, context),
          )
        : _container(horizontalPadding, verticalPadding, context);
  }

  Container _container(
      double horizontalPadding, double verticalPadding, BuildContext context) {
    return Container(
      key: key,
      width: withFlex ? null : MediaQuery.of(context).size.width * 0.9,
      padding: EdgeInsets.only(
          right: horizontalPadding,
          left: horizontalPadding,
          top: MediaQuery.of(context).size.height * 0.01),
      child: TextField(
        keyboardType: keyboardType,
        focusNode: focusNode,
        onTap: onTap,
        controller: controller,
        autofillHints: const [
          AutofillHints.email,
        ],
        style: const TextStyle(color: Colors.white),
        inputFormatters: inputFormatters ?? [],
        cursorColor: const Color(0xff777E91),
        onChanged: onChanged,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: labelTextStyle,
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
          label: Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.003),
            child:
                Text(label, textAlign: TextAlign.left, style: labelTextStyle),
          ),
          filled: true,
          fillColor: inputBackgroundColor,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Color(0xff777E91),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Color(0xff777E91),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Color(0xff7450FF),
            ),
          ),
        ),
      ),
    );
  }
}
