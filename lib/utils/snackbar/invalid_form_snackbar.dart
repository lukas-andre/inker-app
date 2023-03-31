import 'package:flutter/material.dart';
import 'package:inker_studio/utils/snackbar/custom_snackbar.dart';

SnackBar getInvalidFormSnackBar(context) {
  return customSnackBar(
      context: context,
      onTop: true,
      content: 'Hay campos invalidos o sin completar ⚠️',
      duration: const Duration(seconds: 2),
      action: SnackBarAction(
        label: 'Vale 👌',
        disabledTextColor: Colors.white,
        textColor: Colors.white,
        onPressed: () {
          //Do whatever you want
        },
      ));
}
