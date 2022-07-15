import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterActionButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const RegisterActionButton(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.085),
          child: Center(
              child: TextButton(
            onPressed: onPressed,
            child: SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.85,
              child: const Center(
                child: CupertinoActivityIndicator(),
                // child: Text(
                //   text,
                //   textAlign: TextAlign.center,
                //   style: const TextStyle(
                //       color: Colors.white,
                //       fontSize: 16,
                //       fontFamily: 'Poppins',
                //       fontWeight: FontWeight.w400),
                // ),
              ),
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              ),
              backgroundColor:
                  MaterialStateProperty.all(const Color(0xff7450ff)),
            ),
          )),
        ),
      ],
    );
  }
}
