import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show Uint8List;
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class ImagePickerWidget extends StatefulWidget {
  final List<XFile> images;
  final Function(XFile) onRemove;
  final VoidCallback onAdd;
  final int maxImages;

  const ImagePickerWidget({
    super.key,
    required this.images,
    required this.onRemove,
    required this.onAdd,
    required this.maxImages,
  });

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  final Map<String, Uint8List> _imageCache = {};

  @override
  void initState() {
    super.initState();
    _loadImageBytes();
  }

  @override
  void didUpdateWidget(covariant ImagePickerWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.images != widget.images) {
      _loadImageBytes();
    }
  }

  Future<void> _loadImageBytes() async {
    for (final image in widget.images) {
      if (!_imageCache.containsKey(image.path)) {
        try {
          final bytes = await image.readAsBytes();
          if (mounted) {
            setState(() {
              _imageCache[image.path] = bytes;
            });
          }
        } catch (e) {
          debugPrint('Error loading image bytes: $e');
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${S.of(context).referenceImages}: (${widget.images.length}/${widget.maxImages})',
          style: TextStyleTheme.copyWith(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 12.0,
          runSpacing: 12.0,
          children: [
            ...widget.images.map((image) => _buildImageTile(image)),
            if (widget.images.length < widget.maxImages) _buildAddButton(context),
          ],
        ),
      ],
    );
  }

  Widget _buildImageTile(XFile image) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: _buildImageWidget(image),
        ),
        Positioned(
          right: -12,
          top: -12,
          child: MaterialButton(
            onPressed: () {
              widget.onRemove(image);
              _imageCache.remove(image.path);
            },
            color: Colors.red,
            textColor: Colors.white,
            padding: const EdgeInsets.all(5),
            shape: const CircleBorder(),
            minWidth: 0,
            child: const Icon(Icons.close, size: 18),
          ),
        ),
      ],
    );
  }

  Widget _buildAddButton(BuildContext context) {
    return InkWell(
      onTap: widget.onAdd,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: Theme.of(context).colorScheme.secondary, width: 2),
        ),
        child: Icon(
          Icons.add_photo_alternate,
          color: Theme.of(context).colorScheme.secondary,
          size: 40,
        ),
      ),
    );
  }

  Widget _buildImageWidget(XFile image) {
    final bytes = _imageCache[image.path];
    
    if (bytes != null) {
      return Image.memory(
        bytes,
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      );
    } else if (kIsWeb) {
      return Image.network(
        image.path,
        width: 100,
        height: 100,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            width: 100,
            height: 100,
            color: Colors.grey[300],
            child: Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes!
                    : null,
              ),
            ),
          );
        },
      );
    } else {
      return Image.file(
        File(image.path),
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      );
    }
  }
}
