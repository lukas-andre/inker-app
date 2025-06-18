import 'package:flutter/material.dart';
import 'package:inker_studio/ui/shared/widgets/image_with_skeleton.dart';

class ImageWithSkeletonExample extends StatelessWidget {
  const ImageWithSkeletonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image With Skeleton Examples'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Example 1: Basic network image with skeleton
            _buildSection(
              'Basic Network Image',
              NetworkImageWithSkeleton(
                imageUrl: 'https://picsum.photos/400/300',
                width: double.infinity,
                height: 200,
                borderRadius: BorderRadius.circular(12),
              ),
            ),

            // Example 2: Grid of images with skeleton
            _buildSection(
              'Image Grid with Skeletons',
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: 9,
                itemBuilder: (context, index) {
                  return ImageWithSkeleton(
                    imageUrl: 'https://picsum.photos/seed/$index/200/200',
                    fit: BoxFit.cover,
                    borderRadius: BorderRadius.circular(8),
                  );
                },
              ),
            ),

            // Example 3: Custom shimmer colors
            _buildSection(
              'Custom Shimmer Colors',
              ImageWithSkeleton(
                imageUrl: 'https://picsum.photos/400/250',
                width: double.infinity,
                height: 200,
                shimmerBaseColor: Colors.purple.shade100,
                shimmerHighlightColor: Colors.purple.shade50,
                borderRadius: BorderRadius.circular(16),
              ),
            ),

            // Example 4: Asset image with skeleton
            _buildSection(
              'Asset Image',
              AssetImageWithSkeleton(
                assetPath: 'assets/images/placeholder.png',
                width: double.infinity,
                height: 180,
                borderRadius: BorderRadius.circular(12),
              ),
            ),

            // Example 5: Custom error widget
            _buildSection(
              'Custom Error Widget',
              ImageWithSkeleton(
                imageUrl: 'https://invalid-url.com/image.jpg',
                width: double.infinity,
                height: 200,
                borderRadius: BorderRadius.circular(12),
                errorWidget: Container(
                  decoration: BoxDecoration(
                    color: Colors.red.shade50,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.error_outline,
                        size: 48,
                        color: Colors.red.shade300,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Custom error message',
                        style: TextStyle(
                          color: Colors.red.shade700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Example 6: Standalone shimmer widget
            _buildSection(
              'Standalone Shimmer Widget',
              Column(
                children: [
                  ShimmerWidget(
                    width: double.infinity,
                    height: 100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const ShimmerWidget(
                        width: 60,
                        height: 60,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          children: [
                            ShimmerWidget(
                              width: double.infinity,
                              height: 16,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            const SizedBox(height: 8),
                            ShimmerWidget(
                              width: double.infinity,
                              height: 16,
                              borderRadius: BorderRadius.circular(4),
                              baseColor: Colors.grey.shade200,
                              highlightColor: Colors.grey.shade100,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Example 7: Different BoxFit modes
            _buildSection(
              'Different BoxFit Modes',
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Text('Cover'),
                        const SizedBox(height: 8),
                        ImageWithSkeleton(
                          imageUrl: 'https://picsum.photos/300/400',
                          height: 100,
                          fit: BoxFit.cover,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      children: [
                        const Text('Contain'),
                        const SizedBox(height: 8),
                        ImageWithSkeleton(
                          imageUrl: 'https://picsum.photos/300/400',
                          height: 100,
                          fit: BoxFit.contain,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      children: [
                        const Text('Fill'),
                        const SizedBox(height: 8),
                        ImageWithSkeleton(
                          imageUrl: 'https://picsum.photos/300/400',
                          height: 100,
                          fit: BoxFit.fill,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ],
                    ),
                  ),
                ],
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
        const SizedBox(height: 24),
      ],
    );
  }
}

// Example of using in a real scenario
class ProductListWithSkeletons extends StatelessWidget {
  final List<String> productImages = List.generate(
    10,
    (index) => 'https://picsum.photos/seed/product$index/400/400',
  );

  ProductListWithSkeletons({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productImages.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.all(8),
          child: Row(
            children: [
              ImageWithSkeleton(
                imageUrl: productImages[index],
                width: 100,
                height: 100,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Product ${index + 1}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Product description goes here',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '\$${(index + 1) * 10}.99',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
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