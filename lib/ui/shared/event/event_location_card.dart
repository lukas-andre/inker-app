import 'dart:math';

import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/location/location.dart';
import 'package:inker_studio/generated/l10n.dart';

class EventLocationCard extends StatelessWidget {
  final Location location;
  final VoidCallback? onMapTap;

  const EventLocationCard({
    super.key,
    required this.location,
    this.onMapTap,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      color: Theme.of(context).cardColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.location_on, color: Theme.of(context).colorScheme.secondary, size: 28),
                const SizedBox(width: 12),
                Text(l10n.location, style: Theme.of(context).textTheme.titleMedium),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              location.formattedAddress,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).colorScheme.secondary),
            ),
            if (location.name.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text(l10n.locationName, style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: 8),
              Text(
                location.name,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Icon(Icons.map, color: Theme.of(context).colorScheme.secondary),
                tooltip: l10n.viewDetails,
                onPressed: onMapTap,
              ),
            ),
          ],
        ),
      ),
    );
  }
} 