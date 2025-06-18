import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:inker_studio/ui/shared/widgets/responsive_image.dart';

class AdaptiveImageGrid extends StatelessWidget {
  final List<String> imageUrls;
  final void Function(String, int)? onImageTap;
  final double spacing;
  final BorderRadius? borderRadius;
  final double? aspectRatio;
  final bool showHoverEffect;
  final bool enableLightbox;
  final Widget Function(String url)? errorBuilder;
  final Widget Function(String url)? placeholderBuilder;

  const AdaptiveImageGrid({
    super.key,
    required this.imageUrls,
    this.onImageTap,
    this.spacing = 16.0,
    this.borderRadius,
    this.aspectRatio,
    this.showHoverEffect = true,
    this.enableLightbox = true,
    this.errorBuilder,
    this.placeholderBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final columns = _calculateColumns(constraints.maxWidth);
        final childAspectRatio = aspectRatio ?? (kIsWeb ? 1.5 : 1.0);

        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: columns,
            crossAxisSpacing: spacing,
            mainAxisSpacing: spacing,
            childAspectRatio: childAspectRatio,
          ),
          itemCount: imageUrls.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return _buildImageItem(context, imageUrls[index], index);
          },
        );
      },
    );
  }

  int _calculateColumns(double width) {
    if (width < 600) return 2;   // Mobile
    if (width < 900) return 3;   // Tablet
    if (width < 1200) return 4;  // Desktop
    return 5;                     // Large desktop
  }

  Widget _buildImageItem(BuildContext context, String imageUrl, int index) {
    final Widget imageWidget = ResponsiveGalleryImage(
      imageUrl: imageUrl,
      onTap: () {
        if (enableLightbox) {
          _openLightbox(context, index);
        } else if (onImageTap != null) {
          onImageTap!(imageUrl, index);
        }
      },
      borderRadius: borderRadius ?? BorderRadius.circular(12),
      aspectRatio: aspectRatio,
      showHoverEffect: showHoverEffect && kIsWeb,
    );

    if (kIsWeb && showHoverEffect) {
      return _ImageHoverWrapper(
        child: imageWidget,
        onTap: () {
          if (enableLightbox) {
            _openLightbox(context, index);
          } else if (onImageTap != null) {
            onImageTap!(imageUrl, index);
          }
        },
      );
    }

    return imageWidget;
  }

  void _openLightbox(BuildContext context, int initialIndex) {
    Navigator.of(context).push(
      PageRouteBuilder(
        opaque: false,
        barrierDismissible: true,
        barrierColor: Colors.black87,
        pageBuilder: (context, animation, secondaryAnimation) {
          return _ImageLightbox(
            imageUrls: imageUrls,
            initialIndex: initialIndex,
          );
        },
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
    );
  }
}

class _ImageHoverWrapper extends StatefulWidget {
  final Widget child;
  final VoidCallback onTap;

  const _ImageHoverWrapper({
    required this.child,
    required this.onTap,
  });

  @override
  State<_ImageHoverWrapper> createState() => _ImageHoverWrapperState();
}

class _ImageHoverWrapperState extends State<_ImageHoverWrapper> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: _isHovering
            ? (Matrix4.identity()..scale(1.05))
            : Matrix4.identity(),
        child: Stack(
          fit: StackFit.expand,
          children: [
            widget.child,
            if (_isHovering)
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Icon(
                    Icons.zoom_in,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// Basic lightbox implementation
class _ImageLightbox extends StatefulWidget {
  final List<String> imageUrls;
  final int initialIndex;

  const _ImageLightbox({
    required this.imageUrls,
    required this.initialIndex,
  });

  @override
  State<_ImageLightbox> createState() => _ImageLightboxState();
}

class _ImageLightboxState extends State<_ImageLightbox> {
  late PageController _pageController;
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    _pageController = PageController(initialPage: widget.initialIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          // Close on tap outside
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            behavior: HitTestBehavior.opaque,
            child: Container(color: Colors.transparent),
          ),
          // Image viewer
          Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: PageView.builder(
                controller: _pageController,
                itemCount: widget.imageUrls.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: InteractiveViewer(
                      minScale: 0.5,
                      maxScale: 4.0,
                      child: Center(
                        child: ResponsiveImage(
                          imageUrl: widget.imageUrls[index],
                          webFit: BoxFit.contain,
                          mobileFit: BoxFit.contain,
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          // Navigation controls
          if (kIsWeb) ...[
            // Previous button
            if (_currentIndex > 0)
              Positioned(
                left: 20,
                top: 0,
                bottom: 0,
                child: Center(
                  child: IconButton(
                    icon: const Icon(Icons.chevron_left, size: 48),
                    color: Colors.white,
                    onPressed: () {
                      _pageController.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                ),
              ),
            // Next button
            if (_currentIndex < widget.imageUrls.length - 1)
              Positioned(
                right: 20,
                top: 0,
                bottom: 0,
                child: Center(
                  child: IconButton(
                    icon: const Icon(Icons.chevron_right, size: 48),
                    color: Colors.white,
                    onPressed: () {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                ),
              ),
          ],
          // Close button
          Positioned(
            top: MediaQuery.of(context).padding.top + 20,
            right: 20,
            child: IconButton(
              icon: const Icon(Icons.close, size: 32),
              color: Colors.white,
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          // Image counter
          if (widget.imageUrls.length > 1)
            Positioned(
              bottom: MediaQuery.of(context).padding.bottom + 20,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '${_currentIndex + 1} / ${widget.imageUrls.length}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

// Convenience widget for simple grid
class SimpleAdaptiveImageGrid extends StatelessWidget {
  final List<String> imageUrls;
  final double spacing;

  const SimpleAdaptiveImageGrid({
    super.key,
    required this.imageUrls,
    this.spacing = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    return AdaptiveImageGrid(
      imageUrls: imageUrls,
      spacing: spacing,
      aspectRatio: 1.0,
      borderRadius: BorderRadius.circular(8),
    );
  }
}