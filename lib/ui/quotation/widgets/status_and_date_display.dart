import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:intl/intl.dart';

class StatusAndDateDisplay extends StatelessWidget {
  final String statusText;
  final Color statusColor;
  final IconData statusIcon;
  final DateTime date;
  final String? dateLabel; // Optional label like "Created", "Offered"

  const StatusAndDateDisplay({
    super.key,
    required this.statusText,
    required this.statusColor,
    required this.statusIcon,
    required this.date,
    this.dateLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Status Tag
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: statusColor.withOpacity(0.15),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: statusColor.withOpacity(0.5), width: 1) // Subtle border
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min, // Fit content
            children: [
              Icon(statusIcon, color: statusColor, size: 14),
              const SizedBox(width: 5),
              Text(
                statusText,
                style: TextStyleTheme.caption.copyWith(
                  color: statusColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        // Date Display
        Row(
          children: [
            const Icon(
              Icons.calendar_today_outlined, // Use outlined icon
              color: Color(0xFF8A8A8F), // Slightly muted color
              size: 14,
            ),
            const SizedBox(width: 5),
            if (dateLabel != null)
              Text(
                 '$dateLabel: ', // Show label if provided
                 style: TextStyleTheme.caption.copyWith(
                   color: const Color(0xFF8A8A8F),
                   fontWeight: FontWeight.w500,
                 ),
              ),
            Text(
              DateFormat.yMMMd().format(date),
              style: TextStyleTheme.caption.copyWith(
                color: const Color(0xFFBDBDBD), // Lighter date color
                 fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
} 