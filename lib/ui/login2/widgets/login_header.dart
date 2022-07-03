import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/login/login_bloc.dart';
import 'package:inker_studio/ui/register/register_user_by_type_page.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Bloc loginBloc = context.read<LoginBloc>();
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
              child: GestureDetector(
            onTap: () => {Navigator.pop(context)},
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Image.asset(
                'assets/icons/back.png',
              ),
            ),
          )),
          Expanded(
              child: GestureDetector(
            onTap: () {
              loginBloc.add(const CreateAccountWithInkerInfoPressed());
              if (Platform.isIOS) {
                CupertinoScaffold.showCupertinoModalBottomSheet(
                    context: context,
                    builder: (context) => const RegisterUserByTypePage());
              } else {
                showModalBottomSheet(
                    context: context,
                    builder: (context) => const RegisterUserByTypePage());
              }
            },
            child: Container(
              padding: const EdgeInsets.only(right: 27),
              child: const Text(
                'Registrarme',
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
