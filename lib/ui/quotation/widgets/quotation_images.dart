import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/shared/widgets/image_gallery_view.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class QuotationImages extends StatelessWidget {
  final Quotation quotation;

  const QuotationImages({super.key, required this.quotation});

  bool get _hasImages =>
      (quotation.referenceImages?.metadata.isNotEmpty ?? false) ||
      (quotation.proposedDesigns?.metadata.isNotEmpty ?? false);

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);

    if (!_hasImages) {
      return Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        color: explorerSecondaryColor,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.image_not_supported_outlined,
                  size: 48,
                  color: tertiaryColor.withOpacity(0.6),
                ),
                const SizedBox(height: 12),
                Text(
                  l10n.noImagesAvailable,
                  style: TextStyleTheme.subtitle1.copyWith(
                    color: tertiaryColor.withOpacity(0.8),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: explorerSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (quotation.referenceImages?.metadata.isNotEmpty ?? false) ...[
                  Text(
                    l10n.referenceImages,
                    style: TextStyleTheme.subtitle1,
                  ),
                  const SizedBox(height: 12),
                  _buildImageGrid(
                    quotation.referenceImages!.metadata,
                    l10n,
                    context,
                    constraints.maxWidth,
                  ),
                  const SizedBox(height: 16),
                ],
                if (quotation.proposedDesigns?.metadata.isNotEmpty ?? false) ...[
                  Text(
                    l10n.proposedDesigns,
                    style: TextStyleTheme.subtitle1,
                  ),
                  const SizedBox(height: 12),
                  _buildImageGrid(
                    quotation.proposedDesigns!.metadata,
                    l10n,
                    context,
                    constraints.maxWidth,
                  ),
                ],
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildImageGrid(
    List<MultimediaMetadata> images,
    S l10n,
    BuildContext context,
    double maxWidth,
  ) {
    final crossAxisCount = _calculateCrossAxisCount(maxWidth);
    final aspectRatio = _calculateAspectRatio(maxWidth, crossAxisCount);

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: aspectRatio,
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        return _ImageTile(
          metadata: images[index],
          onTap: () => _openGallery(context, images, index, l10n),
        );
      },
    );
  }

  int _calculateCrossAxisCount(double width) {
    if (width <= 300) return 2;
    if (width <= 600) return 3;
    return 4;
  }

  double _calculateAspectRatio(double width, int crossAxisCount) {
    final tileWidth = (width - (16 * 2) - (8 * (crossAxisCount - 1))) / crossAxisCount;
    return tileWidth / tileWidth; // 1:1 aspect ratio
  }

  void _openGallery(
    BuildContext context,
    List<MultimediaMetadata> images,
    int initialIndex,
    S l10n,
  ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ImageGalleryView(
          images: images,
          initialIndex: initialIndex,
          l10n: l10n,
        ),
      ),
    );
  }
}

class _ImageTile extends StatelessWidget {
  final MultimediaMetadata metadata;
  final VoidCallback onTap;

  const _ImageTile({
    required this.metadata,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Hero(
        tag: metadata.url,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            metadata.url,
            fit: BoxFit.cover,
            loadingBuilder: _buildLoading,
            errorBuilder: _buildError,
          ),
        ),
      ),
    );
  }

  Widget _buildLoading(
    BuildContext context,
    Widget child,
    ImageChunkEvent? loadingProgress,
  ) {
    if (loadingProgress == null) return child;

    return Container(
      color: Colors.grey[850],
      child: Center(
        child: CircularProgressIndicator(
          value: loadingProgress.expectedTotalBytes != null
              ? loadingProgress.cumulativeBytesLoaded /
                  loadingProgress.expectedTotalBytes!
              : null,
          color: tertiaryColor,
          strokeWidth: 2,
        ),
      ),
    );
  }

  Widget _buildError(
    BuildContext context,
    Object error,
    StackTrace? stackTrace,
  ) {
    return Container(
      color: Colors.grey[850],
      child: Center(
        child: Icon(
          Icons.error_outline,
          color: tertiaryColor,
          size: 24,
        ),
      ),
    );
  }
}