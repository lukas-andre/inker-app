import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:inker_studio/data/api/agenda/dtos/get_artist_works_response.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/customer/artist_profile/widgets/image_viewer_dialog.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';

class ArtistWorksGallery extends StatelessWidget {
  final List<WorkItem> works;
  final bool isMinimalist;

  const ArtistWorksGallery({
    super.key, 
    required this.works,
    this.isMinimalist = false,
  });

  List<String> _getImageUrls(WorkEvidence? workEvidence) {
    final List<String> urls = [];
    for (var metadata in workEvidence?.metadata ?? []) {
      urls.add(metadata.url);
    }
    return urls;
  }

  void _showImagesDialog(BuildContext context, List<String> imageUrls) {
    if (imageUrls.isEmpty) return;
    
    showDialog(
      context: context,
      builder: (_) => ImageViewerDialog(urls: imageUrls),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: isMinimalist ? 18 : 24,
              right: isMinimalist ? 18 : 24,
              bottom: isMinimalist ? 16 : 20,
            ),
            child: Text(
              S.of(context).works,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          
          _getImageUrls(works.first.workEvidence).isNotEmpty
              ? GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: isMinimalist ? 2 : 3,
                    crossAxisSpacing: isMinimalist ? 12 : 8,
                    mainAxisSpacing: isMinimalist ? 12 : 8,
                  ),
                  itemCount: _getImageUrls(works.first.workEvidence).length,
                  padding: EdgeInsets.symmetric(horizontal: isMinimalist ? 18 : 24),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => _showImagesDialog(context, _getImageUrls(works.first.workEvidence)),
                      child: Hero(
                        tag: 'work_image_$index',
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(isMinimalist ? 10 : 8),
                            boxShadow: isMinimalist 
                                ? [] 
                                : [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 8,
                                      offset: const Offset(0, 2),
                                    )
                                  ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(isMinimalist ? 10 : 8),
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                // Image
                                CachedNetworkImage(
                                  imageUrl: _getImageUrls(works.first.workEvidence)[index],
                                  fit: BoxFit.cover,
                                  placeholder: (_, __) => Container(
                                    color: HSLColor.fromColor(Theme.of(context).colorScheme.surface).withLightness(0.15).toColor(),
                                    child: const Center(child: InkerProgressIndicator()),
                                  ),
                                  errorWidget: (_, __, ___) => Container(
                                    color: HSLColor.fromColor(Theme.of(context).colorScheme.surface).withLightness(0.15).toColor(),
                                    child: Icon(Icons.error, color: Theme.of(context).colorScheme.error),
                                  ),
                                ),
                                
                                // Multiple images indicator
                                if (_getImageUrls(works.first.workEvidence).length > 1)
                                  Positioned(
                                    bottom: 8,
                                    right: 8,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 6,
                                      ),
                                      decoration: BoxDecoration(
                                        color: HSLColor.fromColor(Theme.of(context).colorScheme.surface).withLightness(0.25).toColor(),
                                        borderRadius: BorderRadius.circular(16),
                                        border: Border.all(color: Theme.of(context).colorScheme.secondary, width: 1.5),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Icon(
                                            Icons.photo_library,
                                            color: Colors.white,
                                            size: 12,
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            '${_getImageUrls(works.first.workEvidence).length}',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}