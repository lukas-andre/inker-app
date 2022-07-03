import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CloseRegisterButton extends StatelessWidget {
  const CloseRegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 22, top: 22),
      child: Center(
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: SvgPicture.asset(
                'assets/icons/svg/circle-xmark-solid.svg',
                color: Colors.white,
                // height: 50,
              ))),
    );
  }
}
