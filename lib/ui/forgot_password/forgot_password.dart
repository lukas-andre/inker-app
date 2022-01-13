
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ForgotPassword extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => ForgotPassword());
  }

  @override
  Widget build(BuildContext context) {

    
    return Material(
      child: Container(
        height: 628,
        color: Color.fromRGBO(9, 4, 23, 1),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  
                  IconButton(
                    icon: SvgPicture.asset(
                        'assets/SVG/Icon ionic-ios-close-circle.svg'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
              Text("Has olvidado la contraseña de tu cuenta?",
                  style: TextStyle(fontSize: 25, color: Colors.white)),
              Text(
                  "No te preocupes, te ayudaremos a recuperarla, por favor introduce tus datos registrados",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  )),
                  SizedBox(height: 20,),
              ToggleSwitch(
                
                minWidth: 160.0,
                minHeight: 41,
                cornerRadius: 20.0,
                activeBgColors: [
                  [Colors.white!],
                  [Colors.white!]
                ],
                activeFgColor: Colors.black,
                inactiveBgColor: Color.fromRGBO(38, 38, 57,1),
                inactiveFgColor: Colors.white,
                initialLabelIndex: 1,
                totalSwitches: 2,
                labels: ['Email', 'Telefono'],
                radiusStyle: true,
                
                onToggle: (index) {
                  print('switched to: $index');

                },
              ),
              const SizedBox(height: 20,),
              Container(
                    child: Center(
                        child: TextButton(
                      onPressed: () {
                        showCupertinoModalBottomSheet(
                            expand: true,
                            isDismissible: true,
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context) => _SecondPassword());
                      },
                      child: const Text(
                        'Enviar Código OTP',
                        style:TextStyle(color: Colors.white),
                      ),
                    )),
                    width: 384,
                    height: 60,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(116, 80, 255, 1),
                        borderRadius: BorderRadius.circular(15))),
             
            ],
          ),
        ),
      ),
    );
  }
}

class _SecondPassword extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color.fromRGBO(38, 40, 54, 1),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: SvgPicture.asset('assets/SVG/Trazado10548.svg'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    IconButton(
                      icon: SvgPicture.asset(
                          'assets/SVG/Icon ionic-ios-close-circle.svg'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
                
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Verifica tu cuenta mediante tu numero telefónico",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "Se envío un código a tu numero telefónico 442 3890469 , revisa tu bandeja de mensajes",
                    style: TextStyle(fontSize: 15, color: Colors.white)),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "Aun no he recibido ningún código,",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "volver a enviar",
                        style: TextStyle(fontSize: 14),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: VerificationCode(
                      underlineWidth: 130,
                      //underlineUnfocusedColor: Color.fromRGBO(119, 126, 145, 1),
                      itemSize: 80,
                      keyboardType: TextInputType.number,
                      length: 4,
                      autofocus: true,
                      onCompleted: (String value) {
                        print(value);
                      },
                      onEditing: (bool value) {},
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    child: Center(
                        child: TextButton(
                      onPressed: () {
                        showCupertinoModalBottomSheet(
                            expand: true,
                            isDismissible: true,
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context) => _ThirdPassword());
                      },
                      child: Text(
                        "Verificar número",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                    width: 384,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(116, 80, 255, 1),
                        borderRadius: BorderRadius.circular(15)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ThirdPassword extends StatelessWidget {
  const _ThirdPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 628,
        color: Color.fromRGBO(9, 4, 23, 1),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: SvgPicture.asset('assets/SVG/Trazado10548.svg'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  IconButton(
                    icon: SvgPicture.asset(
                        'assets/SVG/Icon ionic-ios-close-circle.svg'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
              Text('Introduce tu nueva contraseña',
                  style: TextStyle(fontSize: 25, color: Colors.white)),
              Text(
                  'Tu nueva contraseña debe ser diferente a la antigua, asegúrate que no se te olvide 😃',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  )),
                  SizedBox(height: 20,),
                  Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromRGBO(119, 126, 145, .3)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: "Contraseña",
                                    fillColor: Colors.white,
                                    labelStyle: TextStyle(color: Color.fromRGBO(119, 126, 145,1)),

                                    border: InputBorder.none,
                                    suffixIcon: Icon(Icons.visibility_off)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromRGBO(119, 126, 145, .3)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: "Confirmar Contraseña",
                                    labelStyle: TextStyle(color: Color.fromRGBO(119, 126, 145,1)),
                                    fillColor: Colors.white,
                                    border: InputBorder.none,
                                    suffixIcon: Icon(Icons.visibility_off)),
                              ),
                            ),
                          ),
                        ),
                      ),
              
              const SizedBox(height: 20,),
              Container(
                    child: Center(
                        child: TextButton(
                      onPressed: () {
                        showCupertinoModalBottomSheet(
                            expand: true,
                            isDismissible: true,
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context) => _FourthPassword());
                      },
                      child: const Text(
                        'Resetear contraseña',
                        style:TextStyle(color: Colors.white),
                      ),
                    )),
                    width: 384,
                    height: 60,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(116, 80, 255, 1),
                        borderRadius: BorderRadius.circular(15))),
             
            ],
          ),
        ),
      ),
    );
  }
}


  class _FourthPassword extends StatefulWidget {
  @override
  State<_FourthPassword> createState() => _formCompleteState();
}

class _formCompleteState extends State<_FourthPassword> with SingleTickerProviderStateMixin{

  late final AnimationController _controller = AnimationController(vsync: this,
  duration: const Duration(seconds: 2),)..repeat(reverse: true);

  late final Animation<Offset> _animation = Tween<Offset>(
    begin: Offset.zero, end: Offset(0, 0.08),
  ).animate(_controller);
  @override
  void dispose(){
    _controller.dispose();  
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 628,
        color: Color.fromRGBO(9, 4, 23, 1),
        child: Padding(
          
          padding: const EdgeInsets.only(
            bottom: 100,
            top: 100,
          ),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: AnimatedContainer(
                    curve: Curves.fastOutSlowIn,
                    duration: Duration(seconds: 2),
                    child: Stack(
                      children: [
                        SlideTransition(
                          position: _animation,
                          child: Image.asset('assets/PNG/Grupo 40332.png')),
                      ],
                    ),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Text(
                    'Se ha restablecido tu nueva contraseña',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(height: 60,),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                      child: Center(
                          child: TextButton(
                        onPressed: () {
                          showCupertinoModalBottomSheet(
                              expand: true,
                              isDismissible: true,
                              context: context,
                              backgroundColor: Colors.transparent,
                              builder: (context) => _FourthPassword());
                        },
                        child: const Text(
                          'Continuar',
                          style:TextStyle(color: Colors.white),
                        ),
                      )),
                      width: 384,
                      height: 60,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(116, 80, 255, 1),
                          borderRadius: BorderRadius.circular(15))),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}