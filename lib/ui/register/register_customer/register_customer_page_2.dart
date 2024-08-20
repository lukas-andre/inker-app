import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/customer/register_customer_bloc.dart';
import 'package:inker_studio/domain/models/user/user_type.dart';
import 'package:inker_studio/ui/login/widgets/login_background.dart';
import 'package:inker_studio/ui/register/register_customer/inputs/register_customer_email_input.dart';
import 'package:inker_studio/ui/register/register_customer/inputs/register_customer_phone_number_input.dart';
import 'package:inker_studio/ui/register/register_customer/register_customer_page_3.dart';
import 'package:inker_studio/ui/register/widgets/close_register_button.dart';
import 'package:inker_studio/ui/register/widgets/register_action_button.dart';
import 'package:inker_studio/ui/register/widgets/register_back_button.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_subtitle.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_title.dart';
import 'package:inker_studio/ui/register/widgets/register_progress_indicator.dart';
import 'package:inker_studio/utils/layout/modal_bottom_sheet.dart';
import 'package:inker_studio/utils/snackbar/invalid_form_snackbar.dart';

class RegisterCustomerPage2 extends StatelessWidget {
  const RegisterCustomerPage2({super.key});

  static Route route() {
    return MaterialPageRoute<void>(
        builder: (_) => const RegisterCustomerPage2());
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
            RegisterCustomerPage2Layout(),
            RegisterCustomerPage2NextButton(),
          ],
        ),
      ),
    );
  }
}

class RegisterCustomerPage2NextButton extends StatelessWidget {
  const RegisterCustomerPage2NextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCustomerBloc, RegisterCustomerState>(
      buildWhen: (previous, current) =>
          previous.form.email != current.form.email ||
          previous.form.phoneNumber != current.form.phoneNumber,
      builder: (context, state) {
        return RegisterActionButton(
            text: 'Siguiente',
            onPressed: () {
              if (state.form.email.valid && state.form.phoneNumber.valid) {
                openModalBottomSheet(
                    context: context, page: const RegisterCustomerPage3());
                context.read<RegisterCustomerBloc>().add(
                      const RegisterCustomerNextPagePressed(2),
                    );
              } else {
                final snackBar = getInvalidFormSnackBar(context);
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            });
      },
    );
  }
}

class RegisterCustomerPage2Layout extends StatelessWidget {
  const RegisterCustomerPage2Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RegisterBackButton(),
            CloseRegisterButton(
              index: 2,
              userType: UserType.customer,
            )
          ],
        ),
        const Row(
          children: [
            RegisterProgressIndicator(
              progress: 2 / 4,
            )
          ],
        ),
        const Row(
          children: [
            RegisterCustomTitle(
              text: 'Completa tus datos de contacto 📞',
            )
          ],
        ),
        Row(
          children: [RegisterCustomerEmailInput()],
        ),
        Row(
          children: [
            RegisterCustomerPhoneNumberInput(),
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
