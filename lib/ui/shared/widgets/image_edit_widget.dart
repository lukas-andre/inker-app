import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ImageEditWidget extends StatefulWidget {
  final String? initialValue;
  final String label;
  final void Function(XFile?) onSaved;

  const ImageEditWidget({
    super.key,
    this.initialValue,
    required this.label,
    required this.onSaved,
  });

  @override
  _ImageEditWidgetState createState() => _ImageEditWidgetState();
}

class _ImageEditWidgetState extends State<ImageEditWidget> {
  XFile? _imageFile;
  final ImagePicker _picker = ImagePicker();
  bool _isNewImageSelected = false;
  bool _hasChanges = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: _buildImageContent(),
            ),
          ),
        ),
        _buildBottomButtons(),
      ],
    );
  }

  Widget _buildImageContent() {
    if (_isNewImageSelected && _imageFile != null) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.file(
          File(_imageFile!.path),
          fit: BoxFit.contain,
        ),
      );
    } else if (widget.initialValue != null && widget.initialValue!.isNotEmpty) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          widget.initialValue!,
          fit: BoxFit.contain,
        ),
      );
    } else {
      return Container(
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.image_not_supported,
              size: 48,
              color: Colors.grey[400],
            ),
            const SizedBox(height: 16),
            Text(
              S.of(context).noImageSelected,
              style: TextStyleTheme.bodyText1.copyWith(color: Colors.grey[400]),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: _pickImage,
              icon: const Icon(Icons.add_a_photo),
              label: Text(S.of(context).chooseImage),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: secondaryColor,
              ),
            ),
          ],
        ),
      );
    }
  }

  Widget _buildBottomButtons() {
    return Container(
      color: primaryColor,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_isNewImageSelected)
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: _removeImage,
                icon: const Icon(Icons.delete_forever, color: Colors.white),
                label: Text(
                  S.of(context).removeImage,
                  style: TextStyleTheme.button.copyWith(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
          if (_isNewImageSelected) const SizedBox(height: 8.0),
          if (_isNewImageSelected || widget.initialValue != null)
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _pickImage,
                style: ElevatedButton.styleFrom(
                  backgroundColor: secondaryColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  S.of(context).changeImage,
                  style: TextStyleTheme.button.copyWith(color: Colors.white),
                ),
              ),
            ),
          if (_hasChanges) ...[
            const SizedBox(height: 8.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _saveChanges,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  S.of(context).saveChanges,
                  style: TextStyleTheme.button.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 1024,
      maxHeight: 1024,
    );
    if (pickedFile != null) {
      setState(() {
        _imageFile = pickedFile;
        _isNewImageSelected = true;
        _hasChanges = true;
      });
    }
  }

  void _removeImage() {
    setState(() {
      _imageFile = null;
      _isNewImageSelected = false;
      _hasChanges = true;
    });
  }

  void _saveChanges() {
    widget.onSaved(_imageFile);
  }
}
