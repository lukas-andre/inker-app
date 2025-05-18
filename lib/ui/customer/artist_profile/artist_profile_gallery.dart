import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:inker_studio/data/api/agenda/dtos/get_artist_works_response.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';

class ArtistGallery extends StatelessWidget {
  final List<WorkItem> works;

  const ArtistGallery({super.key, required this.works});

  List<ImageProvider<Object>> _buildImages(WorkEvidence? workEvidence) {
    final List<ImageProvider<Object>> images = [];
    for (var metadata in workEvidence?.metadata ?? []) {
      images.add(NetworkImage(metadata.url));
    }
    return images;
  }

  List<String> _buildUrls(WorkEvidence? workEvidence) {
    final List<String> urls = [];
    for (var metadata in workEvidence?.metadata ?? []) {
      urls.add(metadata.url);
    }
    return urls;
  }

  void _showImageModal(BuildContext context, List<ImageProvider<Object>> images,
      List<String> urls) {
    if (images.isNotEmpty) {
      final PageController pageController = PageController();
      showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.zero,
                    child: Stack(
                      children: [
                        PageView.builder(
                          controller: pageController,
                          itemCount: images.length,
                          itemBuilder: (context, index) {
                            return Container(
                              alignment: Alignment.center,
                              // child: Image(
                              //   image: images[index],
                              //   fit: BoxFit.scaleDown,
                              // ),
                              child: CachedNetworkImage(
                                imageUrl: urls[index],
                                fit: BoxFit.scaleDown,
                                placeholder: (context, url) => const Center(
                                  child: InkerProgressIndicator(),
                                ),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                            );
                          },
                        ),
                        if (images.length > 1) ...[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.4),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                onPressed: () {
                                  pageController.previousPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                  );
                                },
                                icon: const Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.4),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                onPressed: () {
                                  pageController.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                  );
                                },
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(8),
      itemCount: works.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        childAspectRatio: 1.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        final work = works[index];
        final images = _buildImages(work.workEvidence);
        final urls = _buildUrls(work.workEvidence);

        return GestureDetector(
          onTap: () => _showImageModal(context, images, urls),
          child: Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: CachedNetworkImage(
                    imageUrl: work.workEvidence?.metadata?.first.url ?? '',
                    fit: BoxFit.cover,
                    placeholder: (context, url) => const Center(
                      child: InkerProgressIndicator(),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
              if (work.workEvidence?.count != null &&
                  work.workEvidence!.count! > 1)
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: GestureDetector(
                    onTap: () => _showImageModal(context, images, urls),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        S.of(context).seeMore,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
