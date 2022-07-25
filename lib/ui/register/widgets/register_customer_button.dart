import 'package:flutter/material.dart';
import 'package:inker_studio/ui/register/widgets/register_user_by_type_button.dart';

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
