import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ImagePickerWidget extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${S.of(context).referenceImages}: (${images.length}/$maxImages)',
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
            ...images.map((image) => _buildImageTile(image)),
            if (images.length < maxImages) _buildAddButton(),
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
          child: Image.file(
            File(image.path),
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: -12,
          top: -12,
          child: MaterialButton(
            onPressed: () => onRemove(image),
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

  Widget _buildAddButton() {
    return InkWell(
      onTap: onAdd,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: secondaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: secondaryColor, width: 2),
        ),
        child: const Icon(
          Icons.add_photo_alternate,
          color: secondaryColor,
          size: 40,
        ),
      ),
    );
  }
}
