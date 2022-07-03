import 'package:flutter/material.dart';

SnackBar customSnackBar(
    {BuildContext? context,
    bool? onTop,
    required String content,
    Color backgroundColor = const Color(0xff7D6FC7),
    Color textColor = Colors.white,
    double fontSize = 14,
    SnackBarAction? action,
    Duration? duration,
    SnackBarBehavior? snackBarBehavior}) {
  return SnackBar(
      content: Text(
        content,
        style: TextStyle(
            fontFamily: 'Poppins', fontSize: fontSize, color: textColor),
      ),
      dismissDirection: DismissDirection.horizontal,
      backgroundColor: backgroundColor,
      behavior: SnackBarBehavior.floating,
      duration: duration ?? const Duration(seconds: 3),
      action: action,
      margin: onTop != null && context != null
          ? EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.79,
              left: 10,
              right: 10)
          : null);
}
