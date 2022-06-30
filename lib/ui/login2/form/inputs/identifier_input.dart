import 'package:flutter/material.dart';
import 'package:inker_studio/ui/login2/form/inputs/styles.dart';
import 'package:inker_studio/utils/forms/lower_case_text_formatter.dart';

class IdentifierInput extends StatelessWidget {
  const IdentifierInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 16),
        child: TextField(
          style: const TextStyle(color: Colors.white),
          inputFormatters: [LowerCaseTextFormatter()],
          cursorColor: const Color(0xff777E91),
          decoration: InputDecoration(
            contentPadding: inputContentPadding,
            label: const Text(
              'Teléfono, correo electrónico o usuario',
              textAlign: TextAlign.left,
              style: TextStyle(color: Color(0xff777E91), fontSize: 16),
            ),
            filled: true,
            fillColor: inputBackgroundColor,
            floatingLabelBehavior: FloatingLabelBehavior.never,
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
