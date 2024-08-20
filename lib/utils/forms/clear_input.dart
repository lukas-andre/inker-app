import 'package:flutter/material.dart';

class ClearInput extends StatelessWidget {
  const ClearInput({super.key, required this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Padding(
        padding: EdgeInsets.only(right: 23),
        child: Icon(
          Icons.close,
          color: Color(0xff777E91),
        ),
      ),
    );
  }
}
