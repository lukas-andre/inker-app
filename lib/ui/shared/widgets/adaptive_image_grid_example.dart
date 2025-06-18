import 'package:flutter/material.dart';
import 'package:inker_studio/ui/shared/widgets/adaptive_image_grid.dart';

class AdaptiveImageGridExample extends StatelessWidget {
  const AdaptiveImageGridExample({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> sampleImages = List.generate(
      20,
      (index) => 'https://picsum.photos/seed/$index/400/400',
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Adaptive Image Grid Examples'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Example 1: Default grid with lightbox
            _buildSection(
              'Default Grid with Lightbox',
              AdaptiveImageGrid(
                imageUrls: sampleImages.take(9).toList(),
                enableLightbox: true,
              ),
            ),

            // Example 2: Custom aspect ratio
            _buildSection(
              'Custom Aspect Ratio (16:9)',
              AdaptiveImageGrid(
                imageUrls: sampleImages.skip(5).take(6).toList(),
                aspectRatio: 16 / 9,
                borderRadius: BorderRadius.circular(16),
              ),
            ),

            // Example 3: No hover effects
            _buildSection(
              'No Hover Effects',
              AdaptiveImageGrid(
                imageUrls: sampleImages.skip(10).take(4).toList(),
                showHoverEffect: false,
                enableLightbox: false,
                onImageTap: (url, index) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Tapped image $index')),
                  );
                },
              ),
            ),

            // Example 4: Simple grid convenience widget
            _buildSection(
              'Simple Grid (Convenience Widget)',
              SimpleAdaptiveImageGrid(
                imageUrls: sampleImages.skip(15).take(5).toList(),
                spacing: 8,
              ),
            ),

            // Example 5: Different spacing
            _buildSection(
              'Custom Spacing (24px)',
              AdaptiveImageGrid(
                imageUrls: sampleImages.take(8).toList(),
                spacing: 24,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, Widget child) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        child,
        const SizedBox(height: 32),
      ],
    );
  }
}

// Example of using the grid in a real scenario
class ProductGalleryExample extends StatelessWidget {
  const ProductGalleryExample({super.key});

  @override
  Widget build(BuildContext context) {
    final productImages = [
      'https://example.com/product1.jpg',
      'https://example.com/product2.jpg',
      'https://example.com/product3.jpg',
      'https://example.com/product4.jpg',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Gallery'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Product Images',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            AdaptiveImageGrid(
              imageUrls: productImages,
              aspectRatio: 1.0,
              spacing: 12,
              borderRadius: BorderRadius.circular(12),
              enableLightbox: true,
              showHoverEffect: true,
            ),
            const SizedBox(height: 24),
            // Other product details...
          ],
        ),
      ),
    );
  }
}