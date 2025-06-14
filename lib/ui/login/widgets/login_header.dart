import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/login/login_bloc.dart';
import 'package:inker_studio/ui/register/register_user_by_type_page.dart';
import 'package:inker_studio/utils/layout/modal_bottom_sheet.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    Bloc loginBloc = context.read<LoginBloc>();
    final topPadding = Responsive.value(
      context,
      mobile: 40,
      tablet: 50,
      desktop: 60,
    );
    
    final horizontalPadding = Responsive.value(
      context,
      mobile: 20,
      tablet: 30,
      desktop: 40,
    );
    
    final fontSize = Responsive.fontSize(context, 16);
    
    return Padding(
      padding: EdgeInsets.only(top: topPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
              child: GestureDetector(
            onTap: () => {Navigator.pop(context)},
            child: Padding(
              padding: EdgeInsets.only(left: horizontalPadding),
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
              padding: EdgeInsets.only(right: horizontalPadding),
              child: Text(
                'Registrarme',
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: fontSize),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
