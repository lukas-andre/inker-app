import 'package:flutter/material.dart';

import 'create_customer/create_customer_page.dart';

class CreateUserByTypePage extends StatelessWidget {
  const CreateUserByTypePage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(
        builder: (_) => const CreateUserByTypePage());
  }

  @override
  Widget build(BuildContext context) {
    var butttonStyle = TextButton.styleFrom(
        primary: Colors.blue,
        onSurface: Colors.red,
        elevation: 0.1,
        backgroundColor: Colors.white60,
        minimumSize: const Size(300.0, 150.0));
    return Scaffold(
      appBar: AppBar(title: const Text('Create User By Type')),
      body: Align(
        alignment: const Alignment(0, -1 / 3),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              style: butttonStyle,
              onPressed: () {},
              child: const Text('Artist'),
            ),
            TextButton(
              style: butttonStyle,
              onPressed: () {
                Navigator.of(context).push<void>(CreateCustomerPage.route());
              },
              child: const Text('Customer'),
            ),
          ],
        ),
      ),
    );
  }
}
