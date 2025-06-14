import 'package:flutter/material.dart';
import 'package:inker_studio/features/register/ui/register/widgets/register_custom_subtitle.dart' show RegisterCustomSubTitle;

class RegisterUserByTypeSubTitle extends StatelessWidget {
  const RegisterUserByTypeSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const RegisterCustomSubTitle(
        text: 'Cuentanos, como te gustaria registrarte?');
  }
}
