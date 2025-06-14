import 'package:flutter/material.dart';
import 'package:inker_studio/features/auth/ui/login/form/login_form.dart';
import 'package:inker_studio/features/auth/ui/login/widgets/login_header.dart';
import 'package:inker_studio/features/auth/ui/login/widgets/social_button.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';
import 'package:inker_studio/utils/responsive/responsive_builder.dart';

class LoginLayout extends StatelessWidget {
  const LoginLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ResponsiveBuilder(
        mobile: const Stack(
          children: [
            LoginHeader(),
            LoginForm(),
            SocialMediaSingInOptions(),
          ],
        ),
        desktop: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: const Stack(
              children: [
                LoginHeader(),
                LoginForm(),
                SocialMediaSingInOptions(),
              ],
            ),
          ),
        ),
      ),
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
              Builder(
                builder: (context) {
                  final horizontalPadding = Responsive.value(
                    context,
                    mobile: 30,
                    tablet: 50,
                    desktop: 80,
                  );
                  
                  return Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: horizontalPadding,
                            vertical: 15,
                          ),
                          child: const Row(
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
                      ),
                    ],
                  );
                },
              ),
            ]))
      ],
    );
  }
}
