import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:inker_studio/domain/blocs/account_verification/account_verification_bloc.dart';
import 'package:inker_studio/domain/blocs/register/customer/register_customer_bloc.dart';
import 'package:inker_studio/ui/login/widgets/login_background.dart';
import 'package:inker_studio/ui/register/register_customer/inputs/register_customer_confirm_password_input.dart';
import 'package:inker_studio/ui/register/register_customer/inputs/register_customer_password_input.dart';
import 'package:inker_studio/ui/register/widgets/close_register_button.dart';
import 'package:inker_studio/ui/register/widgets/register_action_button.dart';
import 'package:inker_studio/ui/register/widgets/register_back_button.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_subtitle.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_title.dart';
import 'package:inker_studio/ui/register/widgets/register_progress_indicator.dart';
import 'package:inker_studio/ui/verification/verification_page.dart';
import 'package:inker_studio/utils/layout/modal_bottom_sheet.dart';
import 'package:inker_studio/utils/snackbar/custom_snackbar.dart';
import 'package:inker_studio/utils/snackbar/invalid_form_snackbar.dart';

class RegisterCustomerPage3 extends StatelessWidget {
  const RegisterCustomerPage3({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(
        builder: (_) => const RegisterCustomerPage3());
  }

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
            RegisterCustomerPage3Layout(),
            RegisterCustomerPage3NextButton(),
          ],
        ),
      ),
    );
  }
}

class RegisterCustomerPage3NextButton extends StatelessWidget {
  const RegisterCustomerPage3NextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RegisterCustomerBloc registerCustomerBloc =
        BlocProvider.of<RegisterCustomerBloc>(context);
    AccountVerificationBloc verificationBloc =
        BlocProvider.of<AccountVerificationBloc>(context);
    return BlocListener<RegisterCustomerBloc, RegisterCustomerState>(
      listenWhen: (previous, current) =>
          previous.registerState != current.registerState,
      listener: (context, state) {
        switch (state.registerState) {
          case RegisterCustomerStatus.ok:
            final snackBar = customSnackBar(
                content: 'Tu usuario ha sido creado! 🥳',
                duration: const Duration(seconds: 4));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            verificationBloc.add(const VerificationSendSMSEvent());
            openModalBottomSheet(
                context: context,
                page: const VerificationPage(),
                enableDrag: false);
            registerCustomerBloc.add(const RegisterCustomerClearForm());
            break;
          case RegisterCustomerStatus.error:
            final snackBar = customSnackBar(
                content: state.errorMessage ?? 'Error',
                duration: const Duration(seconds: 4));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            break;

          case RegisterCustomerStatus.initial:
            registerCustomerBloc.add(const RegisterCustomerClearState());
            break;
          case RegisterCustomerStatus.submitted:
            // TODO: Handle this case.
            break;
        }
      },
      child: BlocBuilder<RegisterCustomerBloc, RegisterCustomerState>(
        buildWhen: (previous, current) =>
            previous.registerState.index != current.registerState.index,
        builder: (context, state) {
          return BlocBuilder<RegisterCustomerBloc, RegisterCustomerState>(
            buildWhen: (previous, current) =>
                previous.form.password != current.form.password ||
                previous.form.confirmedPassword !=
                    current.form.confirmedPassword ||
                previous.registerState.index != current.registerState.index,
            builder: (context, state) {
              return RegisterActionButton(
                text: 'Registrarme',
                onPressed: () {
                  if (state.form.password.valid &&
                      state.form.confirmedPassword.valid &&
                      state.form.status == FormzStatus.valid) {
                    registerCustomerBloc.add(
                      const RegisterCustomerRegisterPressed(),
                    );
                  } else {
                    final snackBar = getInvalidFormSnackBar(context);
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                isLoading:
                    state.registerState == RegisterCustomerStatus.submitted,
              );
            },
          );
        },
      ),
    );
  }
}

class RegisterCustomerPage3Layout extends StatelessWidget {
  const RegisterCustomerPage3Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            RegisterBackButton(),
            CloseRegisterButton(
              index: 3,
            )
          ],
        ),
        BlocBuilder<RegisterCustomerBloc, RegisterCustomerState>(
          builder: (context, state) {
            return Row(
              children: const [
                RegisterProgressIndicator(
                  progress: 3 / 4,
                )
              ],
            );
          },
        ),
        Row(
          children: const [
            RegisterCustomTitle(
              text: 'Crea tu contraseña para poder acceder a Inker 🔐 ',
            )
          ],
        ),
        Row(
          children: [RegisterCustomerPasswordInput()],
        ),
        Row(
          children: [RegisterCustomerConfirmPasswordInput()],
        ),
        Row(
          children: const [
            RegisterCustomSubTitle(
                text:
                    'Estas a unos pasos de formar parte de esta gran comunidad.')
          ],
        ),
      ],
    );
  }
}
