import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterActionButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final bool isLoading;
  const RegisterActionButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.isLoading = false});

  Widget _loadingIndicator() {
    return const CupertinoActivityIndicator(
      color: CupertinoColors.white,
    );
  }

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
            style: ButtonStyle(
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              ),
              backgroundColor:
                  WidgetStateProperty.all(const Color(0xff7450ff)),
            ),
            child: SizedBox(
              key: key,
              height: 40,
              width: MediaQuery.of(context).size.width * 0.85,
              child: Center(
                child: isLoading
                    ? _loadingIndicator()
                    : Text(
                        text,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400),
                      ),
              ),
            ),
          )),
        ),
      ],
    );
  }
}
