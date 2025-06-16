import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:inker_studio/domain/blocs/account_verification/account_verification_bloc.dart';
import 'package:inker_studio/features/auth_shared/models/user_type.dart'
    show UserType;
import 'package:inker_studio/features/login/ui/login/widgets/login_background.dart'
    show LoginBackground;
import 'package:inker_studio/features/register/bloc/register/customer/register_customer_bloc.dart';
import 'package:inker_studio/features/register/ui/register/customer/inputs/register_customer_confirm_password_input.dart'
    show RegisterCustomerConfirmPasswordInput;
import 'package:inker_studio/features/register/ui/register/customer/inputs/register_customer_password_input.dart'
    show RegisterCustomerPasswordInput;
import 'package:inker_studio/features/register/ui/register/widgets/close_register_button.dart'
    show CloseRegisterButton;
import 'package:inker_studio/features/register/ui/register/widgets/register_action_button.dart'
    show RegisterActionButton;
import 'package:inker_studio/features/register/ui/register/widgets/register_back_button.dart'
    show RegisterBackButton;
import 'package:inker_studio/features/register/ui/register/widgets/register_custom_subtitle.dart'
    show RegisterCustomSubTitle;
import 'package:inker_studio/features/register/ui/register/widgets/register_custom_title.dart'
    show RegisterCustomTitle;
import 'package:inker_studio/features/register/ui/register/widgets/register_progress_indicator.dart'
    show RegisterProgressIndicator;
import 'package:inker_studio/features/verification/ui/verification_page.dart';
import 'package:inker_studio/utils/layout/modal_bottom_sheet.dart';
import 'package:inker_studio/utils/snackbar/custom_snackbar.dart';
import 'package:inker_studio/utils/snackbar/invalid_form_snackbar.dart';
import 'package:inker_studio/test_utils/register_keys.dart';

class RegisterCustomerPage3 extends StatelessWidget {
  const RegisterCustomerPage3({super.key});

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
        child: const Stack(
          children: [
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
    super.key,
  });

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
                key: registerKeys.customerRegistration.createAccountButton,
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
  const RegisterCustomerPage3Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RegisterBackButton(),
            CloseRegisterButton(
              index: 3,
              userType: UserType.customer,
            )
          ],
        ),
        BlocBuilder<RegisterCustomerBloc, RegisterCustomerState>(
          builder: (context, state) {
            return const Row(
              children: [
                RegisterProgressIndicator(
                  progress: 3 / 4,
                )
              ],
            );
          },
        ),
        const Row(
          children: [
            RegisterCustomTitle(
              text: 'Crea tu contraseña para poder acceder a Inker 🔐',
            )
          ],
        ),
        Row(
          children: [
            RegisterCustomerPasswordInput(
              key: registerKeys.customerRegistration.passwordField,
            ),
          ],
        ),
        Row(
          children: [
            RegisterCustomerConfirmPasswordInput(
              key: registerKeys.customerRegistration.confirmPasswordField,
            ),
          ],
        ),
        const Row(
          children: [
            RegisterCustomSubTitle(
                text:
                    'Estas a unos pasos de formar parte de esta gran comunidad.')
          ],
        ),
      ],
    );
  }
}
