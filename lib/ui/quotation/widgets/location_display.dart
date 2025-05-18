import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/location/location.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class LocationDisplay extends StatelessWidget {
  final Location location;

  const LocationDisplay({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.location_on_outlined, // Outlined icon
          color: Color(0xFF8A8A8F), // Muted color
          size: 16,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            location.shortAddress1, // Assuming this is the desired field
            style: TextStyleTheme.bodyText2.copyWith(
              color: const Color(0xFFBDBDBD), // Lighter color
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
      ],
    );
  }
} 