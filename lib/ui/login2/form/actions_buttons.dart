import 'package:flutter/material.dart';

class ActionsButtons extends StatelessWidget {
  const ActionsButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ButtonStyle initSessionButtonStyle = ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor:
            MaterialStateProperty.all<Color>(const Color(0xff7450FF)));
    return Row(
      children: [
        Expanded(
            child: Container(
          margin: const EdgeInsets.all(10),
          child: const Text(
            'Olvide mi contraseña',
            style: TextStyle(
                color: Colors.white, fontFamily: 'Poppins', fontSize: 14),
          ),
        )),
        Expanded(
            child: SizedBox(
          height: 55,
          child: TextButton(
            style: initSessionButtonStyle,
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Iniciar sesión'),
                SizedBox(width: 10),
                Icon(
                  Icons.arrow_forward,
                  size: 20,
                )
              ],
            ),
          ),
        ))
      ],
    );
  }
}
