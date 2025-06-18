import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum ResponsiveImageType {
  network,
  asset,
  file,
}

class ResponsiveImage extends StatelessWidget {
  final String imageUrl;
  final ResponsiveImageType imageType;
  final double? width;
  final double? height;
  final double? aspectRatio;
  final BoxFit? mobileFit;
  final BoxFit? webFit;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  final Widget? placeholder;
  final Widget? errorWidget;
  final bool showLoadingProgress;
  final Duration fadeInDuration;
  final BoxDecoration? decoration;
  final AlignmentGeometry alignment;

  const ResponsiveImage({
    super.key,
    required this.imageUrl,
    this.imageType = ResponsiveImageType.network,
    this.width,
    this.height,
    this.aspectRatio,
    this.mobileFit,
    this.webFit,
    this.borderRadius,
    this.backgroundColor,
    this.placeholder,
    this.errorWidget,
    this.showLoadingProgress = true,
    this.fadeInDuration = const Duration(milliseconds: 300),
    this.decoration,
    this.alignment = Alignment.center,
  });

  BoxFit get _effectiveFit {
    if (kIsWeb) {
      return webFit ?? BoxFit.contain;
    }
    return mobileFit ?? BoxFit.cover;
  }

  @override
  Widget build(BuildContext context) {
    Widget imageWidget;

    if (aspectRatio != null) {
      imageWidget = AspectRatio(
        aspectRatio: aspectRatio!,
        child: _buildImage(context),
      );
    } else if (width != null || height != null) {
      imageWidget = SizedBox(
        width: width,
        height: height,
        child: _buildImage(context),
      );
    } else {
      imageWidget = _buildImage(context);
    }

    if (borderRadius != null || decoration != null) {
      return Container(
        width: width,
        height: height,
        decoration: decoration,
        child: ClipRRect(
          borderRadius: borderRadius ?? BorderRadius.zero,
          child: imageWidget,
        ),
      );
    }

    return imageWidget;
  }

  Widget _buildImage(BuildContext context) {
    switch (imageType) {
      case ResponsiveImageType.network:
        return _buildNetworkImage(context);
      case ResponsiveImageType.asset:
        return _buildAssetImage(context);
      case ResponsiveImageType.file:
        // For file images, we would need to handle platform-specific code
        // For now, falling back to network image
        return _buildNetworkImage(context);
    }
  }

  Widget _buildNetworkImage(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: _effectiveFit,
      alignment: alignment,
      errorBuilder: (context, error, stackTrace) {
        return _buildErrorWidget(context);
      },
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded) {
          return child;
        }
        return AnimatedSwitcher(
          duration: fadeInDuration,
          child: frame != null
              ? child
              : _buildLoadingWidget(context),
        );
      },
    );
  }

  Widget _buildAssetImage(BuildContext context) {
    return Image.asset(
      imageUrl,
      fit: _effectiveFit,
      alignment: alignment,
      errorBuilder: (context, error, stackTrace) {
        return _buildErrorWidget(context);
      },
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded) {
          return child;
        }
        return AnimatedSwitcher(
          duration: fadeInDuration,
          child: frame != null
              ? child
              : _buildLoadingWidget(context),
        );
      },
    );
  }

  Widget _buildLoadingWidget(BuildContext context) {
    if (placeholder != null) {
      return placeholder!;
    }

    return ResponsiveImageSkeleton(
      width: width,
      height: height,
      borderRadius: borderRadius,
      backgroundColor: backgroundColor,
      showProgress: showLoadingProgress,
    );
  }

  Widget _buildErrorWidget(BuildContext context) {
    if (errorWidget != null) {
      return errorWidget!;
    }

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.grey[300],
        borderRadius: borderRadius,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.broken_image_outlined,
            size: 48,
            color: Colors.grey[600],
          ),
          const SizedBox(height: 8),
          Text(
            'Failed to load image',
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class ResponsiveImageSkeleton extends StatefulWidget {
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  final bool showProgress;

  const ResponsiveImageSkeleton({
    super.key,
    this.width,
    this.height,
    this.borderRadius,
    this.backgroundColor,
    this.showProgress = true,
  });

  @override
  State<ResponsiveImageSkeleton> createState() => _ResponsiveImageSkeletonState();
}

class _ResponsiveImageSkeletonState extends State<ResponsiveImageSkeleton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    _animation = Tween<double>(
      begin: -1.0,
      end: 2.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final baseColor = widget.backgroundColor ?? Colors.grey[300]!;
    final highlightColor = Colors.grey[100]!;

    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: baseColor,
        borderRadius: widget.borderRadius,
      ),
      child: Stack(
        children: [
          if (widget.showProgress)
            Positioned.fill(
              child: AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: widget.borderRadius,
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          baseColor,
                          highlightColor,
                          baseColor,
                        ],
                        stops: [
                          _animation.value - 1,
                          _animation.value,
                          _animation.value + 1,
                        ].map((stop) => stop.clamp(0.0, 1.0)).toList(),
                      ),
                    ),
                  );
                },
              ),
            ),
          Center(
            child: Icon(
              Icons.image_outlined,
              size: 48,
              color: Colors.grey[400],
            ),
          ),
        ],
      ),
    );
  }
}

// Convenience widget for common use cases
class ResponsiveNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final double? aspectRatio;
  final BorderRadius? borderRadius;
  final bool useContainOnWeb;

  const ResponsiveNetworkImage({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.aspectRatio,
    this.borderRadius,
    this.useContainOnWeb = true,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveImage(
      imageUrl: imageUrl,
      imageType: ResponsiveImageType.network,
      width: width,
      height: height,
      aspectRatio: aspectRatio,
      borderRadius: borderRadius,
      mobileFit: BoxFit.cover,
      webFit: useContainOnWeb ? BoxFit.contain : BoxFit.cover,
    );
  }
}

// Widget for gallery/grid images
class ResponsiveGalleryImage extends StatelessWidget {
  final String imageUrl;
  final VoidCallback? onTap;
  final BorderRadius? borderRadius;
  final double? aspectRatio;
  final bool showHoverEffect;

  const ResponsiveGalleryImage({
    super.key,
    required this.imageUrl,
    this.onTap,
    this.borderRadius,
    this.aspectRatio = 1.0,
    this.showHoverEffect = true,
  });

  @override
  Widget build(BuildContext context) {
    Widget image = ResponsiveImage(
      imageUrl: imageUrl,
      aspectRatio: aspectRatio,
      borderRadius: borderRadius ?? BorderRadius.circular(8),
      mobileFit: BoxFit.cover,
      webFit: BoxFit.contain,
    );

    if (onTap != null) {
      image = InkWell(
        onTap: onTap,
        borderRadius: borderRadius ?? BorderRadius.circular(8),
        child: Stack(
          children: [
            image,
            if (showHoverEffect && kIsWeb)
              Positioned.fill(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: onTap,
                    hoverColor: Colors.black.withValues(alpha: 0.1),
                    borderRadius: borderRadius ?? BorderRadius.circular(8),
                  ),
                ),
              ),
          ],
        ),
      );
    }

    return image;
  }
}