import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class EmptyState extends StatelessWidget {
  final IconData icon;
  final String title;
  final String message;
  final Widget? actionButton;

  const EmptyState({
    Key? key,
    required this.icon,
    required this.title,
    required this.message,
    this.actionButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 64.0,
              color: Colors.white.withOpacity(0.5),
            ),
            const SizedBox(height: 16.0),
            Text(
              title,
              style: TextStyleTheme.headline3.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8.0),
            Text(
              message,
              style: TextStyleTheme.bodyText2.copyWith(
                color: Colors.white.withOpacity(0.7),
              ),
              textAlign: TextAlign.center,
            ),
            if (actionButton != null) ...[
              const SizedBox(height: 24.0),
              actionButton!,
            ],
          ],
        ),
      ),
    );
  }
}