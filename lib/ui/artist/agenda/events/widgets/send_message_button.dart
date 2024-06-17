import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class MessageButton extends StatelessWidget {
  const MessageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          // Handle sending message logic here
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[700],
          padding: const EdgeInsets.symmetric(vertical: 0.0),
          shape: const StadiumBorder(),
        ),
        child: Text(
          'Enviar mensaje',
          style: TextStyleTheme.copyWith(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
