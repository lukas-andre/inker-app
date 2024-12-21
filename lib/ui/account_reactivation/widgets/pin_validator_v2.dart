import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';

class PinValidatorV2 extends StatelessWidget {
  PinValidatorV2({
    super.key,
    this.controller,
    this.focusNode,
    this.onCompleted,
    this.onChanged,
    this.errorState = false,
    this.length = 4,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final Function(String)? onCompleted;
  final Function(String)? onChanged;
  final bool errorState;
  final int length;

  final _defaultController = TextEditingController();
  final _defaultFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    const borderColor = Color(0xff777E91);
    const errorColor = Color.fromARGB(255, 235, 0, 43);
    const fillColor = Color(0xff777E91);

    final defaultPinTheme = PinTheme(
      width: 62,
      height: 62,
      textStyle: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins',
        color: Colors.white,
      ),
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.transparent),
      ),
    );

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) => SizedBox(
        height: 72,
        width: MediaQuery.of(context).size.width * 0.8,
        child: Pinput(
          length: length,
          controller: controller ?? _defaultController,
          focusNode: focusNode ?? _defaultFocusNode,
          defaultPinTheme: defaultPinTheme,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          keyboardType: TextInputType.number,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          onCompleted: onCompleted,
          onChanged: onChanged,
          focusedPinTheme: defaultPinTheme.copyWith(
            height: 72,
            width: 72,
            decoration: defaultPinTheme.decoration!.copyWith(
              border: Border.all(color: borderColor),
            ),
          ),
          forceErrorState: errorState,
          errorPinTheme: defaultPinTheme.copyWith(
            decoration: BoxDecoration(
              color: fillColor,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: errorColor),
            ),
          ),
        ),
      ),
    );
  }
}