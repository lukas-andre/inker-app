import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/customer/register_customer_bloc.dart';
import 'package:inker_studio/ui/login/widgets/login_background.dart';
import 'package:inker_studio/ui/register/register_customer/inputs/register_customer_last_name_input.dart';
import 'package:inker_studio/ui/register/register_customer/inputs/register_customer_name_input.dart';
import 'package:inker_studio/ui/register/register_customer/register_customer_page_2.dart';
import 'package:inker_studio/ui/register/widgets/close_register_button.dart';
import 'package:inker_studio/ui/register/widgets/register_action_button.dart';
import 'package:inker_studio/ui/register/widgets/register_back_button.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_subtitle.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_title.dart';
import 'package:inker_studio/ui/register/widgets/register_progress_indicator.dart';
import 'package:inker_studio/utils/layout/modal_bottom_sheet.dart';
import 'package:inker_studio/utils/snackbar/invalid_form_snackbar.dart';

// TODO: TODAS SON IGUALES SOLO CAMBIAN LAS VALIDACIONES, LAS ROWS,
// EL PROGRESS, Y LOS TITULOS, POR LO QUE SE PUEDE AUTOMATIZAR
class RegisterCustomerPage1 extends StatelessWidget {
  const RegisterCustomerPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () {
          final currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Stack(
          children: const [
            LoginBackground(),
            RegisterCustomerLayout(),
            RegisterCustomerPage1NextButton(),
          ],
        ),
      ),
    );
  }
}

class RegisterCustomerPage1NextButton extends StatelessWidget {
  const RegisterCustomerPage1NextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCustomerBloc, RegisterCustomerState>(
      buildWhen: (previous, current) =>
          previous.form.firstName != current.form.firstName ||
          previous.form.lastName != current.form.lastName,
      builder: (context, state) {
        return RegisterActionButton(
          text: 'Siguiente',
          onPressed: () {
            if (state.form.firstName.valid && state.form.lastName.valid) {
              openModalBottomSheet(
                  context: context, page: const RegisterCustomerPage2());
              context.read<RegisterCustomerBloc>().add(
                    const RegisterCustomerNextPagePressed(1),
                  );
            } else {
              final snackBar = getInvalidFormSnackBar(context);
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          },
        );
      },
    );
  }
}

class RegisterCustomerLayout extends StatelessWidget {
  const RegisterCustomerLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            RegisterBackButton(),
            CloseRegisterButton(
              index: 1,
            )
          ],
        ),
        Row(
          children: const [
            RegisterProgressIndicator(
              progress: 1 / 4,
            )
          ],
        ),
        Row(
          children: const [
            RegisterCustomTitle(
              text: 'Completa tus datos personales ℹ️',
            )
          ],
        ),
        Row(
          children: [RegisterCustomerNameInput()],
        ),
        Row(
          children: [RegisterCustomerLastNameInput()],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            RegisterCustomSubTitle(
                text:
                    'Introduce tus datos personales para poder continuar tu registro.')
          ],
        ),
      ],
    );
  }
}

class KeyBoardActionBackButton extends StatelessWidget {
  const KeyBoardActionBackButton({Key? key, this.isActive = true})
      : super(key: key);
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Text(
          'Anterior',
          style: TextStyle(
              fontSize: 16,
              color: isActive
                  ? CupertinoColors.activeBlue
                  : CupertinoColors.systemGrey,
              fontFamily: 'Poppins'),
        ),
      ),
    );
  }
}

class KeyBoardActionNextButton extends StatelessWidget {
  const KeyBoardActionNextButton(
      {Key? key, this.isActive = true, this.isFinal = false})
      : super(key: key);
  final bool isActive;
  final bool isFinal;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Text(
          isFinal ? 'Listo' : 'Siguiente',
          style: TextStyle(
              fontSize: 16,
              color: isActive
                  ? CupertinoColors.activeBlue
                  : CupertinoColors.systemGrey,
              fontFamily: 'Poppins'),
        ),
      ),
    );
  }
}
