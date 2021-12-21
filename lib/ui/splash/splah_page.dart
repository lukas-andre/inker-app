import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const SplashPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Container(
          decoration: const BoxDecoration(gradient: RadialGradient(
            radius: 0.9,
            colors: [
            Color.fromRGBO(93, 84, 227, 1),
            Color.fromRGBO(76, 67, 212, 1),
            Color.fromRGBO( 20, 19, 157, 1),
            Color.fromRGBO(26, 22, 85, 1),
          ],
          stops:[0.6,0,1,0],
          tileMode: TileMode.clamp,
          
          
          ) 
          ), 
          child: const Center(child: Text('Inker', style: TextStyle(
                  color: Colors.white,
                  fontSize: 70.0,
                  fontWeight: FontWeight.bold,
                ),
                )
                ,),
          )
          ),
        
        
    );
  }
}
