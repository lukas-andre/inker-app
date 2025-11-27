import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/ui/shared/widgets/drop_zone_widget.dart';

class DropZoneWidgetExample extends StatefulWidget {
  const DropZoneWidgetExample({super.key});

  @override
  State<DropZoneWidgetExample> createState() => _DropZoneWidgetExampleState();
}

class _DropZoneWidgetExampleState extends State<DropZoneWidgetExample> {
  final List<String> _uploadedFiles = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drop Zone Examples'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Example 1: Basic drop zone
            _buildSection(
              'Basic Drop Zone',
              DropZoneWidget(
                onFilesDropped: (files) {
                  setState(() {
                    _uploadedFiles.addAll(files.map((f) => f.name));
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Uploaded ${files.length} file(s)'),
                    ),
                  );
                },
              ),
            ),

            // Example 2: Image-specific drop zone
            _buildSection(
              'Image Drop Zone (Convenience Widget)',
              ImageDropZone(
                onImagesDropped: (images) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Uploaded ${images.length} image(s)'),
                    ),
                  );
                },
                multiple: true,
                maxSizeMB: 5,
              ),
            ),

            // Example 3: Single file drop zone
            _buildSection(
              'Single File Drop Zone',
              DropZoneWidget(
                onFilesDropped: (files) {
                  if (files.isNotEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Uploaded: ${files.first.name}'),
                      ),
                    );
                  }
                },
                multiple: false,
                height: 150,
                primaryColor: Colors.purple,
                hoverColor: Colors.deepPurple,
                idleText: 'Drop a single file here',
              ),
            ),

            // Example 4: Custom styled drop zone
            _buildSection(
              'Custom Styled Drop Zone',
              DropZoneWidget(
                onFilesDropped: (files) {
                  // Handle files
                },
                height: 250,
                borderRadius: BorderRadius.circular(24),
                primaryColor: Colors.teal,
                hoverColor: Colors.teal.shade700,
                uploadingColor: Colors.orange,
                showProgress: true,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.cloud_upload,
                      size: 64,
                      color: Colors.teal.withValues(alpha: 0.7),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Custom Drop Zone',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'With custom content',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),

            // Example 5: Drop zone with file restrictions
            _buildSection(
              'PDF Only Drop Zone',
              DropZoneWidget(
                onFilesDropped: (files) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('PDF uploaded successfully'),
                    ),
                  );
                },
                allowedExtensions: const ['pdf'],
                maxFileSize: 20, // 20MB
                idleText: 'Drop PDF files here (max 20MB)',
                height: 160,
              ),
            ),

            // Show uploaded files
            if (_uploadedFiles.isNotEmpty) ...[
              const SizedBox(height: 32),
              Text(
                'Uploaded Files:',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              ..._uploadedFiles.map((file) => Chip(
                    label: Text(file),
                    onDeleted: () {
                      setState(() {
                        _uploadedFiles.remove(file);
                      });
                    },
                  )),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, Widget child) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        child,
        const SizedBox(height: 24),
      ],
    );
  }
}

// Example of integrating with existing image picker logic
class ImageUploadForm extends StatefulWidget {
  const ImageUploadForm({super.key});

  @override
  State<ImageUploadForm> createState() => _ImageUploadFormState();
}

class _ImageUploadFormState extends State<ImageUploadForm> {
  final List<XFile> _selectedImages = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Drop zone for uploading
        ImageDropZone(
          onImagesDropped: (images) {
            setState(() {
              _selectedImages.addAll(images);
            });
          },
          multiple: true,
        ),
        
        const SizedBox(height: 16),
        
        // Display selected images
        if (_selectedImages.isNotEmpty) ...[
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _selectedImages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Stack(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: NetworkImage(_selectedImages[index].path),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 4,
                        right: 4,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedImages.removeAt(index);
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.close,
                              size: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ],
    );
  }
}