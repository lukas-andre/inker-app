# AdaptiveImageGrid Component

A responsive image grid widget that automatically adjusts column count based on screen width, with built-in lightbox functionality and web-specific hover effects.

## Features

- 📱 **Responsive columns** - Automatically adjusts from 2-5 columns based on screen width
- 🖼️ **Built-in lightbox** - Click images to view in fullscreen with navigation
- 🎯 **Web hover effects** - Zoom and overlay effects on desktop
- ⚡ **Performance optimized** - Uses ResponsiveImage for efficient loading
- 🎨 **Customizable** - Aspect ratios, spacing, borders, and more

## Basic Usage

```dart
import 'package:inker_studio/ui/shared/widgets/adaptive_image_grid.dart';

// Simple usage
AdaptiveImageGrid(
  imageUrls: [
    'https://example.com/image1.jpg',
    'https://example.com/image2.jpg',
    'https://example.com/image3.jpg',
  ],
)

// With custom options
AdaptiveImageGrid(
  imageUrls: imageUrls,
  spacing: 24,
  aspectRatio: 16 / 9,
  borderRadius: BorderRadius.circular(16),
  showHoverEffect: true,
  enableLightbox: true,
)
```

## Column Calculation

The grid automatically adjusts columns based on screen width:

| Screen Width | Columns | Device Type |
|-------------|---------|-------------|
| < 600px | 2 | Mobile |
| 600-899px | 3 | Tablet |
| 900-1199px | 4 | Desktop |
| ≥ 1200px | 5 | Large Desktop |

## Lightbox Features

When `enableLightbox` is true (default):
- Click any image to open in fullscreen
- Swipe or use arrow keys to navigate (web)
- Pinch to zoom on mobile, scroll wheel on web
- ESC key or close button to exit
- Image counter shows current position

## Custom Tap Handling

Disable lightbox and handle taps yourself:

```dart
AdaptiveImageGrid(
  imageUrls: imageUrls,
  enableLightbox: false,
  onImageTap: (url, index) {
    // Custom tap handling
    print('Tapped image at index $index');
  },
)
```

## Web-Specific Features

On web platforms:
- Hover effects with zoom animation
- Magnifying glass icon on hover
- Keyboard navigation in lightbox
- Mouse wheel zoom support

## Convenience Widget

For simple square image grids:

```dart
SimpleAdaptiveImageGrid(
  imageUrls: imageUrls,
  spacing: 8,
)
```

## Properties

| Property | Type | Default | Description |
|----------|------|---------|-------------|
| imageUrls | List<String> | required | List of image URLs to display |
| onImageTap | Function(String, int)? | null | Custom tap handler (when lightbox disabled) |
| spacing | double | 16.0 | Space between grid items |
| borderRadius | BorderRadius? | null | Corner radius for images |
| aspectRatio | double? | 1.5 (web), 1.0 (mobile) | Image aspect ratio |
| showHoverEffect | bool | true | Enable hover effects on web |
| enableLightbox | bool | true | Enable fullscreen lightbox |
| errorBuilder | Function? | null | Custom error widget builder |
| placeholderBuilder | Function? | null | Custom loading widget builder |

## Examples

### Product Gallery
```dart
AdaptiveImageGrid(
  imageUrls: productImages,
  aspectRatio: 1.0,
  spacing: 12,
  borderRadius: BorderRadius.circular(12),
)
```

### Portfolio Grid
```dart
AdaptiveImageGrid(
  imageUrls: portfolioImages,
  aspectRatio: 16 / 9,
  spacing: 20,
  showHoverEffect: true,
)
```

### Reference Images
```dart
AdaptiveImageGrid(
  imageUrls: referenceImages,
  enableLightbox: false,
  onImageTap: (url, index) => selectReference(index),
)
```

## Migration Guide

Replace existing grid implementations:

```dart
// Before
GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    crossAxisSpacing: 16,
    mainAxisSpacing: 16,
  ),
  itemBuilder: (context, index) {
    return Image.network(images[index]);
  },
)

// After
AdaptiveImageGrid(
  imageUrls: images,
  spacing: 16,
)
```

## Best Practices

1. **Use appropriate aspect ratios** - 1:1 for thumbnails, 16:9 for landscapes
2. **Enable lightbox for galleries** - Better UX for viewing details
3. **Optimize image sizes** - Use thumbnails in grid, full size in lightbox
4. **Consider mobile experience** - Test touch gestures and loading states
5. **Accessibility** - Add semantic labels to images when possible