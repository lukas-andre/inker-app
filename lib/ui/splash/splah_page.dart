import 'package:flutter/material.dart';
import 'package:simple_animations/stateless_animation/play_animation.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const SplashPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF141D3C),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: [
                Container(
                  width: 450,
                  height: 450,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0x0DFFFFFF)),
                  child: Center(
                    child: PlayAnimation<double>(
                      tween: Tween(begin: 1.0, end: 2.0),
                      duration: const Duration(seconds: 1),
                      curve: Curves.decelerate,
                      builder: (context, child, value) {
                        return Transform.scale(
                          scale: value,
                          child: child,
                        );
                      },
                      child: const Text(
                        'Inker',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0x0DFFFFFF)),
                ),
                Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0x0DFFFFFF)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
