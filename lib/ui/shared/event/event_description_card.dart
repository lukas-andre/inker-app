import 'package:flutter/material.dart';
import 'package:inker_studio/generated/l10n.dart';

class EventDescriptionCard extends StatelessWidget {
  final String description;
  final String? notes;

  const EventDescriptionCard({
    super.key,
    required this.description,
    this.notes,
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
            Text(
              l10n.description,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 12),
            Text(
              description.isNotEmpty ? description : l10n.noDescription,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            if (notes != null && notes!.isNotEmpty) ...[
              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 8),
              Text(
                l10n.note,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(height: 8),
              Text(
                notes!,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white70, height: 1.5),
              ),
            ],
          ],
        ),
      ),
    );
  }
} 