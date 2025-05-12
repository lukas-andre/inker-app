import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/appointment/appointment.dart';
import 'package:inker_studio/generated/l10n.dart';

class WorkEvidenceCard extends StatelessWidget {
  final WorkEvidence workEvidence;

  const WorkEvidenceCard({
    super.key,
    required this.workEvidence,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    if (workEvidence.metadata.isEmpty) {
      return Card(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        color: Theme.of(context).cardColor,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(l10n.noWorkEvidence, style: Theme.of(context).textTheme.bodyLarge),
        ),
      );
    }
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      color: Theme.of(context).cardColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.workEvidence, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 12),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: workEvidence.metadata.length,
              itemBuilder: (context, index) {
                final imageUrl = workEvidence.metadata[index].url;
                return ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Center(child: Text(l10n.couldNotLoadImage)),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
} 