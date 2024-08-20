import 'package:flutter/material.dart';

class DraggingSheetHandler extends StatelessWidget {
  const DraggingSheetHandler({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 30,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(16)),
    );
  }
}
