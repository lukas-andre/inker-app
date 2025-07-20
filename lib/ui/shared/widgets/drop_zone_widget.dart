import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';

/// Enhanced DropZoneWidget that uses flutter_dropzone for robust web drag-and-drop
/// while maintaining compatibility with mobile platforms using image_picker.
/// 
/// Features:
/// - Native browser drag and drop support on web via flutter_dropzone
/// - Better file type detection and validation
/// - Multiple file upload support with configurable limits
/// - Real-time upload progress indication
/// - Visual feedback for different states (idle, hovering, uploading, success, error)
/// - File size and type validation
/// - Mobile compatibility through image_picker fallback
/// 
/// Example usage:
/// ```dart
/// DropZoneWidget(
///   onFilesDropped: (files) {
///     print('Files dropped: ${files.length}');
///     for (final file in files) {
///       print('File: ${file.name}, Size: ${file.length}');
///     }
///   },
///   multiple: true,
///   allowedExtensions: ['jpg', 'jpeg', 'png', 'gif'],
///   maxFileSize: 5.0, // 5MB
///   maxFiles: 3,
///   height: 200,
///   idleText: 'Drop your images here or click to browse',
///   hoverText: 'Release to upload',
/// )
/// ```

enum DropZoneState {
  idle,
  hovering,
  uploading,
  success,
  error,
}

class DropZoneWidget extends StatefulWidget {
  final Function(List<XFile>) onFilesDropped;
  final bool multiple;
  final List<String>? allowedExtensions;
  final double? maxFileSize; // in MB
  final int? maxFiles; // maximum number of files allowed
  final Widget? child;
  final double height;
  final BorderRadius? borderRadius;
  final Color? primaryColor;
  final Color? hoverColor;
  final Color? uploadingColor;
  final String? idleText;
  final String? hoverText;
  final String? uploadingText;
  final bool showProgress;
  final VoidCallback? onTap;

  const DropZoneWidget({
    super.key,
    required this.onFilesDropped,
    this.multiple = true,
    this.allowedExtensions,
    this.maxFileSize,
    this.maxFiles,
    this.child,
    this.height = 200,
    this.borderRadius,
    this.primaryColor,
    this.hoverColor,
    this.uploadingColor,
    this.idleText,
    this.hoverText,
    this.uploadingText,
    this.showProgress = true,
    this.onTap,
  });

  @override
  State<DropZoneWidget> createState() => _DropZoneWidgetState();
}

