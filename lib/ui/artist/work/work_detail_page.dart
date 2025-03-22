import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/data/api/work/dtos/work_dto.dart';
import 'package:inker_studio/domain/blocs/artist_work/artist_work_bloc.dart';
import 'package:inker_studio/domain/models/work/work.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/snackbar/custom_snackbar.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class WorkDetailPage extends StatefulWidget {
  final Work work;

  const WorkDetailPage({super.key, required this.work});

  @override
  State<WorkDetailPage> createState() => _WorkDetailPageState();
}

class _WorkDetailPageState extends State<WorkDetailPage> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _tagController = TextEditingController();
  final _searchDebounce = _Debounce(milliseconds: 500);
  bool _isEditing = false;
  bool _isFeatured = false;
  bool _isHidden = false;
  WorkSource _source = WorkSource.app;
  Work? _currentWork;
  XFile? _selectedImage;
  bool _isLoading = false;
  bool _isFetchingTags = false;
  bool _showTagSuggestions = false;
  List<TagSuggestionResponseDto> _tagSuggestions = [];
  List<TagSuggestionResponseDto> _selectedTagsObjects = [];
  List<int> _selectedTagIds = [];

  @override
  void initState() {
    super.initState();
    _currentWork = widget.work;
    _titleController.text = _currentWork!.title;
    _descriptionController.text = _currentWork!.description ?? '';
    _isFeatured = _currentWork!.isFeatured;
    _isHidden = _currentWork!.isHidden;
    _source = _currentWork!.source;
    
    // Initialize tags from work
    if (_currentWork!.tags != null && _currentWork!.tags!.isNotEmpty) {
      _selectedTagIds = _currentWork!.tags!.map((tag) => tag.id).toList();
      _selectedTagsObjects = _currentWork!.tags!
          .map((tag) => TagSuggestionResponseDto(
                id: tag.id,
                name: tag.name,
                count: tag.count,
              ))
          .toList();
    }

    // Record a view when the detail page is opened
    context.read<ArtistWorkBloc>().add(
          ArtistWorkEvent.recordView(_currentWork!.id),
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
  
  void _loadPopularTags() {
    context.read<ArtistWorkBloc>().add(
      const ArtistWorkEvent.getPopularTags(),
    );
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

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _selectedImage = image;
      });
    }
  }

  void _toggleEditing() {
    // Use the updated work data when available
    final work = _currentWork ?? widget.work;
    
    if (_isEditing) {
      // Save changes
      if (_titleController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          customSnackBar(
            content: S.of(context).titleCannotBeEmpty,
            backgroundColor: Colors.red,
          ),
        );
        return;
      }

      // No necesitamos establecer _isLoading aquí, ya lo haremos en el listener 
      // cuando recibamos el estado submitting

      context.read<ArtistWorkBloc>().add(
            ArtistWorkEvent.updateWork(
              workId: work.id,
              title: _titleController.text,
              description: _descriptionController.text,
              isFeatured: _isFeatured,
              isHidden: _isHidden,
              tagIds: _selectedTagIds.isEmpty ? null : _selectedTagIds,
              imageFile: _selectedImage,
              source: _source,
            ),
          );
      // No necesitamos llamar a loadWorkDetail aquí porque ya lo haremos en el listener
      // cuando recibamos el estado workUpdated
    } else {
      // Load popular tags when entering edit mode
      _loadPopularTags();
      setState(() {
        _isEditing = true;
      });
    }
    // Solo actualizamos _isEditing a false cuando recibimos workUpdated
    // para evitar cambiar el estado antes de completar la actualización
    if (!_isEditing) {
      setState(() {
        _isEditing = true;
      });
    }
  }

  void _deleteWork() {
    // Use the updated work data when available
    final work = _currentWork ?? widget.work;
    
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor:
              HSLColor.fromColor(primaryColor).withLightness(0.2).toColor(),
          title: Text(
            S.of(context).deleteWork,
            style: TextStyleTheme.headline3.copyWith(
              color: Colors.white,
            ),
          ),
          content: Text(
            S.of(context).areYouSureYouWantToDeleteThisWork,
            style: TextStyleTheme.bodyText1.copyWith(
              color: Colors.white,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                S.of(context).cancel,
                style: TextStyleTheme.button.copyWith(
                  color: Colors.grey.shade400,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
                setState(() {
                  _isLoading = true;
                });
                context.read<ArtistWorkBloc>().add(
                      ArtistWorkEvent.deleteWork(work.id),
                    );
              },
              child: Text(
                S.of(context).delete,
                style: TextStyleTheme.button.copyWith(
                  color: Colors.red,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text(_isEditing
            ? S.of(context).editWork
            : S.of(context).workDetails, style: TextStyleTheme.headline3),
        backgroundColor: primaryColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: Icon(_isEditing ? Icons.check : Icons.edit, color: Colors.white),
            onPressed: _toggleEditing,
            tooltip: _isEditing ? S.of(context).save : S.of(context).edit,
          ),
          if (!_isEditing)
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.white),
              onPressed: _deleteWork,
              tooltip: S.of(context).delete,
            ),
        ],
      ),
      body: BlocConsumer<ArtistWorkBloc, ArtistWorkState>(
        listener: (context, state) {
          state.maybeWhen(
            submitting: () {
              setState(() {
                _isLoading = true;
              });
            },
            workUpdated: (updatedWork) {
              setState(() {
                _isLoading = false;
                _isEditing = false;
              });
              
              ScaffoldMessenger.of(context).showSnackBar(
                customSnackBar(
                  content: S.of(context).workUpdatedSuccessfully,
                  backgroundColor: Colors.green,
                ),
              );
              
              // Immediately update the work data with what we got from the update response
              setState(() {
                _currentWork = updatedWork; // Store the complete updatedWork object
                if (updatedWork.title != null) _titleController.text = updatedWork.title;
                if (updatedWork.description != null) _descriptionController.text = updatedWork.description ?? '';
                if (updatedWork.isFeatured != null) _isFeatured = updatedWork.isFeatured;
                if (updatedWork.isHidden != null) _isHidden = updatedWork.isHidden;
                if (updatedWork.source != null) _source = updatedWork.source;
              });
              
              // Reload the work detail from the backend to ensure all data is fresh and consistent
              final work = _currentWork ?? widget.work;
              context.read<ArtistWorkBloc>().add(
                ArtistWorkEvent.loadWorkDetail(work.id),
              );
            },
            detailLoaded: (updatedWork) {
              // Siempre actualizar los datos cuando se carga un detalle
              setState(() {
                _isLoading = false; // Asegurar que se quite el indicador de carga
                
                if (updatedWork.id == widget.work.id) {
                  _titleController.text = updatedWork.title;
                  _descriptionController.text = updatedWork.description ?? '';
                  _isFeatured = updatedWork.isFeatured;
                  _isHidden = updatedWork.isHidden;
                  _source = updatedWork.source;
                  
                  // Update the widget's work reference to ensure all UI elements use the latest data
                  _currentWork = updatedWork;
                  
                  // Actualizar también los tags
                  if (updatedWork.tags != null && updatedWork.tags!.isNotEmpty) {
                    _selectedTagIds = updatedWork.tags!.map((tag) => tag.id).toList();
                    _selectedTagsObjects = updatedWork.tags!
                        .map((tag) => TagSuggestionResponseDto(
                              id: tag.id,
                              name: tag.name,
                              count: tag.count,
                            ))
                        .toList();
                  } else {
                    _selectedTagIds = [];
                    _selectedTagsObjects = [];
                  }
                }
              });
            },
            workDeleted: () {
              ScaffoldMessenger.of(context).showSnackBar(
                customSnackBar(
                  content: S.of(context).workDeletedSuccessfully,
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
                _showTagSuggestions = popularTags.isNotEmpty && _isEditing;
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
          return state.maybeWhen(
            submitting: () => const Center(child: InkerProgressIndicator()),
            orElse: () {
              if (_isLoading) {
                return const Center(child: InkerProgressIndicator());
              }
              
              return SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildWorkImage(),
                    const SizedBox(height: 24),
                    _isEditing ? _buildEditForm() : _buildWorkDetails(),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildWorkImage() {
    // Use the updated work data when available
    final work = _currentWork ?? widget.work;
    
    if (_isEditing && _selectedImage != null) {
      return GestureDetector(
        onTap: _isEditing ? _pickImage : null,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            _selectedImage!.path,
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    return GestureDetector(
      onTap:
          _isEditing ? _pickImage : () => _openGallery(work.imageUrl),
      child: Container(
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
          color: HSLColor.fromColor(primaryColor).withLightness(0.2).toColor(),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              offset: const Offset(0, 3),
              blurRadius: 6,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: _isEditing
              ? Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      work.imageUrl,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: HSLColor.fromColor(primaryColor)
                              .withLightness(0.15)
                              .toColor(),
                          child: Center(
                            child: Icon(
                              Icons.image_not_supported,
                              color: Colors.grey.shade400,
                              size: 40,
                            ),
                          ),
                        );
                      },
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.3),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 40,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              S.of(context).tapToChangeImage,
                              style: TextStyleTheme.subtitle1.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              : Hero(
                  tag: 'work_image_${work.id}',
                  child: Image.network(
                    work.imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: HSLColor.fromColor(primaryColor)
                            .withLightness(0.15)
                            .toColor(),
                        child: Center(
                          child: Icon(
                            Icons.image_not_supported,
                            color: Colors.grey.shade400,
                            size: 40,
                          ),
                        ),
                      );
                    },
                  ),
                ),
        ),
      ),
    );
  }

  void _openGallery(String imageUrl) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            iconTheme: const IconThemeData(color: Colors.white),
            elevation: 0,
          ),
          body: PhotoViewGallery.builder(
            itemCount: 1,
            builder: (context, index) {
              return PhotoViewGalleryPageOptions(
                imageProvider: NetworkImage(imageUrl),
                minScale: PhotoViewComputedScale.contained,
                maxScale: PhotoViewComputedScale.covered * 2,
              );
            },
            scrollPhysics: const BouncingScrollPhysics(),
            backgroundDecoration: const BoxDecoration(
              color: Colors.black,
            ),
            pageController: PageController(),
          ),
        ),
      ),
    );
  }

  Widget _buildEditForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: _titleController,
          style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
          decoration: InputDecoration(
            labelText: S.of(context).title,
            labelStyle:
                TextStyleTheme.bodyText1.copyWith(color: Colors.grey.shade400),
            filled: true,
            fillColor:
                HSLColor.fromColor(primaryColor).withLightness(0.15).toColor(),
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
              borderSide: BorderSide(color: secondaryColor),
            ),
          ),
        ),
        const SizedBox(height: 16),
        TextFormField(
          controller: _descriptionController,
          style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
          maxLines: 4,
          decoration: InputDecoration(
            labelText: S.of(context).description,
            labelStyle:
                TextStyleTheme.bodyText1.copyWith(color: Colors.grey.shade400),
            filled: true,
            fillColor:
                HSLColor.fromColor(primaryColor).withLightness(0.15).toColor(),
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
              borderSide: BorderSide(color: secondaryColor),
            ),
          ),
        ),
        const SizedBox(height: 16),
        _buildSourceDropdown(),
        const SizedBox(height: 16),
        _buildTagField(),
        if (_showTagSuggestions) 
          _buildTagSuggestions(),
        if (_selectedTagsObjects.isNotEmpty) ...[
          const SizedBox(height: 16),
          _buildSelectedTags(),
        ],
        const SizedBox(height: 16),
        SwitchListTile(
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
          activeColor: secondaryColor,
          contentPadding: EdgeInsets.zero,
        ),
        SwitchListTile(
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
          activeColor: secondaryColor,
          contentPadding: EdgeInsets.zero,
        ),
      ],
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
            color: HSLColor.fromColor(primaryColor).withLightness(0.15).toColor(),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey.shade800),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<WorkSource>(
              value: _source,
              isExpanded: true,
              dropdownColor: HSLColor.fromColor(primaryColor).withLightness(0.2).toColor(),
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
          controller: _tagController,
          style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
          decoration: InputDecoration(
            hintText: S.of(context).searchOrCreateTags,
            hintStyle: TextStyleTheme.bodyText1.copyWith(color: Colors.grey.shade400),
            filled: true,
            fillColor: HSLColor.fromColor(primaryColor).withLightness(0.15).toColor(),
            prefixIcon: Icon(Icons.search, color: Colors.grey.shade400),
            suffixIcon: _isFetchingTags 
                ? Container(
                    width: 20,
                    height: 20,
                    padding: const EdgeInsets.all(12),
                    child: const CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(secondaryColor),
                    ),
                  )
                : IconButton(
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
              borderSide: BorderSide(color: secondaryColor),
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
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: HSLColor.fromColor(primaryColor).withLightness(0.15).toColor(),
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
                title: Text(
                  '${S.of(context).createNewTag}: "${_tagController.text}"',
                  style: TextStyleTheme.bodyText2.copyWith(
                    color: secondaryColor,
                  ),
                ),
                leading: Icon(Icons.add_circle_outline, color: secondaryColor),
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
          color: isSelected ? secondaryColor : Colors.white,
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
          ? const Icon(Icons.check_circle, color: secondaryColor)
          : const Icon(Icons.add_circle_outline, color: Colors.grey),
      onTap: () => _addTag(tag),
      contentPadding: EdgeInsets.zero,
      dense: true,
    );
  }

  Widget _buildSelectedTags() {
    return Wrap(
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
          backgroundColor: secondaryColor.withOpacity(0.2),
          side: BorderSide(color: secondaryColor.withOpacity(0.5)),
          deleteIcon: const Icon(Icons.close, size: 16, color: Colors.white70),
          onDeleted: () => _removeTag(tag),
        );
      }).toList(),
    );
  }

  Widget _buildWorkDetails() {
    // Use the updated work data when available
    final work = _currentWork ?? widget.work;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                work.title,
                style: TextStyleTheme.headline2.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                _buildStatusBadge(
                  icon: Icons.remove_red_eye,
                  count: work.viewCount,
                  tooltip: S.of(context).views,
                ),
                const SizedBox(width: 16),
                _buildStatusBadge(
                  icon: Icons.favorite,
                  count: work.likeCount,
                  tooltip: S.of(context).likes,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 16),
        if (work.description != null &&
            work.description!.isNotEmpty) ...[
          Text(
            work.description!,
            style: TextStyleTheme.bodyText1.copyWith(
              color: Colors.grey.shade300,
            ),
          ),
          const SizedBox(height: 24),
        ],
        _buildInfoSection(
          S.of(context).workDetails,
          [
            _buildInfoItem(
              S.of(context).created,
              _formatDate(work.createdAt),
            ),
            _buildInfoItem(
              S.of(context).lastUpdated,
              _formatDate(work.updatedAt),
            ),
            _buildInfoItem(
              S.of(context).status,
              work.isHidden
                  ? S.of(context).hidden
                  : S.of(context).visible,
            ),
            _buildInfoItem(
              S.of(context).featured,
              work.isFeatured ? S.of(context).yes : S.of(context).no,
            ),
            _buildInfoItem(
              S.of(context).source,
              work.source == WorkSource.app ? 'APP' : 'EXTERNAL',
            ),
          ],
        ),
        if (work.tags != null && work.tags!.isNotEmpty) ...[
          const SizedBox(height: 24),
          Text(
            S.of(context).tags,
            style: TextStyleTheme.headline3.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children:
                work.tags!.map((tag) => _buildTagChip(tag)).toList(),
          ),
        ],
      ],
    );
  }

  Widget _buildStatusBadge(
      {required IconData icon, required int count, required String tooltip}) {
    return Tooltip(
      message: tooltip,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: HSLColor.fromColor(primaryColor).withLightness(0.15).toColor(),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.shade800),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: secondaryColor,
              size: 16,
            ),
            const SizedBox(width: 6),
            Text(
              count.toString(),
              style: TextStyleTheme.bodyText2.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoSection(String title, List<Widget> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyleTheme.headline3.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color:
                HSLColor.fromColor(primaryColor).withLightness(0.15).toColor(),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade800),
          ),
          child: Column(
            children: items,
          ),
        ),
      ],
    );
  }

  Widget _buildInfoItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: TextStyleTheme.bodyText2.copyWith(
                color: Colors.grey.shade400,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value,
              style: TextStyleTheme.bodyText1.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTagChip(Tag tag) {
    // Use the updated work data when available
    final work = _currentWork ?? widget.work;
    
    return GestureDetector(
      onTap: () {
        // First filter the works by this tag
        context.read<ArtistWorkBloc>().add(
          ArtistWorkEvent.filterWorksByTag(tag.id),
        );
        
        // Then navigate to the gallery
        Navigator.pushNamed(
          context, 
          '/works/gallery',
        ).then((_) {
          // When we return, load the work again
          context.read<ArtistWorkBloc>().add(
            ArtistWorkEvent.loadWorkDetail(work.id),
          );
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: secondaryColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: secondaryColor.withOpacity(0.5)),
        ),
        child: Text(
          tag.name,
          style: TextStyleTheme.caption.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
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