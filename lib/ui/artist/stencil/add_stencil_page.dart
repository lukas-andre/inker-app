import 'dart:io';
import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/data/api/artist/dtos/tag_dto.dart';
import 'package:inker_studio/domain/blocs/artist_stencil/artist_stencil_bloc.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/test_utils/register_keys.dart';
import 'package:inker_studio/test_utils/test_mode.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/snackbar/custom_snackbar.dart';
import 'package:path_provider/path_provider.dart';

class AddStencilPage extends StatefulWidget {
  const AddStencilPage({super.key});

  @override
  State<AddStencilPage> createState() => _AddStencilPageState();
}

class _AddStencilPageState extends State<AddStencilPage> { 
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _tagController = TextEditingController();
  final _searchDebounce = _Debounce(milliseconds: 500);
  XFile? _selectedImage;
  bool _isFeatured = false;
  bool _isHidden = false;
  List<TagSuggestionResponseDto> _tagSuggestions = [];
  final List<TagSuggestionResponseDto> _selectedTagsObjects = [];
  final List<String> _selectedTagIds = [];
  bool _isLoading = false;
  bool _isFetchingTags = false;
  bool _showTagSuggestions = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadPopularTags();
    });
  }

  void _loadPopularTags() {
    context.read<ArtistStencilBloc>().add(
      const ArtistStencilEvent.getPopularTags(),
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
        // Crear un archivo temporal para la imagen de prueba
        final directory = await getTemporaryDirectory();
        final imagePath = '${directory.path}/test_stencil.png';
        final File imageFile = File(imagePath);
        
        // Copiar el asset al archivo temporal
        ByteData data = await rootBundle.load('assets/stencil_${Random().nextInt(5) + 1}.png');
        List<int> bytes = data.buffer.asUint8List();
        await imageFile.writeAsBytes(bytes);
        
        // Usar la imagen temporal
        setState(() {
          _selectedImage = XFile(imagePath);
        });
        
        print('Image loaded on test mode: $imagePath');
        return;
      } catch (e) {
        print('Error loading test image: $e');
      }
    }
    
    // Flujo normal para modo no-test
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _selectedImage = image;
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
      
      context.read<ArtistStencilBloc>().add(
        ArtistStencilEvent.getTagSuggestions(query),
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
    
    context.read<ArtistStencilBloc>().add(
      ArtistStencilEvent.createTag(name),
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

      context.read<ArtistStencilBloc>().add(
            ArtistStencilEvent.createStencil(
              title: _titleController.text,
              description: _descriptionController.text,
              isFeatured: _isFeatured,
              isHidden: _isHidden,
              tagIds: _selectedTagIds.isEmpty ? null : _selectedTagIds,
              imageFile: _selectedImage,
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: registerKeys.addStencil.page,
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(S.of(context).addStencil, style: TextStyleTheme.headline1),
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: BlocConsumer<ArtistStencilBloc, ArtistStencilState>(
        listener: (context, state) {
          state.maybeWhen(
            stencilCreated: (_) {
              ScaffoldMessenger.of(context).showSnackBar(
                customSnackBar(
                  content: S.of(context).stencilCreatedSuccessfully,
                  backgroundColor: Colors.green,
                ),
              );
              Navigator.pop(context);
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
      child: GestureDetector(
        key: registerKeys.addStencil.imagePicker,
        onTap: _pickImage,
        child: Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color:
                HSLColor.fromColor(Theme.of(context).colorScheme.surface).withLightness(0.2).toColor(),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Theme.of(context).colorScheme.secondary.withOpacity(0.5)),
          ),
          child: _selectedImage != null
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.file(
                    File(_selectedImage!.path),
                    fit: BoxFit.cover,
                  ),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_photo_alternate,
                      size: 64,
                      color: Theme.of(context).colorScheme.secondary.withOpacity(0.7),
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
      ),
    );
  }

  Widget _buildTitleField() {
    return TextFormField(
      key: registerKeys.addStencil.titleField,
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
      key: registerKeys.addStencil.descriptionField,
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
          S.of(context).addTagsToMakeYourStencilMoreDiscoverable,
          style: TextStyleTheme.caption.copyWith(
            color: Colors.grey.shade400,
          ),
        ),
        const SizedBox(height: 16),
        TextFormField(
          key: registerKeys.addStencil.tagField,
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
                    key: registerKeys.addStencil.createNewTagButton,
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
      key: registerKeys.addStencil.tagSuggestionsList,
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
                key: registerKeys.addStencil.createNewTagButton,
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
      key: registerKeys.addStencil.selectedTagsWrap,
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
          backgroundColor: Theme.of(context).colorScheme.tertiary,
          deleteIcon: const Icon(Icons.close, size: 16, color: Colors.white70),
          onDeleted: () => _removeTag(tag),
        );
      }).toList(),
    );
  }

  Widget _buildFeaturedSwitch() {
    return SwitchListTile(
      key: registerKeys.addStencil.featuredSwitch,
      title: Text(
        S.of(context).featuredStencil,
        style: TextStyleTheme.bodyText1.copyWith(
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        S.of(context).stencilWillBeHighlightedInProfile,
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
      key: registerKeys.addStencil.hiddenSwitch,
      title: Text(
        S.of(context).hideStencil,
        style: TextStyleTheme.bodyText1.copyWith(
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        S.of(context).stencilWillBeHiddenFromPublicView,
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
        key: registerKeys.addStencil.submitButton,
        onPressed: _submitForm,
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          S.of(context).saveStencil,
          style: TextStyleTheme.button.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
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
