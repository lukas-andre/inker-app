import 'package:flutter/material.dart';

class LoginBackground extends StatelessWidget {
  const LoginBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.surface, width: 3),
              color: Theme.of(context).colorScheme.surface),
        ))
      ],
    );
  }
}
