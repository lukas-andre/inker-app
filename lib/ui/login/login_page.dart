import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';
import 'package:inker_studio/domain/blocs/login/login_bloc.dart';
import 'package:inker_studio/ui/create_account/create_account_by_type_page.dart';
import 'package:inker_studio/ui/create_account/create_customer/create_customer_page.dart';
import 'package:inker_studio/ui/login/login_form.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inker_studio/ui/onboarding/onboarding_page.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(9, 4, 23, 1),
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset('assets/SVG/Trazado10548.svg'),
        ),
        backgroundColor: Color.fromRGBO(9, 4, 23, 1),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 36),
            child: TextButton(
              child: const Text(
                "Registrarme",
                style: TextStyle(color: Colors.white, ),
              ),
              onPressed: () => showBarModalBottomSheet(
                expand: true,
                context: context,
                builder: (context) => _CupertinoBotton(),
              ),

              //Navigator.of(context).push<void>(CreateUserByTypePage.route());
            ),
          )
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: BlocProvider(
            create: (context) => LoginBloc(
                loginUseCase: context.read(),
                authBloc: context.read<AuthBloc>()),
            child: const LoginForm(),
          ),
        ),
      ),
    );
  }
}

class _CupertinoBotton extends StatelessWidget {
  var butttonStyle = TextButton.styleFrom(
      primary: Colors.white,
      onSurface: Colors.red,
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(45, 47, 60, 1),
      minimumSize: const Size(300.0, 150.0));
  final _controller = new PageController();
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

  @override
  Widget build(BuildContext context) {
    return Material(
        child: PageView(
      controller: _controller,
      scrollDirection: Axis.vertical,
      children: [
        _formFirstPage(
            butttonStyle: butttonStyle,
            controller: _controller,
            kDuration: _kDuration,
            kCurve: _kCurve),
        //_formSecondPage(butttonStyle: butttonStyle, controller: _controller, kDuration: _kDuration, kCurve: _kCurve)
      ],
    ));
  }
}

class _formFirstPage extends StatelessWidget {
  const _formFirstPage({
    Key? key,
    required this.butttonStyle,
    required PageController controller,
    required Duration kDuration,
    required Cubic kCurve,
  })  : _controller = controller,
        _kDuration = kDuration,
        _kCurve = kCurve,
        super(key: key);

  final ButtonStyle butttonStyle;
  final PageController _controller;
  final Duration _kDuration;
  final Cubic _kCurve;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 628,
      color: Color.fromRGBO(38, 40, 54  , 1),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                ),
              ],
            ),
            Image.asset('assets/PNG/Grupoprogess1.png'),
            Text(
              "Que gusto que quieras registrarte con nosotros",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            Text("Cuéntanos, como te gustaría registrarte?",
                style: TextStyle(fontSize: 15, color: Colors.white)),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),
              color: Color.fromRGBO(45, 47, 60 ,1)),

              
              
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  
                  
                  onPressed: () {
                    //_controller.nextPage(duration: _kDuration, curve: _kCurve);
                    showCupertinoModalBottomSheet(
                        expand: true,
                        isDismissible: true,
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (context) => _formSecondPage());
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          
                          width: 199,
                          height: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                  'assets/PNG/Paints_perspective_matte.png'),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Soy Artista ',
                                    style: TextStyle(fontSize: 20, color: Colors.white),
                                  ),
                                  SvgPicture.asset(
                                      'assets/SVG/Icon feather-chevron-right.svg'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Si eres barbero o tatuador", style: TextStyle(color: Colors.white),),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),
              color: Color.fromRGBO(45, 47, 60 ,1)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push<void>(CreateCustomerPage.route());
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          width: 199,
                          height: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                  'assets/PNG/Message_perspective_matte.png'),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Soy espectador ',
                                    style: TextStyle(fontSize: 20, color: Colors.white),
                                  ),
                                  SvgPicture.asset(
                                      'assets/SVG/Icon feather-chevron-right.svg'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                  "Si eres cliente o quieres buscar negocios", style: TextStyle(color: Colors.white),),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _formSecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 628,
        color: Color.fromRGBO(38, 40, 54  , 1),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
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
              Image.asset('assets/PNG/Grupoprogess2.png'),
              Text(
                "Requerimos tus datos para registrarte como artista",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              Text(
                  "Introduce tus datos personales para poder continuar con tu registro.",
                  style: TextStyle(fontSize: 15, color: Colors.white)),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                           height: 68,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromRGBO(119, 126, 145, .3)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                            padding: const EdgeInsets.only(left: 16),                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: "Nombre",
                                                                        labelStyle: TextStyle(color: Color.fromRGBO(119, 126, 145,1)),

                                    fillColor: Colors.white,
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                           height: 68,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromRGBO(119, 126, 145, .3)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    labelText: "Apellido",
                                                                        labelStyle: TextStyle(color: Color.fromRGBO(119, 126, 145,1)),

                                    fillColor: Colors.white,
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          height: 68,
                          decoration: BoxDecoration(
                              
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromRGBO(119, 126, 145, .3)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: TextFormField(
                                decoration: InputDecoration(

                                    labelText: "Nombre Artista",
                                    fillColor: Colors.white,
                                                                        labelStyle: TextStyle(color: Color.fromRGBO(119, 126, 145,1)),

                                    border: InputBorder.none,
                                    suffixIcon: Icon(Icons.info_outlined, color: Colors.white),
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
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
                                  builder: (context) => _formThirdPage());
                            },
                            child: Text(
                              "Siguiente",
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
            ],
          ),
        ),
      ),
    );
  }
}

class _formThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 628,
        color: Color.fromRGBO(38, 40, 54, 1),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
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
              Image.asset('assets/PNG/Grupoprogess3.png'),
              Text(
                "Crea tu nueva cuenta para empezar a postear",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              Text(
                  "Estas a unos pasos de formar parte de esta gran comunidad 🔥",
                  style: TextStyle(fontSize: 15, color: Colors.white)),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
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
                                    labelText: "Email",
                                                                        labelStyle: TextStyle(color: Color.fromRGBO(119, 126, 145,1)),

                                    fillColor: Colors.white,
                                    border: InputBorder.none),
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
                                    labelText: "Telefono",
                                                                        labelStyle: TextStyle(color: Color.fromRGBO(119, 126, 145,1)),

                                    fillColor: Colors.white,
                                    border: InputBorder.none),
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
                      
                      Container(
                          child: Center(
                              child: TextButton(
                            onPressed: () {
                              showCupertinoModalBottomSheet(
                                  expand: true,
                                  isDismissible: true,
                                  context: context,
                                  backgroundColor: Colors.transparent,
                                  builder: (context) => _formFourthPage());
                            },
                            child: Text(
                              "Siguiente",
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
            ],
          ),
        ),
      ),
    );
  }
}

class _formFourthPage extends StatelessWidget {
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
                Image.asset('assets/PNG/Grupoprogess4.png'),
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
                      style: TextStyle(fontSize: 14, color: Colors.white),
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
                            builder: (context) => _formComplete());
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

class _formComplete extends StatefulWidget {
  @override
  State<_formComplete> createState() => _formCompleteState();
}

class _formCompleteState extends State<_formComplete> with SingleTickerProviderStateMixin{

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
                          child: Image.asset('assets/PNG/Grupo 257.png')),
                        SlideTransition(
                          position: _animation,
                          child: Image.asset('assets/PNG/Rocket_perspective_matte.png'))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/PNG/Elipse 103.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/PNG/Elipse 103.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/PNG/Elipse 103.png'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Text(
                    'Estamos creando tu feed por favor espera un momento…',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
