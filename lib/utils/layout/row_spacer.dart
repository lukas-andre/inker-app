import 'package:flutter/material.dart';

class RowSpacer extends StatelessWidget {
  const RowSpacer({super.key, required this.space});
  final double space;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [SizedBox(height: space)],
    );
  }
}
