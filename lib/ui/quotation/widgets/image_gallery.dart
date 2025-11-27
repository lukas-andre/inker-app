import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart'; // For MultimediaMetadata
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';

class ImageGallery extends StatelessWidget {
  final List<MultimediaMetadata> images;
  final double height;
  final int maxImagesToShow; // Show a preview grid

  const ImageGallery({
    super.key,
    required this.images,
    this.height = 60,
    this.maxImagesToShow = 4,
  });

  @override
  Widget build(BuildContext context) {
    if (images.isEmpty) {
      return const SizedBox.shrink();
    }

    final bool hasMoreImages = images.length > maxImagesToShow;
    final int itemCount = hasMoreImages ? maxImagesToShow : images.length;

    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemCount + (hasMoreImages ? 1 : 0), // Add 1 for the "more" indicator
        itemBuilder: (context, index) {
          if (hasMoreImages && index == itemCount) {
            // Show a "more" indicator
            return _buildMoreIndicator(context, images.length - maxImagesToShow);
          }

          final image = images[index];
          return Padding(
            padding: const EdgeInsets.only(right: 6.0), // Reduced padding
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.network(
                image.url,
                width: height, // Make images square
                height: height,
                fit: BoxFit.cover,
                // Add error builder for network images
                errorBuilder: (context, error, stackTrace) => Container(
                  width: height,
                  height: height,
                  color: Colors.grey[800], // Darker background for error
                  child: Icon(Icons.broken_image_outlined, color: Colors.grey[500], size: height * 0.5),
                ),
                // Add loading builder
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Container(
                    width: height,
                    height: height,
                    color: Colors.grey[850], // Dark background for loading
                    child: Center(
                        child: SizedBox(
                           width: height * 0.4,
                           height: height * 0.4,
                           child: const InkerProgressIndicator(),
                        ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildMoreIndicator(BuildContext context, int remainingCount) {
     return Container(
        width: height, // Same size as images
        height: height,
        margin: const EdgeInsets.only(right: 6.0),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.6),
          borderRadius: BorderRadius.circular(4),
           border: Border.all(color: Colors.grey[700]!, width: 1), // Subtle border
        ),
        child: Center(
          child: Text(
            '+$remainingCount',
            style: TextStyleTheme.caption.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      );
  }

} 