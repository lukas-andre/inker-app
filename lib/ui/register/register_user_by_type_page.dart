import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inker_studio/domain/blocs/register/register_bloc.dart';
import 'package:inker_studio/ui/login2/widgets/login_background.dart';
import 'package:inker_studio/utils/layout/row_spacer.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class RegisterUserByTypePage extends StatelessWidget {
  const RegisterUserByTypePage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(
        builder: (_) => const RegisterUserByTypePage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterBloc(),
      child: Scaffold(
        body: Stack(
          children: const [LoginBackground(), RegisterUserByTypeLayout()],
        ),
      ),
    );
  }
}

class RegisterUserByTypeLayout extends StatelessWidget {
  const RegisterUserByTypeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [CloseRegisterButton()],
        ),
        Row(
          children: const [RegisterProgressIndicator()],
        ),
        Row(
          children: const [RegisterUserByTypeTitle()],
        ),
        Row(
          children: const [RegisterUserByTypeSubTitle()],
        ),
        const RowSpacer(space: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [RegisterArtistButton()],
        ),
        const RowSpacer(space: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [RegisterCustomerButton()],
        ),
      ],
    );
  }
}

class RegisterCustomerButton extends StatelessWidget {
  const RegisterCustomerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RegisterUserByTypeButton(
      text: 'Soy espectador',
      helper: 'Si eres cliente o quieres buscar negocios',
      onTap: () {},
      iconPath: 'assets/icons/message_perspective_matte.png',
    );
  }
}

class RegisterArtistButton extends StatelessWidget {
  const RegisterArtistButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Bloc registerBloc = context.read<RegisterBloc>();
    return RegisterUserByTypeButton(
      text: 'Soy artista',
      helper: 'Si eres barbero o tatuador',
      onTap: () {
        // registerBloc.add(const CreateAccountWithInkerInfoPressed());
        if (Platform.isIOS) {
          showCupertinoModalBottomSheet(
              context: context,
              builder: (context) => const RegisterUserByTypePage());
        } else {
          showModalBottomSheet(
              context: context,
              builder: (context) => const RegisterUserByTypePage());
        }
      },
      iconPath: 'assets/icons/color_palette.png',
    );
  }
}

class RegisterUserByTypeButton extends StatelessWidget {
  final String text;
  final String iconPath;
  final void Function() onTap;
  final String helper;

  const RegisterUserByTypeButton(
      {Key? key,
      required this.text,
      required this.iconPath,
      required this.onTap,
      required this.helper})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.88,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0x80262836),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30, left: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        text,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'assets/icons/svg/angle-right-solid.svg',
                            color: Colors.white,
                            height: 20,
                          ))
                    ],
                  ),
                  Text(
                    helper,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.5,
                  bottom: MediaQuery.of(context).size.height * 0.03),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: IconButton(
                  onPressed: onTap,
                  icon: Image.asset(
                    iconPath,
                  )),
            )
          ]),
        ),
      ),
    );
  }
}

class RegisterUserByTypeSubTitle extends StatelessWidget {
  const RegisterUserByTypeSubTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            margin: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.06, 15, 20, 20),
            child: const Text(
              'Cuentanos, como te gustaria registrarte?',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            )));
  }
}

class RegisterUserByTypeTitle extends StatelessWidget {
  const RegisterUserByTypeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            margin: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.06, 30, 50, 20),
            child: const Text(
              'Que te gusto que quieras registrarte con nostros',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            )));
  }
}

class RegisterProgressIndicator extends StatelessWidget {
  const RegisterProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      builder: (context, state) {
        return Container(
            width: MediaQuery.of(context).size.width * 0.75,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.06,
                top: MediaQuery.of(context).size.width * 0.05),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LinearProgressIndicator(
                value: state.initialProgress,
                backgroundColor: Colors.white,
                color: const Color(0xff7450ff),
                minHeight: 11,
              ),
            ));
      },
    );
  }
}

class CloseRegisterButton extends StatelessWidget {
  const CloseRegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 22, top: 22),
      child: Center(
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: SvgPicture.asset(
                'assets/icons/svg/circle-xmark-solid.svg',
                color: Colors.white,
                // height: 50,
              ))),
    );
  }
}
