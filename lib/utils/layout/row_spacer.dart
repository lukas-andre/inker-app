import 'package:flutter/material.dart';

class RowSpacer extends StatelessWidget {
  const RowSpacer({Key? key, required this.space}) : super(key: key);
  final double space;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [SizedBox(height: space)],
    );
  }
}
