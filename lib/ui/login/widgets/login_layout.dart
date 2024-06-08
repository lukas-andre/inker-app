import 'package:flutter/material.dart';
import 'package:inker_studio/ui/login/form/login_form.dart';
import 'package:inker_studio/ui/login/widgets/login_header.dart';
import 'package:inker_studio/ui/login/widgets/social_button.dart';

class LoginLayout extends StatelessWidget {
  const LoginLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Stack(children: [
        LoginHeader(),
        LoginForm(),
        SocialMediaSingInOptions()
      ]),
    );
  }
}

class SocialMediaSingInOptions extends StatelessWidget {
  const SocialMediaSingInOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 7, child: Container()),
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
              const Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
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
