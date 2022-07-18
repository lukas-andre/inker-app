import 'package:flutter/material.dart';
import 'package:inker_studio/ui/login2/widgets/login_background.dart';
import 'package:inker_studio/ui/register/widgets/register_user_by_type_layout.dart';

class RegisterUserByTypePage extends StatelessWidget {
  const RegisterUserByTypePage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(
        builder: (_) => const RegisterUserByTypePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: const [LoginBackground(), RegisterUserByTypeLayout()],
      ),
    );
  }
}
