import 'package:flutter/material.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class CustomerActionButtons extends StatelessWidget {
  final S l10n;
  final VoidCallback onAccept;
  final VoidCallback onAppeal;
  final VoidCallback onReject;

  const CustomerActionButtons({
    super.key,
    required this.l10n,
    required this.onAccept,
    required this.onAppeal,
    required this.onReject,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildActionButton(
            onPressed: onAccept,
            icon: Icons.check,
            label: l10n.accept,
            isPrimary: true,
          ),
          const SizedBox(width: 8),
          _buildActionButton(
            onPressed: onAppeal,
            icon: Icons.edit,
            label: l10n.appeal,
            isPrimary: false,
          ),
          const SizedBox(width: 8),
          _buildActionButton(
            onPressed: onReject,
            icon: Icons.cancel,
            label: l10n.reject,
            isPrimary: false,
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required VoidCallback onPressed,
    required IconData icon,
    required String label,
    required bool isPrimary,
  }) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, color: isPrimary ? Colors.white : primaryColor),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        backgroundColor: isPrimary ? primaryColor : Colors.white,
        foregroundColor: isPrimary ? Colors.white : primaryColor,
        side: const BorderSide(color: primaryColor),
        textStyle: TextStyleTheme.button,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
    );
  }
}