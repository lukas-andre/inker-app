import 'package:flutter/material.dart';
import 'package:inker_studio/features/register/ui/register/widgets/register_custom_title.dart' show RegisterCustomTitle;

class RegisterUserByTypeTitle extends StatelessWidget {
  const RegisterUserByTypeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const RegisterCustomTitle(
        text: 'Que gusto que quieras registrarte con nostros');
  }
}
