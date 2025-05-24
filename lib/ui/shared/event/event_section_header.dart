import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class EventSectionHeader extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final VoidCallback? onTap;
  final Widget? trailing;

  const EventSectionHeader({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
    this.onTap,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    Widget content = Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              title,
              style: TextStyleTheme.subtitle1.copyWith(
                color: color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          if (trailing != null) trailing!,
        ],
      ),
    );

    if (onTap != null) {
      return InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: content,
      );
    }

    return content;
  }
} 