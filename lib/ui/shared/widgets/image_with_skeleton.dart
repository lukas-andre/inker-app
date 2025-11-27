import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

enum ImageSourceType {
  network,
  asset,
  file,
}

class ImageWithSkeleton extends StatefulWidget {
  final String imageUrl;
  final ImageSourceType sourceType;
  final double? width;
  final double? height;
  final BoxFit fit;
  final BorderRadius? borderRadius;
  final Duration fadeInDuration;
  final Color? shimmerBaseColor;
  final Color? shimmerHighlightColor;
  final Widget? errorWidget;
  final bool showShimmer;
  final AlignmentGeometry alignment;
  final Widget Function(BuildContext, Widget, ImageChunkEvent?)? loadingBuilder;
  final Widget Function(BuildContext, Object, StackTrace?)? errorBuilder;

  const ImageWithSkeleton({
    super.key,
    required this.imageUrl,
    this.sourceType = ImageSourceType.network,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius,
    this.fadeInDuration = const Duration(milliseconds: 300),
    this.shimmerBaseColor,
    this.shimmerHighlightColor,
    this.errorWidget,
    this.showShimmer = true,
    this.alignment = Alignment.center,
    this.loadingBuilder,
    this.errorBuilder,
  });

  @override
  State<ImageWithSkeleton> createState() => _ImageWithSkeletonState();
}

class _ImageWithSkeletonState extends State<ImageWithSkeleton>
    with SingleTickerProviderStateMixin {
  late AnimationController _shimmerController;
  late Animation<double> _shimmerAnimation;

  @override
  void initState() {
    super.initState();
    _shimmerController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    _shimmerAnimation = Tween<double>(
      begin: -2.0,
      end: 2.0,
    ).animate(CurvedAnimation(
      parent: _shimmerController,
      curve: Curves.easeInOut,
    ));
    
    if (widget.showShimmer) {
      _shimmerController.repeat();
    }
  }

  @override
  void dispose() {
    _shimmerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget content;
    
    switch (widget.sourceType) {
      case ImageSourceType.network:
        content = _buildNetworkImage();
        break;
      case ImageSourceType.asset:
        content = _buildAssetImage();
        break;
      case ImageSourceType.file:
        content = _buildFileImage();
        break;
    }

    if (widget.borderRadius != null) {
      content = ClipRRect(
        borderRadius: widget.borderRadius!,
        child: content,
      );
    }

    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: content,
    );
  }

  Widget _buildNetworkImage() {
    return CachedNetworkImage(
      imageUrl: widget.imageUrl,
      width: widget.width,
      height: widget.height,
      fit: widget.fit,
      alignment: widget.alignment as Alignment,
      fadeInDuration: widget.fadeInDuration,
      placeholder: (context, url) => _buildSkeleton(),
      errorWidget: (context, url, error) => widget.errorBuilder?.call(context, error, null) ?? _buildDefaultErrorWidget(),
    );
  }

  Widget _buildAssetImage() {
    return Image.asset(
      widget.imageUrl,
      width: widget.width,
      height: widget.height,
      fit: widget.fit,
      alignment: widget.alignment,
      errorBuilder: widget.errorBuilder ?? _defaultErrorBuilder,
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded) {
          return child;
        }
        return AnimatedSwitcher(
          duration: widget.fadeInDuration,
          child: frame != null ? child : _buildSkeleton(),
        );
      },
    );
  }

  Widget _buildFileImage() {
    if (kIsWeb) {
      // On web, File doesn't work, so we use network image
      return _buildNetworkImage();
    }
    
    return Image.file(
      File(widget.imageUrl),
      width: widget.width,
      height: widget.height,
      fit: widget.fit,
      alignment: widget.alignment,
      errorBuilder: widget.errorBuilder ?? _defaultErrorBuilder,
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded) {
          return child;
        }
        return AnimatedSwitcher(
          duration: widget.fadeInDuration,
          child: frame != null ? child : _buildSkeleton(),
        );
      },
    );
  }


  Widget _defaultErrorBuilder(
    BuildContext context,
    Object error,
    StackTrace? stackTrace,
  ) {
    
    return widget.errorWidget ?? _buildDefaultErrorWidget();
  }

  Widget _buildSkeleton() {
    if (!widget.showShimmer) {
      return Container(
        color: widget.shimmerBaseColor ?? Theme.of(context).colorScheme.onPrimary.withValues(alpha: 0.1),
        child: Center(
          child: CircularProgressIndicator(
            color: Theme.of(context).colorScheme.onPrimary.withValues(alpha: 0.5),
          ),
        ),
      );
    }

    return AnimatedBuilder(
      animation: _shimmerAnimation,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                widget.shimmerBaseColor ?? Theme.of(context).colorScheme.onPrimary.withValues(alpha: 0.05),
                widget.shimmerHighlightColor ?? Theme.of(context).colorScheme.onPrimary.withValues(alpha: 0.15),
                widget.shimmerBaseColor ?? Theme.of(context).colorScheme.onPrimary.withValues(alpha: 0.05),
              ],
              stops: const [
                0.0,
                0.5,
                1.0,
              ],
              transform: GradientRotation(_shimmerAnimation.value),
            ),
          ),
        );
      },
    );
  }

  Widget _buildDefaultErrorWidget() {
    return Container(
      color: Theme.of(context).colorScheme.onPrimary.withValues(alpha: 0.1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.broken_image_outlined,
            size: 48,
            color: Theme.of(context).colorScheme.onPrimary.withValues(alpha: 0.6),
          ),
          const SizedBox(height: 8),
          Text(
            'Failed to load image',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary.withValues(alpha: 0.6),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

// Shimmer effect widget that can be used independently
class ShimmerWidget extends StatefulWidget {
  final double width;
  final double height;
  final BorderRadius? borderRadius;
  final Color? baseColor;
  final Color? highlightColor;
  final Duration duration;
  final Widget? child;

  const ShimmerWidget({
    super.key,
    required this.width,
    required this.height,
    this.borderRadius,
    this.baseColor,
    this.highlightColor,
    this.duration = const Duration(milliseconds: 1500),
    this.child,
  });

  @override
  State<ShimmerWidget> createState() => _ShimmerWidgetState();
}

class _ShimmerWidgetState extends State<ShimmerWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );
    _animation = Tween<double>(
      begin: -2.0,
      end: 2.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final baseColor = widget.baseColor ?? Colors.grey[300]!;
    final highlightColor = widget.highlightColor ?? Colors.grey[100]!;

    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Container(
          width: widget.width,
          height: widget.height,
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
              stops: const [0.0, 0.5, 1.0],
              transform: GradientRotation(_animation.value),
            ),
          ),
          child: widget.child,
        );
      },
    );
  }
}

// Convenience widgets
class NetworkImageWithSkeleton extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;
  final BorderRadius? borderRadius;

  const NetworkImageWithSkeleton({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ImageWithSkeleton(
      imageUrl: imageUrl,
      sourceType: ImageSourceType.network,
      width: width,
      height: height,
      fit: fit,
      borderRadius: borderRadius,
    );
  }
}

class AssetImageWithSkeleton extends StatelessWidget {
  final String assetPath;
  final double? width;
  final double? height;
  final BoxFit fit;
  final BorderRadius? borderRadius;

  const AssetImageWithSkeleton({
    super.key,
    required this.assetPath,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ImageWithSkeleton(
      imageUrl: assetPath,
      sourceType: ImageSourceType.asset,
      width: width,
      height: height,
      fit: fit,
      borderRadius: borderRadius,
    );
  }
}