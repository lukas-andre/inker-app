import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class DescriptionDisplay extends StatelessWidget {
  final String description;
  final int maxLines;

  const DescriptionDisplay({
    super.key,
    required this.description,
    this.maxLines = 3, // Default max lines
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: TextStyleTheme.bodyText1.copyWith(
        color: const Color(0xFFF2F2F2),
        // fontWeight: FontWeight.bold, // Make it normal weight usually
      ),
    );
  }
} 