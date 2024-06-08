import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterUserByTypeButton extends StatelessWidget {
  final String text;
  final String iconPath;
  final void Function() onTap;
  final String helper;

  const RegisterUserByTypeButton(
      {super.key,
      required this.text,
      required this.iconPath,
      required this.onTap,
      required this.helper});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.88,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0x80262836),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30, left: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        text,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'assets/icons/svg/angle-right-solid.svg',
                            color: Colors.white,
                            height: 20,
                          ))
                    ],
                  ),
                  Text(
                    helper,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.5,
                  bottom: MediaQuery.of(context).size.height * 0.03),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: IconButton(
                  onPressed: onTap,
                  icon: Image.asset(
                    iconPath,
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
