import 'package:flutter/material.dart';
import 'package:inker_studio/ui/register/widgets/register_custom_subtitle.dart';

class RegisterUserByTypeSubTitle extends StatelessWidget {
  const RegisterUserByTypeSubTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const RegisterCustomSubTitle(
        text: 'Cuentanos, como te gustaria registrarte?');
  }
}
