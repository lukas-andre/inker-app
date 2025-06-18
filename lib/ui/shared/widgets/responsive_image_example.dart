import 'package:flutter/material.dart';
import 'package:inker_studio/ui/shared/widgets/responsive_image.dart';

// Example usage of ResponsiveImage component
class ResponsiveImageExample extends StatelessWidget {
  const ResponsiveImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Image Examples'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Example 1: Basic usage with aspect ratio
            _buildSection(
              'Basic with Aspect Ratio',
              ResponsiveImage(
                imageUrl: 'https://example.com/image.jpg',
                aspectRatio: 16 / 9,
                borderRadius: BorderRadius.circular(12),
              ),
            ),

            // Example 2: Fixed dimensions
            _buildSection(
              'Fixed Dimensions',
              ResponsiveImage(
                imageUrl: 'https://example.com/image.jpg',
                width: 200,
                height: 200,
                borderRadius: BorderRadius.circular(100),
              ),
            ),

            // Example 3: Custom error widget
            _buildSection(
              'Custom Error Widget',
              ResponsiveImage(
                imageUrl: 'https://invalid-url.com/image.jpg',
                aspectRatio: 1,
                errorWidget: Container(
                  color: Colors.red.withValues(alpha: 0.1),
                  child: const Center(
                    child: Text('Custom Error'),
                  ),
                ),
              ),
            ),

            // Example 4: Gallery grid
            _buildSection(
              'Gallery Grid',
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return ResponsiveGalleryImage(
                    imageUrl: 'https://example.com/image$index.jpg',
                    onTap: () {
                      // Handle tap
                    },
                  );
                },
              ),
            ),

            // Example 5: Convenience widget
            _buildSection(
              'Convenience Widget',
              const ResponsiveNetworkImage(
                imageUrl: 'https://example.com/image.jpg',
                aspectRatio: 4 / 3,
                borderRadius: BorderRadius.all(Radius.circular(16)),
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
        const SizedBox(height: 8),
        child,
        const SizedBox(height: 24),
      ],
    );
  }
}