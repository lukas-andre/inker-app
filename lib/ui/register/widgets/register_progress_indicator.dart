import 'package:flutter/material.dart';

class RegisterProgressIndicator extends StatelessWidget {
  const RegisterProgressIndicator({Key? key, required this.progress})
      : super(key: key);
  final double progress;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.75,
        alignment: Alignment.topCenter,
        margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.06,
            top: MediaQuery.of(context).size.width * 0.05),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.white,
            color: const Color(0xff7450ff),
            minHeight: 11,
          ),
        ));
  }
}
