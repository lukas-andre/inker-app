import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/data/api/stencil/dtos/stencil_dto.dart';
import 'package:inker_studio/domain/blocs/artist_stencil/artist_stencil_bloc.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/snackbar/custom_snackbar.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:inker_studio/utils/image/cached_image_manager.dart';
import 'package:cached_network_image/cached_network_image.dart';

class StencilDetailPage extends StatefulWidget {
  final Stencil stencil;

  const StencilDetailPage({super.key, required this.stencil});

  @override
  State<StencilDetailPage> createState() => _StencilDetailPageState();
}

class _StencilDetailPageState extends State<StencilDetailPage> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _tagController = TextEditingController();
  final _searchDebounce = _Debounce(milliseconds: 500);
  final _imageCache = CachedImageManager();
  
  bool _isEditing = false;
  bool _isFeatured = false;
  bool _isHidden = false;
  Stencil? _currentStencil;
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
    _currentStencil = widget.stencil;
    _titleController.text = _currentStencil!.title;
    _descriptionController.text = _currentStencil!.description ?? '';
    _isFeatured = _currentStencil!.isFeatured;
    _isHidden = _currentStencil!.isHidden;
    
    // Precargar la imagen principal al iniciar la página
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_currentStencil != null) {
        _imageCache.preloadCriticalImages(
          context,
          profileImageUrl: _currentStencil!.imageUrl,
        );
      }
    });
    
    // Initialize tags from stencil
    if (_currentStencil!.tags != null && _currentStencil!.tags!.isNotEmpty) {
      _selectedTagIds = _currentStencil!.tags!.map((tag) => tag.id).toList();
      _selectedTagsObjects = _currentStencil!.tags!
          .map((tag) => TagSuggestionResponseDto(
                id: tag.id,
                name: tag.name,
                count: tag.count,
              ))
          .toList();
    }

    // Record a view when the detail page is opened
    context.read<ArtistStencilBloc>().add(
          ArtistStencilEvent.recordView(_currentStencil!.id),
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
    context.read<ArtistStencilBloc>().add(
      const ArtistStencilEvent.getPopularTags(),
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
    // Use the updated stencil data when available
    final stencil = _currentStencil ?? widget.stencil;
    
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

      setState(() {
        _isLoading = true;
      });

      context.read<ArtistStencilBloc>().add(
            ArtistStencilEvent.updateStencil(
              stencilId: stencil.id,
              title: _titleController.text,
              description: _descriptionController.text,
              isFeatured: _isFeatured,
              isHidden: _isHidden,
              tagIds: _selectedTagIds.isEmpty ? null : _selectedTagIds,
              imageFile: _selectedImage,
            ),
          );
      // Don't set _isEditing to false here, we'll do it in the listener when we receive the update confirmation
    } else {
      // Load popular tags when entering edit mode
      _loadPopularTags();
      setState(() {
        _isEditing = true;
      });
    }
  }

  void _deleteStencil() {
    // Use the updated stencil data when available
    final stencil = _currentStencil ?? widget.stencil;
    
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor:
              HSLColor.fromColor(primaryColor).withLightness(0.2).toColor(),
          title: Text(
            S.of(context).deleteStencil,
            style: TextStyleTheme.headline3.copyWith(
              color: Colors.white,
            ),
          ),
          content: Text(
            S.of(context).areYouSureYouWantToDeleteThisStencil,
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
                context.read<ArtistStencilBloc>().add(
                      ArtistStencilEvent.deleteStencil(stencil.id),
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
            ? S.of(context).editStencil
            : S.of(context).stencilDetails, style: TextStyleTheme.headline3),
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
              onPressed: _deleteStencil,
              tooltip: S.of(context).delete,
            ),
        ],
      ),
      body: BlocConsumer<ArtistStencilBloc, ArtistStencilState>(
        listener: (context, state) {
          state.maybeWhen(
            stencilUpdated: (updatedStencil) {
              setState(() {
                _isLoading = false;
                _isEditing = false;
              });
              
              ScaffoldMessenger.of(context).showSnackBar(
                customSnackBar(
                  content: S.of(context).stencilUpdatedSuccessfully,
                  backgroundColor: Colors.green,
                ),
              );
              
              // Immediately update the stencil data with what we got from the update response
              setState(() {
                _currentStencil = updatedStencil; // Store the complete updatedStencil object
                if (updatedStencil.title != null) _titleController.text = updatedStencil.title;
                if (updatedStencil.description != null) _descriptionController.text = updatedStencil.description ?? '';
                if (updatedStencil.isFeatured != null) _isFeatured = updatedStencil.isFeatured;
                if (updatedStencil.isHidden != null) _isHidden = updatedStencil.isHidden;
              });
              
              // Reload the stencil detail from the backend to ensure all data is fresh and consistent
              final stencil = _currentStencil ?? widget.stencil;
              context.read<ArtistStencilBloc>().add(
                ArtistStencilEvent.loadStencilDetail(stencil.id),
              );
            },
            detailLoaded: (updatedStencil) {
              // Update the state with freshly loaded stencil data
              setState(() {
                _isLoading = false; // Ensure loading indicator is hidden
                
                if (updatedStencil.id == widget.stencil.id) {
                  _currentStencil = updatedStencil;
                  _titleController.text = updatedStencil.title;
                  _descriptionController.text = updatedStencil.description ?? '';
                  _isFeatured = updatedStencil.isFeatured;
                  _isHidden = updatedStencil.isHidden;
                  
                  // Update tags as well
                  if (updatedStencil.tags != null && updatedStencil.tags!.isNotEmpty) {
                    _selectedTagIds = updatedStencil.tags!.map((tag) => tag.id).toList();
                    _selectedTagsObjects = updatedStencil.tags!
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
            stencilDeleted: () {
              ScaffoldMessenger.of(context).showSnackBar(
                customSnackBar(
                  content: S.of(context).stencilDeletedSuccessfully,
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
          if (_isLoading) {
            return const Center(child: InkerProgressIndicator());
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildStencilImage(),
                const SizedBox(height: 24),
                _isEditing ? _buildEditForm() : _buildStencilDetails(),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildStencilImage() {
    // Use the updated stencil data when available
    final stencil = _currentStencil ?? widget.stencil;
    
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
          _isEditing ? _pickImage : () => _openGallery(stencil.imageUrl),
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
                    _imageCache.buildCachedImage(
                      imageUrl: stencil.imageUrl,
                      fit: BoxFit.cover,
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
                  tag: 'stencil_image_${stencil.id}',
                  child: _imageCache.buildCachedImage(
                    imageUrl: stencil.imageUrl,
                    fit: BoxFit.cover,
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
                imageProvider: CachedNetworkImageProvider(
                  imageUrl,
                  cacheManager: CachedImageManager.customCacheManager,
                ),
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
          activeColor: secondaryColor,
          contentPadding: EdgeInsets.zero,
        ),
        SwitchListTile(
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
          activeColor: secondaryColor,
          contentPadding: EdgeInsets.zero,
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
          S.of(context).addTagsToMakeYourStencilMoreDiscoverable,
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
                    child: CircularProgressIndicator(
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
          ? Icon(Icons.check_circle, color: secondaryColor)
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
          backgroundColor: redColor,
          deleteIcon: const Icon(Icons.close, size: 16, color: Colors.white70),
          onDeleted: () => _removeTag(tag),
        );
      }).toList(),
    );
  }

  Widget _buildStencilDetails() {
    // Use the updated stencil data when available
    final stencil = _currentStencil ?? widget.stencil;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                stencil.title,
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
                  count: stencil.viewCount,
                  tooltip: S.of(context).views,
                ),
                const SizedBox(width: 16),
                _buildStatusBadge(
                  icon: Icons.favorite,
                  count: stencil.likeCount,
                  tooltip: S.of(context).likes,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 16),
        if (stencil.description != null &&
            stencil.description!.isNotEmpty) ...[
          Text(
            stencil.description!,
            style: TextStyleTheme.bodyText1.copyWith(
              color: Colors.grey.shade300,
            ),
          ),
          const SizedBox(height: 24),
        ],
        _buildInfoSection(
          S.of(context).stencilDetails,
          [
            _buildInfoItem(
              S.of(context).created,
              _formatDate(stencil.createdAt),
            ),
            _buildInfoItem(
              S.of(context).lastUpdated,
              _formatDate(stencil.updatedAt),
            ),
            _buildInfoItem(
              S.of(context).status,
              stencil.isHidden
                  ? S.of(context).hidden
                  : S.of(context).visible,
            ),
            _buildInfoItem(
              S.of(context).featured,
              stencil.isFeatured ? S.of(context).yes : S.of(context).no,
            ),
          ],
        ),
        if (stencil.tags != null && stencil.tags!.isNotEmpty) ...[
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
                stencil.tags!.map((tag) => _buildTagChip(tag)).toList(),
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
    // Use the updated stencil data when available
    final stencil = _currentStencil ?? widget.stencil;
    
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
        // Navigate to the gallery with this tag filter
        // First filter the stencils by this tag
        context.read<ArtistStencilBloc>().add(
          ArtistStencilEvent.filterStencilsByTag(tag.id),
        );
        
        // Then navigate to the gallery
        Navigator.pushNamed(
          context, 
          '/stencils/gallery',
        ).then((_) {
          // When we return, load the stencil again
          context.read<ArtistStencilBloc>().add(
            ArtistStencilEvent.loadStencilDetail(stencil.id),
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
