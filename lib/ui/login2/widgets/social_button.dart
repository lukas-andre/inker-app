import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  const SocialButton({Key? key, required this.iconPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
            color: const Color(0xff232648), style: BorderStyle.solid, width: 2),
      ),
      // color: Colors.red,
      child: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            iconPath,
            color: Colors.white,
            height: 20,
          )),
    );
  }
}
