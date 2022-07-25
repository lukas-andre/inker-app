import 'package:flutter/material.dart';
import 'package:inker_studio/ui/login2/form/login_form.dart';
import 'package:inker_studio/ui/login2/widgets/login_header.dart';
import 'package:inker_studio/ui/login2/widgets/social_button.dart';

class LoginLayout extends StatelessWidget {
  const LoginLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(children: const [
        LoginHeader(),
        LoginForm(),
        SocialMediaSingInOptions()
      ]),
    );
  }
}

class SocialMediaSingInOptions extends StatelessWidget {
  const SocialMediaSingInOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 8, child: Container()),
        Expanded(
            flex: 2,
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      'o inicia sessión con',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.white,
                          fontFamily: 'Poppins'),
                    ),
                  )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          SocialButton(
                            iconPath: 'assets/icons/svg/google.svg',
                          ),
                          SizedBox(width: 10),
                          SocialButton(
                            iconPath: 'assets/icons/svg/facebook.svg',
                          ),
                          SizedBox(width: 10),
                          SocialButton(
                            iconPath: 'assets/icons/svg/apple.svg',
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ]))
      ],
    );
  }
}
