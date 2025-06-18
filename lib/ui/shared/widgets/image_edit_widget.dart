import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/test_utils/register_keys.dart';
import 'package:inker_studio/test_utils/test_mode.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:path_provider/path_provider.dart';

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
  Uint8List? _imageBytes;
  final ImagePicker _picker = ImagePicker();
  bool _isNewImageSelected = false;
  bool _hasChanges = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      key: registerKeys.imageEdit.container,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
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
      return _buildImageContainer(
        key: registerKeys.imageEdit.imageContent,
        child: _imageBytes != null
            ? Image.memory(
                _imageBytes!,
                fit: BoxFit.cover,
              )
            : kIsWeb
                ? Image.network(
                    _imageFile!.path,
                    fit: BoxFit.cover,
                  )
                : Image.file(
                    File(_imageFile!.path),
                    fit: BoxFit.cover,
                  ),
      );
    } else if (widget.initialValue != null && widget.initialValue!.isNotEmpty) {
      return _buildImageContainer(
        key: registerKeys.imageEdit.imageContent,
        child: Image.network(
          widget.initialValue!,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                    Theme.of(context).colorScheme.secondary),
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                        (loadingProgress.expectedTotalBytes ?? 1)
                    : null,
              ),
            );
          },
        ),
      );
    } else {
      return _buildEmptyImageContainer();
    }
  }

  Widget _buildImageContainer({required Widget child, Key? key}) {
    return Container(
      key: key,
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: child,
      ),
    );
  }

  Widget _buildEmptyImageContainer() {
    return Container(
      key: registerKeys.imageEdit.emptyImageContainer,
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.image_outlined,
            size: 56,
            color: Theme.of(context).colorScheme.tertiary.withOpacity(0.8),
          ),
          const SizedBox(height: 20),
          Text(
            S.of(context).noImageSelected,
            style: TextStyleTheme.bodyText1.copyWith(
              color: Theme.of(context).colorScheme.tertiary.withOpacity(0.9),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          _buildSimpleButton(
            key: registerKeys.imageEdit.pickImageButton,
            onPressed: _pickImage,
            icon: Icons.add_photo_alternate_rounded,
            label: S.of(context).chooseImage,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ],
      ),
    );
  }

  Widget _buildSimpleButton({
    Key? key,
    required VoidCallback onPressed,
    required IconData icon,
    required String label,
    required Color color,
    Color? textColor,
  }) {
    return InkWell(
      key: key,
      onTap: onPressed,
      borderRadius: BorderRadius.circular(12),
      child: Ink(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: textColor ?? Colors.white,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                label,
                style: TextStyle(
                  color: textColor ?? Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomButtons() {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (_isNewImageSelected || widget.initialValue != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                widget.label,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          if (_hasChanges)
            ElevatedButton.icon(
              key: registerKeys.imageEdit.saveChangesButton,
              onPressed: _saveChanges,
              icon: const Icon(Icons.check_circle_outline),
              label: Text(S.of(context).saveChanges),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF50C878),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          const SizedBox(height: 12),
          if (_isNewImageSelected || widget.initialValue != null)
            OutlinedButton.icon(
              key: registerKeys.imageEdit.changeImageButton,
              onPressed: _pickImage,
              icon: const Icon(Icons.photo_library),
              label: Text(S.of(context).changeImage),
              style: OutlinedButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.secondary,
                side:
                    BorderSide(color: Theme.of(context).colorScheme.secondary),
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          if (_isNewImageSelected) ...[
            const SizedBox(height: 12),
            TextButton.icon(
              key: registerKeys.imageEdit.removeImageButton,
              onPressed: _removeImage,
              icon: const Icon(Icons.delete_outline),
              label: Text(S.of(context).removeImage),
              style: TextButton.styleFrom(
                foregroundColor: Colors.redAccent.shade200,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Future<void> _pickImage() async {
    // Si estamos en modo de prueba, usar una imagen predefinida
    if (isInTestMode) {
      try {
        // Copiar el asset al archivo temporal
        ByteData data = await rootBundle
            .load('assets/studio_${Random().nextInt(5) + 1}.png');
        final bytes = data.buffer.asUint8List();

        if (kIsWeb) {
          // En web, crear un XFile desde bytes
          final blob = Uint8List.fromList(bytes);
          setState(() {
            _imageFile = XFile.fromData(blob, name: 'test_studio.png');
            _imageBytes = blob;
            _isNewImageSelected = true;
            _hasChanges = true;
          });
        } else {
          // En móvil, crear archivo temporal
          final directory = await getTemporaryDirectory();
          final imagePath = '${directory.path}/test_studio.png';
          final File imageFile = File(imagePath);
          await imageFile.writeAsBytes(bytes);

          setState(() {
            _imageFile = XFile(imagePath);
            _imageBytes = bytes;
            _isNewImageSelected = true;
            _hasChanges = true;
          });
        }

        print('Studio image loaded in test mode');
        return;
      } catch (e) {
        print('Error loading test studio image: $e');
      }
    }

    // Flujo normal para modo no-test
    final pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 1024,
      maxHeight: 1024,
    );

    if (pickedFile != null) {
      // Leer bytes para compatibilidad web
      final bytes = await pickedFile.readAsBytes();
      
      setState(() {
        _imageFile = pickedFile;
        _imageBytes = bytes;
        _isNewImageSelected = true;
        _hasChanges = true;
      });
    }
  }

  void _removeImage() {
    setState(() {
      _imageFile = null;
      _imageBytes = null;
      _isNewImageSelected = false;
      _hasChanges = true;
    });
  }

  void _saveChanges() {
    widget.onSaved(_imageFile);
  }
}
