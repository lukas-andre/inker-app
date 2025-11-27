# ResponsiveImage Component

A comprehensive Flutter widget for displaying images responsively across mobile and web platforms.

## Features

- 🎯 **Automatic aspect ratio preservation**
- 📱 **Platform-specific BoxFit modes** (cover for mobile, contain for web)
- 🌐 **Support for multiple image sources** (network, asset, file)
- ⚡ **Skeleton loading with shimmer effect**
- ❌ **Customizable error handling**
- 🎨 **Built-in convenience widgets**

## Basic Usage

```dart
import 'package:inker_studio/ui/shared/widgets/responsive_image.dart';

// Simple usage with aspect ratio
ResponsiveImage(
  imageUrl: 'https://example.com/image.jpg',
  aspectRatio: 16 / 9,
  borderRadius: BorderRadius.circular(12),
)

// Fixed dimensions
ResponsiveImage(
  imageUrl: 'https://example.com/image.jpg',
  width: 200,
  height: 200,
)

// Custom BoxFit modes
ResponsiveImage(
  imageUrl: 'https://example.com/image.jpg',
  mobileFit: BoxFit.cover,    // Default
  webFit: BoxFit.contain,      // Default
)
```

## Convenience Widgets

### ResponsiveNetworkImage
Quick network image with sensible defaults:

```dart
ResponsiveNetworkImage(
  imageUrl: 'https://example.com/image.jpg',
  aspectRatio: 4 / 3,
  borderRadius: BorderRadius.circular(16),
  useContainOnWeb: true, // Default
)
```

### ResponsiveGalleryImage
Perfect for image grids and galleries:

```dart
ResponsiveGalleryImage(
  imageUrl: 'https://example.com/image.jpg',
  onTap: () => _openFullscreen(),
  aspectRatio: 1.0, // Square by default
  showHoverEffect: true, // Web hover effect
)
```

## Custom Loading & Error States

```dart
ResponsiveImage(
  imageUrl: 'https://example.com/image.jpg',
  placeholder: MyCustomLoader(),
  errorWidget: Container(
    color: Colors.red.withOpacity(0.1),
    child: const Center(
      child: Text('Failed to load'),
    ),
  ),
)
```

## Migration Guide

Replace existing image widgets:

```dart
// Before
Image.network(
  url,
  fit: BoxFit.cover,
  width: 200,
  height: 200,
)

// After
ResponsiveImage(
  imageUrl: url,
  width: 200,
  height: 200,
  mobileFit: BoxFit.cover,
  webFit: BoxFit.contain,
)
```

## Properties

| Property | Type | Default | Description |
|----------|------|---------|-------------|
| imageUrl | String | required | The image URL or path |
| imageType | ResponsiveImageType | network | Type of image source |
| width | double? | null | Fixed width |
| height | double? | null | Fixed height |
| aspectRatio | double? | null | Aspect ratio (width/height) |
| mobileFit | BoxFit? | cover | BoxFit for mobile |
| webFit | BoxFit? | contain | BoxFit for web |
| borderRadius | BorderRadius? | null | Corner radius |
| backgroundColor | Color? | grey[300] | Background color |
| placeholder | Widget? | skeleton | Loading widget |
| errorWidget | Widget? | default | Error widget |
| showLoadingProgress | bool | true | Show shimmer effect |
| fadeInDuration | Duration | 300ms | Fade animation duration |

## Best Practices

1. **Use aspect ratio when possible** - More responsive than fixed dimensions
2. **Leverage convenience widgets** - They have sensible defaults
3. **Consider mobile vs web** - Different BoxFit modes optimize for each platform
4. **Add error handling** - Custom error widgets improve UX
5. **Use with responsive layouts** - Combine with ResponsiveBuilder for best results