import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/login/login_bloc.dart';
import 'package:inker_studio/ui/register/register_user_by_type_page.dart';
import 'package:inker_studio/utils/layout/modal_bottom_sheet.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

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
              openModalBottomSheet(
                  context: context,
                  page: const RegisterUserByTypePage(),
                  isRoot: true);
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