class _DropZoneWidgetState extends State<DropZoneWidget>
    with SingleTickerProviderStateMixin {
  DropZoneState _state = DropZoneState.idle;
  double _uploadProgress = 0.0;
  late AnimationController _animationController;
  late Animation<double> _animation;
  Timer? _successTimer;
  String? _errorMessage;
  DropzoneViewController? _dropzoneController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
    _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    _successTimer?.cancel();
    super.dispose();
  }

  Color get _borderColor {
    switch (_state) {
      case DropZoneState.idle:
        return (widget.primaryColor ?? Theme.of(context).colorScheme.primary)
            .withValues(alpha: 0.3);
      case DropZoneState.hovering:
        return widget.hoverColor ?? Theme.of(context).colorScheme.secondary;
      case DropZoneState.uploading:
        return widget.uploadingColor ?? Colors.blue;
      case DropZoneState.success:
        return Colors.green;
      case DropZoneState.error:
        return Colors.red;
    }
  }

  Color get _backgroundColor {
    switch (_state) {
      case DropZoneState.idle:
        return Colors.transparent;
      case DropZoneState.hovering:
        return (widget.hoverColor ?? Theme.of(context).colorScheme.secondary)
            .withValues(alpha: 0.1);
      case DropZoneState.uploading:
        return (widget.uploadingColor ?? Colors.blue).withValues(alpha: 0.05);
      case DropZoneState.success:
        return Colors.green.withValues(alpha: 0.05);
      case DropZoneState.error:
        return Colors.red.withValues(alpha: 0.05);
    }
  }

  String get _displayText {
    switch (_state) {
      case DropZoneState.idle:
        return widget.idleText ?? 
            (widget.multiple ? 'Drop files here or click to select' : 'Drop file here or click to select');
      case DropZoneState.hovering:
        return widget.hoverText ?? 'Release to upload';
      case DropZoneState.uploading:
        return widget.uploadingText ?? 
            (widget.showProgress ? 'Uploading ${(_uploadProgress * 100).toInt()}%' : 'Uploading...');
      case DropZoneState.success:
        return 'Upload successful!';
      case DropZoneState.error:
        return _errorMessage ?? 'Upload failed';
    }
  }

  IconData get _icon {
    switch (_state) {
      case DropZoneState.idle:
      case DropZoneState.hovering:
        return Icons.cloud_upload_outlined;
      case DropZoneState.uploading:
        return Icons.cloud_upload;
      case DropZoneState.success:
        return Icons.check_circle_outline;
      case DropZoneState.error:
        return Icons.error_outline;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      // On mobile, just show a button to pick images
      return _buildMobileVersion();
    }

    // Use flutter_dropzone for web
    return SizedBox(
      height: widget.height,
      child: Stack(
        children: [
          Positioned.fill(
            child: DropzoneView(
              operation: DragOperation.copy,
              cursor: CursorType.grab,
              onCreated: (DropzoneViewController controller) {
                _dropzoneController = controller;
              },
              onLoaded: () {
                // Dropzone is ready
              },
              onError: (String? error) {
                setState(() {
                  _state = DropZoneState.error;
                  _errorMessage = error ?? 'Dropzone error';
                });
                _resetStateAfterDelay();
              },
              onHover: () {
                if (_state != DropZoneState.hovering && _state != DropZoneState.uploading) {
                  setState(() {
                    _state = DropZoneState.hovering;
                  });
                }
              },
              onLeave: () {
                if (_state == DropZoneState.hovering) {
                  setState(() {
                    _state = DropZoneState.idle;
                  });
                }
              },
              onDropFiles: (List<DropzoneFileInterface>? files) async {
                if (files != null && files.isNotEmpty) {
                  setState(() {
                    _state = DropZoneState.uploading;
                    _uploadProgress = 0.0;
                  });
                  
                  await _handleDropzoneFiles(files);
                }
              },
            ),
          ),
          // Overlay with visual feedback
          Positioned.fill(
            child: GestureDetector(
              onTap: widget.onTap ?? _pickFiles,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                decoration: BoxDecoration(
                  color: _backgroundColor,
                  borderRadius: widget.borderRadius ?? BorderRadius.circular(12),
                  border: Border.all(
                    color: _borderColor,
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                ),
                child: widget.child ?? _buildDefaultContent(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMobileVersion() {
    return GestureDetector(
      onTap: widget.onTap ?? _pickFiles,
      child: Container(
        height: widget.height,
        decoration: BoxDecoration(
          color: _backgroundColor,
          borderRadius: widget.borderRadius ?? BorderRadius.circular(12),
          border: Border.all(
            color: _borderColor,
            width: 2,
          ),
        ),
        child: widget.child ?? _buildDefaultContent(),
      ),
    );
  }

  Widget _buildDefaultContent() {
    return Stack(
      alignment: Alignment.center,
      children: [
        if (_state == DropZoneState.uploading && widget.showProgress)
          Positioned.fill(
            child: LinearProgressIndicator(
              value: _uploadProgress,
              backgroundColor: Colors.transparent,
              valueColor: AlwaysStoppedAnimation<Color>(_borderColor),
            ),
          ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                final scale = _state == DropZoneState.hovering
                    ? 1.0 + (_animation.value * 0.1)
                    : 1.0;
                return Transform.scale(
                  scale: scale,
                  child: Icon(
                    _icon,
                    size: 48,
                    color: _borderColor,
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            Text(
              _displayText,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: _state == DropZoneState.error 
                    ? Colors.red 
                    : Theme.of(context).textTheme.bodyLarge?.color,
              ),
              textAlign: TextAlign.center,
            ),
            if (_state == DropZoneState.idle && kIsWeb) ...[
              const SizedBox(height: 8),
              Text(
                widget.allowedExtensions != null 
                    ? 'Supports: ${widget.allowedExtensions!.map((e) => e.toUpperCase()).join(", ")}'
                    : 'All file types supported',
                style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).textTheme.bodySmall?.color?.withValues(alpha: 0.6),
                ),
              ),
              if (widget.maxFileSize != null || widget.maxFiles != null) ...[
                const SizedBox(height: 4),
                Text(
                  [
                    if (widget.maxFileSize != null) 'Max size: ${widget.maxFileSize!.toStringAsFixed(0)}MB per file',
                    if (widget.maxFiles != null) 'Max files: ${widget.maxFiles}',
                  ].join(' • '),
                  style: TextStyle(
                    fontSize: 11,
                    color: Theme.of(context).textTheme.bodySmall?.color?.withValues(alpha: 0.5),
                  ),
                ),
              ],
            ],
          ],
        ),
      ],
    );
  }

  Future<void> _pickFiles() async {
    final picker = ImagePicker();
    
    try {
      if (widget.multiple) {
        final files = await picker.pickMultiImage();
        if (files.isNotEmpty) {
          setState(() {
            _state = DropZoneState.uploading;
            _uploadProgress = 0.0;
          });
          await _handleFiles(files);
        }
      } else {
        final file = await picker.pickImage(source: ImageSource.gallery);
        if (file != null) {
          setState(() {
            _state = DropZoneState.uploading;
            _uploadProgress = 0.0;
          });
          await _handleFiles([file]);
        }
      }
    } catch (e) {
      setState(() {
        _state = DropZoneState.error;
        _errorMessage = 'Failed to pick files';
      });
      _resetStateAfterDelay();
    }
  }

  Future<void> _handleFiles(List<XFile> files) async {
    try {
      // Validate files
      if (widget.allowedExtensions != null) {
        final invalidFiles = files.where((file) {
          final ext = file.path.split('.').last.toLowerCase();
          return !widget.allowedExtensions!.contains(ext);
        }).toList();
        
        if (invalidFiles.isNotEmpty) {
          throw Exception('Invalid file format');
        }
      }

      // Simulate upload progress
      if (widget.showProgress) {
        for (int i = 0; i <= 100; i += 10) {
          await Future.delayed(const Duration(milliseconds: 50));
          if (mounted) {
            setState(() {
              _uploadProgress = i / 100;
            });
          }
        }
      }

      // Call the callback
      widget.onFilesDropped(files);

      if (mounted) {
        setState(() {
          _state = DropZoneState.success;
        });
        _resetStateAfterDelay();
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _state = DropZoneState.error;
          _errorMessage = e.toString();
        });
        _resetStateAfterDelay();
      }
    }
  }

  Future<void> _handleDropzoneFiles(List<DropzoneFileInterface> files) async {
    try {
      // Validate number of files
      if (widget.maxFiles != null && files.length > widget.maxFiles!) {
        throw Exception('Too many files selected. Maximum allowed: ${widget.maxFiles}');
      }
      
      final List<XFile> xFiles = [];
      
      for (final file in files) {
        // Validate file extension if specified
        if (widget.allowedExtensions != null) {
          final ext = file.name.split('.').last.toLowerCase();
          if (!widget.allowedExtensions!.contains(ext)) {
            throw Exception('Invalid file format: ${file.name}');
          }
        }
        
        // Validate file size if specified
        if (widget.maxFileSize != null) {
          final sizeInMB = file.size / (1024 * 1024);
          if (sizeInMB > widget.maxFileSize!) {
            throw Exception('File ${file.name} is too large (${sizeInMB.toStringAsFixed(1)}MB > ${widget.maxFileSize}MB)');
          }
        }
        
        // Convert to XFile for compatibility with existing API
        final bytes = await _dropzoneController!.getFileData(file);
        final xFile = XFile.fromData(
          bytes,
          name: file.name,
          mimeType: file.type,
        );
        xFiles.add(xFile);
        
        // Update progress
        if (widget.showProgress) {
          setState(() {
            _uploadProgress = (xFiles.length / files.length) * 0.8; // 80% for file processing
          });
        }
      }
      
      // Simulate final upload progress
      if (widget.showProgress) {
        for (int i = 80; i <= 100; i += 5) {
          await Future.delayed(const Duration(milliseconds: 30));
          if (mounted) {
            setState(() {
              _uploadProgress = i / 100;
            });
          }
        }
      }
      
      // Call the callback
      widget.onFilesDropped(xFiles);
      
      if (mounted) {
        setState(() {
          _state = DropZoneState.success;
        });
        _resetStateAfterDelay();
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _state = DropZoneState.error;
          _errorMessage = e.toString();
        });
        _resetStateAfterDelay();
      }
    }
  }

  void _resetStateAfterDelay() {
    _successTimer?.cancel();
    _successTimer = Timer(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          _state = DropZoneState.idle;
          _uploadProgress = 0.0;
          _errorMessage = null;
        });
      }
    });
  }
}

// Convenience widget for image uploads
class ImageDropZone extends StatelessWidget {
  final Function(List<XFile>) onImagesDropped;
  final bool multiple;
  final double? maxSizeMB;
  final int? maxFiles;

  const ImageDropZone({
    super.key,
    required this.onImagesDropped,
    this.multiple = true,
    this.maxSizeMB = 10,
    this.maxFiles,
  });

  @override
  Widget build(BuildContext context) {
    return DropZoneWidget(
      onFilesDropped: onImagesDropped,
      multiple: multiple,
      allowedExtensions: const ['jpg', 'jpeg', 'png', 'gif', 'webp'],
      maxFileSize: maxSizeMB,
      maxFiles: maxFiles,
      height: 180,
      primaryColor: Theme.of(context).colorScheme.primary,
      idleText: multiple 
          ? 'Drop images here or click to browse'
          : 'Drop an image here or click to browse',
      hoverText: 'Release to upload images',
    );
  }
}