import 'package:flutter/material.dart';

class SMSVerificationPage extends StatelessWidget {
  const SMSVerificationPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const SMSVerificationPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SMS Verification')),
      body: Container(),
    );
  }
}
