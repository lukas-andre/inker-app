import 'package:flutter/material.dart';
import 'package:inker_studio/ui/quotation/models/counter_part_info.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class CounterpartHeader extends StatelessWidget {
  final CounterpartInfo info;
  final bool isArtistView; // If true, we are the artist looking at customer/offer

  const CounterpartHeader({
    super.key,
    required this.info,
    required this.isArtistView,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Avatar
        if (info.profileThumbnail != null)
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(info.profileThumbnail!),
            backgroundColor: Colors.grey[300], // Background for loading/error
          )
        else
          CircleAvatar(
            radius: 20,
            backgroundColor: const Color(0xFF686D90),
            child: Text(
              info.firstLetter,
              style: TextStyleTheme.subtitle1.copyWith(color: Colors.white),
            ),
          ),
        const SizedBox(width: 12),
        // Name and optional username
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                info.displayName,
                style: TextStyleTheme.subtitle1.copyWith(
                  color: const Color(0xFFF2F2F2),
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              // Show username only for customers viewing artist profiles OR
              // Artists viewing customer profiles in certain contexts (e.g., participating)
              if (info.username != null && (!isArtistView || info.type == CounterpartType.customer)) // Adjust logic as needed
                Text(
                  '@${info.username}',
                  style: TextStyleTheme.bodyText2.copyWith(
                    color: const Color(0xFF686D90),
                  ),
                  maxLines: 1,
                   overflow: TextOverflow.ellipsis,
                ),
            ],
          ),
        ),
      ],
    );
  }
} 