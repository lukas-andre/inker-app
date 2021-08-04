import 'package:flutter/material.dart';

class CreateUserByTypePage extends StatelessWidget {
  const CreateUserByTypePage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(
        builder: (_) => const CreateUserByTypePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create User By Type')),
      body: Align(
        alignment: const Alignment(0, -1 / 3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.blue,
                onSurface: Colors.red,
              ),
              onPressed: null,
              child: const Text('TextButton 1'),
            ),
            const Padding(padding: EdgeInsets.all(12)),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.blue,
                onSurface: Colors.red,
              ),
              onPressed: null,
              child: const Text('TextButton 2'),
            ),
            const Padding(padding: EdgeInsets.all(12)),
          ],
        ),
      ),
    );
  }
}
