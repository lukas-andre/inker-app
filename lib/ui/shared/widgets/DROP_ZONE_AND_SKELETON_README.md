# Drop Zone and Image Skeleton Widgets

This document covers two essential widgets for modern web and mobile image handling: `DropZoneWidget` and `ImageWithSkeleton`.

## DropZoneWidget

A comprehensive drag-and-drop file upload widget with visual feedback and progress indication.

### Features

- 🎯 **Drag & Drop** - Native web drag-and-drop support
- 📱 **Mobile Compatible** - Falls back to file picker on mobile
- 🎨 **Visual Feedback** - Dynamic border colors and hover states
- 📊 **Upload Progress** - Optional progress indicator
- 🔒 **File Validation** - Extension and size restrictions
- ✨ **Smooth Animations** - Hover and state transitions

### Basic Usage

```dart
import 'package:inker_studio/ui/shared/widgets/drop_zone_widget.dart';

// Simple drop zone
DropZoneWidget(
  onFilesDropped: (files) {
    // Handle dropped files
    print('Received ${files.length} files');
  },
)

// Image-specific drop zone
ImageDropZone(
  onImagesDropped: (images) {
    // Handle dropped images
  },
  multiple: true,
  maxSizeMB: 5,
)
```

### States

| State | Description | Visual Feedback |
|-------|-------------|-----------------|
| Idle | Default state | Dashed border, muted color |
| Hovering | File hovering over zone | Solid border, highlighted color |
| Uploading | Processing files | Progress bar, uploading text |
| Success | Upload complete | Green color, success icon |
| Error | Upload failed | Red color, error message |

### Customization

```dart
DropZoneWidget(
  onFilesDropped: (files) => handleFiles(files),
  height: 250,
  multiple: false,
  allowedExtensions: ['pdf', 'doc', 'docx'],
  maxFileSize: 20, // MB
  borderRadius: BorderRadius.circular(20),
  primaryColor: Colors.blue,
  hoverColor: Colors.blueAccent,
  idleText: 'Drop your documents here',
  hoverText: 'Release to upload',
  showProgress: true,
)
```

### Properties

| Property | Type | Default | Description |
|----------|------|---------|-------------|
| onFilesDropped | Function(List<XFile>) | required | Callback when files are dropped |
| multiple | bool | true | Allow multiple file selection |
| allowedExtensions | List<String>? | null | Restrict file types |
| maxFileSize | double? | null | Max file size in MB |
| height | double | 200 | Widget height |
| borderRadius | BorderRadius? | 12px | Corner radius |
| showProgress | bool | true | Show upload progress |
| onTap | VoidCallback? | null | Override default tap behavior |

## ImageWithSkeleton

A comprehensive image loading widget with shimmer skeleton effects and error handling.

### Features

- ✨ **Shimmer Loading** - Animated skeleton during load
- 🖼️ **Multiple Sources** - Network, asset, and file support
- ⚡ **Smooth Transitions** - Fade-in animation on load
- ❌ **Error Handling** - Customizable error states
- 📊 **Progress Indication** - Optional loading percentage
- 🎨 **Customizable** - Colors, durations, and styles

### Basic Usage

```dart
import 'package:inker_studio/ui/shared/widgets/image_with_skeleton.dart';

// Network image with skeleton
NetworkImageWithSkeleton(
  imageUrl: 'https://example.com/image.jpg',
  width: double.infinity,
  height: 200,
  borderRadius: BorderRadius.circular(12),
)

// Asset image with skeleton
AssetImageWithSkeleton(
  assetPath: 'assets/images/logo.png',
  width: 100,
  height: 100,
)
```

### Advanced Usage

```dart
ImageWithSkeleton(
  imageUrl: imageUrl,
  sourceType: ImageSourceType.network,
  width: 300,
  height: 200,
  fit: BoxFit.cover,
  borderRadius: BorderRadius.circular(16),
  fadeInDuration: Duration(milliseconds: 500),
  shimmerBaseColor: Colors.grey[300],
  shimmerHighlightColor: Colors.grey[100],
  errorWidget: CustomErrorWidget(),
  showShimmer: true,
)
```

### Standalone Shimmer Widget

```dart
// Create custom shimmer effects
ShimmerWidget(
  width: double.infinity,
  height: 100,
  borderRadius: BorderRadius.circular(8),
  baseColor: Colors.grey[300],
  highlightColor: Colors.grey[100],
  duration: Duration(seconds: 2),
)
```

### Properties

| Property | Type | Default | Description |
|----------|------|---------|-------------|
| imageUrl | String | required | Image URL or path |
| sourceType | ImageSourceType | network | Image source type |
| width | double? | null | Image width |
| height | double? | null | Image height |
| fit | BoxFit | cover | How to fit the image |
| borderRadius | BorderRadius? | null | Corner radius |
| fadeInDuration | Duration | 300ms | Fade animation duration |
| showShimmer | bool | true | Enable shimmer effect |
| errorWidget | Widget? | null | Custom error widget |

## Integration Examples

### Form with Image Upload

```dart
class ImageUploadForm extends StatefulWidget {
  @override
  State<ImageUploadForm> createState() => _ImageUploadFormState();
}

class _ImageUploadFormState extends State<ImageUploadForm> {
  final List<XFile> _images = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Upload zone
        ImageDropZone(
          onImagesDropped: (images) {
            setState(() {
              _images.addAll(images);
            });
          },
        ),
        
        // Display uploaded images
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: _images.length,
          itemBuilder: (context, index) {
            return NetworkImageWithSkeleton(
              imageUrl: _images[index].path,
              borderRadius: BorderRadius.circular(8),
            );
          },
        ),
      ],
    );
  }
}
```

### Gallery with Loading States

```dart
class ImageGallery extends StatelessWidget {
  final List<String> imageUrls;

  const ImageGallery({required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return ImageWithSkeleton(
          imageUrl: imageUrls[index],
          fit: BoxFit.cover,
          borderRadius: BorderRadius.circular(12),
          errorWidget: Container(
            color: Colors.grey[200],
            child: Icon(Icons.broken_image),
          ),
        );
      },
    );
  }
}
```

## Best Practices

1. **File Validation** - Always validate file types and sizes
2. **Error Handling** - Provide clear error messages and recovery options
3. **Loading States** - Use skeletons for better perceived performance
4. **Accessibility** - Add semantic labels for screen readers
5. **Performance** - Lazy load images in long lists
6. **User Feedback** - Show progress for long operations

## Migration Guide

### From Basic Image.network

```dart
// Before
Image.network(
  url,
  loadingBuilder: (context, child, progress) {
    if (progress == null) return child;
    return CircularProgressIndicator();
  },
)

// After
NetworkImageWithSkeleton(
  imageUrl: url,
  width: double.infinity,
  height: 200,
)
```

### From File Picker

```dart
// Before
final result = await FilePicker.platform.pickFiles();
if (result != null) {
  handleFiles(result.files);
}

// After
DropZoneWidget(
  onFilesDropped: (files) {
    handleFiles(files);
  },
  allowedExtensions: ['pdf', 'doc'],
)