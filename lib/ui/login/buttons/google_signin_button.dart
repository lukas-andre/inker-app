import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:inker_studio/data/firebase/google_auth_service.dart';
import 'package:inker_studio/utils/dev.dart';

class GoogleSignInButton extends StatefulWidget {
  const GoogleSignInButton({Key? key}) : super(key: key);

  @override
  _GoogleSignInButtonState createState() => _GoogleSignInButtonState();
}

class _GoogleSignInButtonState extends State<GoogleSignInButton> {
  bool _isSigningIn = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: _isSigningIn
          ? const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          : OutlinedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              onPressed: () async {
                // TODO: CREAR UN GOOGLE AUTH SERVICE Y HACERLO PACKAGE
                await GoogleAuthService.initializeFirebase(context: context);
                setState(() {
                  _isSigningIn = true;
                });

                User? user =
                    await GoogleAuthService.signInWithGoogle(context: context);
                dev.log('user1 $user', 'google signup');

                setState(() {
                  _isSigningIn = false;
                });

                if (user != null) {
                  dev.log('user2 $user', 'google signup');
                  // Navigator.of(context)
                  //     .pushReplacement(CustomerHomePage.route());
                }
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Image(
                      image: AssetImage('assets/PNG/google_logo.png'),
                      height: 35.0,
                    ),
                    
                    
                  ],
                ),
              ),
            ),
    );
  }
}
