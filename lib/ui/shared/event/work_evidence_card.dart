import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/work_evidence/work_evidence.dart' show WorkEvidence;
import 'package:inker_studio/generated/l10n.dart' show S;
import 'package:inker_studio/ui/theme/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

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
          child: Text(l10n.noWorkEvidence,
              style: Theme.of(context).textTheme.bodyLarge),
        ),
      );
    }
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      color: explorerSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (workEvidence.metadata.isEmpty)
              Text(
                S.of(context).noWorkEvidence,
                style: TextStyleTheme.bodyText1,
              )
            else ...[
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
                  return Hero(
                    tag: 'work-evidence-$index-$imageUrl',
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () => _viewFullImage(context, imageUrl),
                          child: Image.network(
                            imageUrl,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                Container(
                              color: Colors.grey[800],
                              child: const Center(
                                child: Icon(Icons.broken_image,
                                    color: Colors.grey, size: 24),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ],
        ),
      ),
    );
  }
    void _viewFullImage(BuildContext context, String imageUrl) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Center(
            child: Hero(
              tag: 'image-full-$imageUrl',
              child: InteractiveViewer(
                child: Image.network(imageUrl),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
