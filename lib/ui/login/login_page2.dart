import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/login/login_bloc.dart';
import 'package:inker_studio/utils/layout/row_spacer.dart';

Color inputBackgroundColor =
    HSLColor.fromColor(const Color(0xff262639)).withLightness(0.3).toColor();

EdgeInsetsGeometry inputContentPadding =
    const EdgeInsets.only(left: 28, top: 40);

TextStyle labelTextStyle =
    const TextStyle(color: Color(0xff777E91), fontSize: 16);

class LoginPage2 extends StatelessWidget {
  const LoginPage2({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const LoginPage2());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: BlocProvider(
          create: (context) => LoginBloc(
              authBloc: context.read(),
              loginUseCase: context.read(),
              googleSingInUsecase: context.read(),
              createCustomerUseCase: context.read()),
          child: Stack(
            children: const [
              LoginBackgraound(),
              LoginLayout(),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginLayout extends StatelessWidget {
  const LoginLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(children: const [LoginHeader(), LoginForm()]),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      margin: const EdgeInsets.fromLTRB(19, 140, 19, 200),
      child: Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: Text('Login',
                    style: TextStyle(
                        fontSize: 59,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
              ),
            ],
          ),
          const RowSpacer(
            space: 20,
          ),
          Row(
            children: const [
              Expanded(
                  child: Text(
                      'Descubre todos los beneficios de formar parte de Inker',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          height: 1.2,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)))
            ],
          ),
          const RowSpacer(space: 20),
          Row(
            children: const [
              IdentifierInput(),
            ],
          ),
          Row(
            children: const [
              PasswordInput(),
            ],
          ),
        ],
      ),
    ));
  }
}

class IdentifierInput extends StatelessWidget {
  const IdentifierInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 16),
        child: TextField(
          style: const TextStyle(color: Colors.white),
          inputFormatters: [LowerCaseTextFormatter()],
          cursorColor: const Color(0xff777E91),
          decoration: InputDecoration(
            contentPadding: inputContentPadding,
            label: const Text(
              'Teléfono, correo electrónico o usuario',
              textAlign: TextAlign.left,
              style: TextStyle(color: Color(0xff777E91), fontSize: 16),
            ),
            filled: true,
            fillColor: inputBackgroundColor,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                  color: Color(0xff777E91), style: BorderStyle.none),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Color(0xff777E91),
                )),
          ),
        ),
      ),
    );
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 16),
        child: TextField(
          style: const TextStyle(color: Colors.white),
          cursorColor: const Color(0xff777E91),
          obscureText: true,
          decoration: InputDecoration(
            contentPadding: inputContentPadding,
            label: Text(
              'Contraseña',
              textAlign: TextAlign.left,
              style: labelTextStyle,
            ),
            filled: true,
            fillColor: inputBackgroundColor,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  color: Color(0xff777E91),
                )),
            suffixIcon: const Padding(
              padding: EdgeInsets.only(right: 23),
              child: Icon(
                Icons.remove_red_eye_outlined,
                color: Color(0xff777E91),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                  color: Color(0xff777E91), style: BorderStyle.none),
            ),
          ),
        ),
      ),
    );
  }
}

class LoginHeader extends StatelessWidget {
  const LoginHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
              child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset(
              'assets/icons/back.png',
            ),
          )),
          Expanded(
              child: Container(
            padding: const EdgeInsets.only(right: 27),
            // margin: const EdgeInsets.only(left: 100),
            child: const Text(
              'Registrarme',
              textAlign: TextAlign.end,
              style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500),
            ),
          )),
        ],
      ),
    );
  }
}

class LoginBackgraound extends StatelessWidget {
  const LoginBackgraound({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
          color: const Color(0xff141D3C),
        ))
      ],
    );
  }
}

class LowerCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toLowerCase(),
      selection: newValue.selection,
    );
  }
}
