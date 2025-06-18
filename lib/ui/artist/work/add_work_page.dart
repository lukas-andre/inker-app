import 'dart:io';
import 'dart:async';
import 'dart:math';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/data/api/artist/dtos/tag_dto.dart';
import 'package:inker_studio/data/api/work/dtos/work_dto.dart';
import 'package:inker_studio/domain/blocs/artist_work/artist_work_bloc.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/test_utils/test_mode.dart';
import 'package:inker_studio/test_utils/register_keys.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/ui/shared/widgets/image_with_skeleton.dart';
import 'package:inker_studio/ui/shared/widgets/drop_zone_widget.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/snackbar/custom_snackbar.dart';
import 'package:path_provider/path_provider.dart';

class AddWorkPage extends StatefulWidget {
  const AddWorkPage({super.key});

  @override
  State<AddWorkPage> createState() => _AddWorkPageState();
}

class _AddWorkPageState extends State<AddWorkPage> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _tagController = TextEditingController();
  final _searchDebounce = _Debounce(milliseconds: 500);
  XFile? _selectedImage;
  Uint8List? _imageBytes;
  bool _isFeatured = false;
  bool _isHidden = false;
  WorkSource _source = WorkSource.app;
  List<TagSuggestionResponseDto> _tagSuggestions = [];
  final List<TagSuggestionResponseDto> _selectedTagsObjects = [];
  final List<String> _selectedTagIds = [];
  bool _isLoading = false;
  bool _isFetchingTags = false;
  bool _showTagSuggestions = false;
  
  // Gestor de caché para optimizar el manejo de imágenes (removido por no usar)
  // final _imageCache = CachedImageManager();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadPopularTags();
    });
  }

  void _loadPopularTags() {
    context.read<ArtistWorkBloc>().add(
      const ArtistWorkEvent.getPopularTags(),
    );
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _tagController.dispose();
    _searchDebounce.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    // Si estamos en modo de prueba, usar una imagen predefinida
    if (isInTestMode) {
      try {
        // Copiar el asset al archivo temporal
        ByteData data = await rootBundle.load('assets/work_${Random().nextInt(5) + 1}.png');
        final bytes = data.buffer.asUint8List();
        
        if (kIsWeb) {
          // En web, crear un XFile desde bytes
          setState(() {
            _selectedImage = XFile.fromData(bytes, name: 'test_work.png');
            _imageBytes = bytes;
          });
        } else {
          // En móvil, crear archivo temporal
          final directory = await getTemporaryDirectory();
          final imagePath = '${directory.path}/test_work.png';
          final File imageFile = File(imagePath);
          await imageFile.writeAsBytes(bytes);
          
          setState(() {
            _selectedImage = XFile(imagePath);
            _imageBytes = bytes;
          });
        }
        
        debugPrint('Image loaded on test mode');
        return;
      } catch (e) {
        debugPrint('Error loading test image: $e');
      }
    }
    
    // Flujo normal para modo no-test
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(
      source: ImageSource.gallery,
      // Optimizar calidad de imagen para subida
      maxWidth: 1920,
      maxHeight: 1920,
      imageQuality: 85, // Balancear calidad/tamaño
    );

    if (image != null) {
      final bytes = await image.readAsBytes();
      setState(() {
        _selectedImage = image;
        _imageBytes = bytes;
      });
    }
  }

  void _searchTags(String query) {
    if (query.isEmpty) {
      _loadPopularTags();
      return;
    }
    
    _searchDebounce.run(() {
      setState(() {
        _isFetchingTags = true;
      });
      
      context.read<ArtistWorkBloc>().add(
        ArtistWorkEvent.getTagSuggestions(query),
      );
    });
  }

  void _addTag(TagSuggestionResponseDto tag) {
    if (!_selectedTagIds.contains(tag.id)) {
      setState(() {
        _selectedTagsObjects.add(tag);
        _selectedTagIds.add(tag.id);
        _tagController.clear();
        _showTagSuggestions = false;
      });
    }
  }

  void _removeTag(TagSuggestionResponseDto tag) {
    setState(() {
      _selectedTagsObjects.removeWhere((t) => t.id == tag.id);
      _selectedTagIds.removeWhere((id) => id == tag.id);
    });
  }

  void _createNewTag(String name) {
    if (name.isEmpty) return;
    
    setState(() {
      _isFetchingTags = true;
    });
    
    context.read<ArtistWorkBloc>().add(
      ArtistWorkEvent.createTag(name),
    );
    
    _tagController.clear();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      if (_selectedImage == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          customSnackBar(
            content: S.of(context).pleaseSelectAnImage,
            backgroundColor: Colors.red,
          ),
        );
        return;
      }

      setState(() {
        _isLoading = true;
      });

      context.read<ArtistWorkBloc>().add(
            ArtistWorkEvent.createWork(
              title: _titleController.text,
              description: _descriptionController.text,
              isFeatured: _isFeatured,
              isHidden: _isHidden,
              tagIds: _selectedTagIds.isEmpty ? null : _selectedTagIds,
              imageFile: _selectedImage,
              source: _source,
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: registerKeys.workDetail.page,
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(S.of(context).addWork, style: TextStyleTheme.headline1),
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: BlocConsumer<ArtistWorkBloc, ArtistWorkState>(
        listener: (context, state) {
          state.maybeWhen(
            workCreated: (_) {
              ScaffoldMessenger.of(context).showSnackBar(
                customSnackBar(
                  content: S.of(context).workCreatedSuccessfully,
                  backgroundColor: Colors.green,
                ),
              );
              Navigator.pop(context, true);
            },
            tagSuggestionsLoaded: (suggestions) {
              setState(() {
                _tagSuggestions = suggestions;
                _isFetchingTags = false;
                _showTagSuggestions = suggestions.isNotEmpty;
              });
            },
            popularTagsLoaded: (popularTags) {
              setState(() {
                _tagSuggestions = popularTags;
                _isFetchingTags = false;
                _showTagSuggestions = popularTags.isNotEmpty;
              });
            },
            tagCreated: (tag) {
              setState(() {
                _isFetchingTags = false;
                _addTag(tag);
              });
            },
            error: (message) {
              setState(() {
                _isLoading = false;
                _isFetchingTags = false;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                customSnackBar(
                  content: message,
                  backgroundColor: Colors.red,
                ),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          if (_isLoading) {
            return const Center(child: InkerProgressIndicator());
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildImagePicker(),
                  const SizedBox(height: 24),
                  _buildTitleField(),
                  const SizedBox(height: 16),
                  _buildDescriptionField(),
                  const SizedBox(height: 24),
                  _buildSourceDropdown(),
                  const SizedBox(height: 24),
                  _buildTagField(),
                  if (_showTagSuggestions) _buildTagSuggestions(),
                  if (_selectedTagsObjects.isNotEmpty) ...[
                    const SizedBox(height: 16),
                    _buildSelectedTags(),
                  ],
                  const SizedBox(height: 24),
                  _buildFeaturedSwitch(),
                  _buildHiddenSwitch(),
                  const SizedBox(height: 24),
                  _buildSubmitButton(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildImagePicker() {
    return Center(
      child: _selectedImage != null
          ? _buildSelectedImagePreview()
          : kIsWeb
              ? _buildWebDropZone()
              : _buildMobileImagePicker(),
    );
  }

  Widget _buildSelectedImagePreview() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.5),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: _buildImageWidget(),
          ),
        ),
        Positioned(
          top: 8,
          right: 8,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(
              icon: const Icon(Icons.close, color: Colors.white, size: 20),
              onPressed: () {
                setState(() {
                  _selectedImage = null;
                  _imageBytes = null;
                });
              },
              constraints: const BoxConstraints(
                minWidth: 32,
                minHeight: 32,
              ),
            ),
          ),
        ),
        Positioned(
          top: 8,
          left: 8,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(
              icon: const Icon(Icons.edit, color: Colors.white, size: 20),
              onPressed: _pickImage,
              constraints: const BoxConstraints(
                minWidth: 32,
                minHeight: 32,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildWebDropZone() {
    return ImageDropZone(
      key: registerKeys.workDetail.imagePicker,
      onImagesDropped: (files) {
        if (files.isNotEmpty) {
          _handleSelectedImages(files);
        }
      },
      multiple: false,
      maxSizeMB: 10,
    );
  }

  Widget _buildMobileImagePicker() {
    return GestureDetector(
      key: registerKeys.workDetail.imagePicker,
      onTap: _pickImage,
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          color: HSLColor.fromColor(Theme.of(context).colorScheme.surface)
              .withLightness(0.2)
              .toColor(),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.5),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_photo_alternate,
              size: 64,
              color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.7),
            ),
            const SizedBox(height: 16),
            Text(
              S.of(context).tapToSelectImage,
              style: TextStyleTheme.subtitle1.copyWith(
                color: Colors.grey.shade400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _handleSelectedImages(List<XFile> files) async {
    if (files.isEmpty) return;
    
    final selectedFile = files.first;
    final bytes = await selectedFile.readAsBytes();
    
    setState(() {
      _selectedImage = selectedFile;
      _imageBytes = bytes;
    });
  }

  Widget _buildTitleField() {
    return TextFormField(
      key: registerKeys.workDetail.titleField,
      controller: _titleController,
      style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
      decoration: InputDecoration(
        labelText: S.of(context).title,
        labelStyle:
            TextStyleTheme.bodyText1.copyWith(color: Colors.grey.shade400),
        filled: true,
        fillColor:
            HSLColor.fromColor(Theme.of(context).colorScheme.surface).withLightness(0.15).toColor(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey.shade800),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey.shade800),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return S.of(context).pleaseEnterATitle;
        }
        return null;
      },
    );
  }

  Widget _buildDescriptionField() {
    return TextFormField(
      key: registerKeys.workDetail.descriptionField,
      controller: _descriptionController,
      style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
      maxLines: 4,
      decoration: InputDecoration(
        labelText: S.of(context).description,
        labelStyle:
            TextStyleTheme.bodyText1.copyWith(color: Colors.grey.shade400),
        filled: true,
        fillColor:
            HSLColor.fromColor(Theme.of(context).colorScheme.surface).withLightness(0.15).toColor(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey.shade800),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey.shade800),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary),
        ),
      ),
    );
  }
  
  Widget _buildSourceDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).source,
          style: TextStyleTheme.bodyText1.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: HSLColor.fromColor(Theme.of(context).colorScheme.surface).withLightness(0.15).toColor(),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey.shade800),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<WorkSource>(
              value: _source,
              isExpanded: true,
              dropdownColor: HSLColor.fromColor(Theme.of(context).colorScheme.surface).withLightness(0.2).toColor(),
              style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
              icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
              onChanged: (WorkSource? newValue) {
                if (newValue != null) {
                  setState(() {
                    _source = newValue;
                  });
                }
              },
              items: WorkSource.values.map<DropdownMenuItem<WorkSource>>((WorkSource value) {
                return DropdownMenuItem<WorkSource>(
                  value: value,
                  child: Text(
                    value == WorkSource.app ? 'APP' : 'EXTERNAL',
                    style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTagField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).tags,
          style: TextStyleTheme.bodyText1.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          S.of(context).addTagsToMakeYourWorkMoreDiscoverable,
          style: TextStyleTheme.caption.copyWith(
            color: Colors.grey.shade400,
          ),
        ),
        const SizedBox(height: 16),
        TextFormField(
          key: registerKeys.workDetail.tagField,
          controller: _tagController,
          style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
          decoration: InputDecoration(
            hintText: S.of(context).searchOrCreateTags,
            hintStyle: TextStyleTheme.bodyText1.copyWith(color: Colors.grey.shade400),
            filled: true,
            fillColor: HSLColor.fromColor(Theme.of(context).colorScheme.surface).withLightness(0.15).toColor(),
            prefixIcon: Icon(Icons.search, color: Colors.grey.shade400),
            suffixIcon: _isFetchingTags 
                ? Container(
                    width: 20,
                    height: 20,
                    padding: const EdgeInsets.all(12),
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).colorScheme.secondary),
                    ),
                  )
                : IconButton(
                    key: registerKeys.workDetail.createNewTagButton,
                    icon: Icon(Icons.add, color: Colors.grey.shade400),
                    onPressed: () => _createNewTag(_tagController.text.trim()),
                    tooltip: S.of(context).createNewTag,
                  ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey.shade800),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey.shade800),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary),
            ),
          ),
          onChanged: _searchTags,
          onTap: () {
            if (_tagController.text.isEmpty) {
              _loadPopularTags();
            }
            setState(() {
              _showTagSuggestions = true;
            });
          },
        ),
      ],
    );
  }

  Widget _buildTagSuggestions() {
    return Container(
      key: registerKeys.workDetail.tagSuggestionsList,
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: HSLColor.fromColor(Theme.of(context).colorScheme.surface).withLightness(0.15).toColor(),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade800),
      ),
      constraints: const BoxConstraints(maxHeight: 200),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                _tagController.text.isEmpty
                    ? S.of(context).popularTags
                    : S.of(context).suggestions,
                style: TextStyleTheme.caption.copyWith(
                  color: Colors.grey.shade400,
                ),
              ),
            ),
            ..._tagSuggestions.map((tag) => _buildTagSuggestionItem(tag)),
            if (_tagController.text.isNotEmpty)
              ListTile(
                key: registerKeys.workDetail.createNewTagButton,
                title: Text(
                  '${S.of(context).createNewTag}: "${_tagController.text}"',
                  style: TextStyleTheme.bodyText2.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                leading: Icon(Icons.add_circle_outline, color: Theme.of(context).colorScheme.secondary),
                onTap: () => _createNewTag(_tagController.text.trim()),
                contentPadding: EdgeInsets.zero,
                dense: true,
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildTagSuggestionItem(TagSuggestionResponseDto tag) {
    final bool isSelected = _selectedTagIds.contains(tag.id);
    
    return ListTile(
      title: Text(
        tag.name,
        style: TextStyleTheme.bodyText2.copyWith(
          color: isSelected ? Theme.of(context).colorScheme.secondary : Colors.white,
        ),
      ),
      trailing: tag.count != null && tag.count! > 0
          ? Text(
              '${tag.count}',
              style: TextStyleTheme.caption.copyWith(
                color: Colors.grey.shade400,
              ),
            )
          : null,
      leading: isSelected
          ? Icon(Icons.check_circle, color: Theme.of(context).colorScheme.secondary)
          : const Icon(Icons.add_circle_outline, color: Colors.grey),
      onTap: () => _addTag(tag),
      contentPadding: EdgeInsets.zero,
      dense: true,
    );
  }

  Widget _buildSelectedTags() {
    return Wrap(
      key: registerKeys.workDetail.selectedTagsWrap,
      spacing: 8,
      runSpacing: 8,
      children: _selectedTagsObjects.map((tag) {
        return Chip(
          label: Text(
            tag.name,
            style: TextStyleTheme.caption.copyWith(
              color: Colors.white,
            ),
          ),
          backgroundColor: Theme.of(context).colorScheme.error,
          deleteIcon: const Icon(Icons.close, size: 16, color: Colors.white70),
          onDeleted: () => _removeTag(tag),
        );
      }).toList(),
    );
  }

  Widget _buildFeaturedSwitch() {
    return SwitchListTile(
      key: registerKeys.workDetail.featuredSwitch,
      title: Text(
        S.of(context).featuredWork,
        style: TextStyleTheme.bodyText1.copyWith(
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        S.of(context).workWillBeHighlightedInProfile,
        style: TextStyleTheme.caption.copyWith(
          color: Colors.grey.shade400,
        ),
      ),
      value: _isFeatured,
      onChanged: (bool value) {
        setState(() {
          _isFeatured = value;
        });
      },
      activeColor: Theme.of(context).colorScheme.secondary,
      contentPadding: EdgeInsets.zero,
    );
  }

  Widget _buildHiddenSwitch() {
    return SwitchListTile(
      key: registerKeys.workDetail.hiddenSwitch,
      title: Text(
        S.of(context).hideWork,
        style: TextStyleTheme.bodyText1.copyWith(
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        S.of(context).workWillBeHiddenFromPublicView,
        style: TextStyleTheme.caption.copyWith(
          color: Colors.grey.shade400,
        ),
      ),
      value: _isHidden,
      onChanged: (bool value) {
        setState(() {
          _isHidden = value;
        });
      },
      activeColor: Theme.of(context).colorScheme.secondary,
      contentPadding: EdgeInsets.zero,
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        key: registerKeys.workDetail.submitButton,
        onPressed: _submitForm,
        style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          S.of(context).saveWork,
          style: TextStyleTheme.button.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildImageWidget() {
    if (_selectedImage == null) {
      return const SizedBox.shrink();
    }

    // Use ImageWithSkeleton for better UX with skeleton loading
    if (_imageBytes != null) {
      // For memory images, display directly with fade-in animation
      return AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: Image.memory(
          _imageBytes!,
          key: ValueKey(_selectedImage!.path),
          fit: BoxFit.contain, // Changed from cover to contain to avoid distortion
          width: double.infinity,
          height: double.infinity,
          frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
            if (wasSynchronouslyLoaded) {
              return child;
            }
            return AnimatedOpacity(
              opacity: frame == null ? 0 : 1,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
              child: child,
            );
          },
        ),
      );
    } else if (kIsWeb) {
      // For web, use network image with skeleton
      return ImageWithSkeleton(
        imageUrl: _selectedImage!.path,
        sourceType: ImageSourceType.network,
        fit: BoxFit.contain, // Changed from cover to contain
        width: double.infinity,
        height: double.infinity,
        borderRadius: BorderRadius.circular(12),
        shimmerBaseColor: HSLColor.fromColor(Theme.of(context).colorScheme.surface)
            .withLightness(0.15)
            .toColor(),
        shimmerHighlightColor: HSLColor.fromColor(Theme.of(context).colorScheme.surface)
            .withLightness(0.25)
            .toColor(),
      );
    } else {
      // For mobile, use file image with skeleton
      return ImageWithSkeleton(
        imageUrl: _selectedImage!.path,
        sourceType: ImageSourceType.file,
        fit: BoxFit.contain, // Changed from cover to contain
        width: double.infinity,
        height: double.infinity,
        borderRadius: BorderRadius.circular(12),
        shimmerBaseColor: HSLColor.fromColor(Theme.of(context).colorScheme.surface)
            .withLightness(0.15)
            .toColor(),
        shimmerHighlightColor: HSLColor.fromColor(Theme.of(context).colorScheme.surface)
            .withLightness(0.25)
            .toColor(),
      );
    }
  }
}

class _Debounce {
  final int milliseconds;
  Timer? _timer;

  _Debounce({required this.milliseconds});

  void run(VoidCallback action) {
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }

  void dispose() {
    _timer?.cancel();
  }
}