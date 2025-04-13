import 'package:flutter/material.dart';
import 'package:inker_studio/ui/register/register_customer/register_customer_page_1.dart';
import 'package:inker_studio/ui/register/widgets/register_user_by_type_button.dart';
import 'package:inker_studio/utils/layout/modal_bottom_sheet.dart';
import 'package:inker_studio/test_utils/register_keys.dart';

class RegisterCustomerButton extends StatelessWidget {
  const RegisterCustomerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return RegisterUserByTypeButton(
      key: registerKeys.customerRegistration.customerTypeButton,
      text: 'Soy espectador',
      helper: 'Si eres cliente o quieres buscar negocios',
      onTap: () {
        openModalBottomSheet(
            context: context, page: const RegisterCustomerPage1());
      },
      iconPath: 'assets/icons/message-perspective-matte.png',
    );
  }
}
