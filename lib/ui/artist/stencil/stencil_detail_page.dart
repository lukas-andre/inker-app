import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/domain/blocs/artist_stencil/artist_stencil_bloc.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/snackbar/custom_snackbar.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class StencilDetailPage extends StatefulWidget {
  final Stencil stencil;

  const StencilDetailPage({Key? key, required this.stencil}) : super(key: key);

  @override
  State<StencilDetailPage> createState() => _StencilDetailPageState();
}

class _StencilDetailPageState extends State<StencilDetailPage> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  bool _isEditing = false;
  bool _isFeatured = false;
  bool _isHidden = false;
  XFile? _selectedImage;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _titleController.text = widget.stencil.title;
    _descriptionController.text = widget.stencil.description ?? '';
    _isFeatured = widget.stencil.isFeatured;
    _isHidden = widget.stencil.isHidden;

    // Record a view when the detail page is opened
    context.read<ArtistStencilBloc>().add(
          ArtistStencilEvent.recordView(widget.stencil.id),
        );
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
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
              stencilId: widget.stencil.id,
              title: _titleController.text,
              description: _descriptionController.text,
              isFeatured: _isFeatured,
              isHidden: _isHidden,
              imageFile: _selectedImage,
            ),
          );
    }

    setState(() {
      _isEditing = !_isEditing;
    });
  }

  void _deleteStencil() {
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
                      ArtistStencilEvent.deleteStencil(widget.stencil.id),
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
            : S.of(context).stencilDetails),
        backgroundColor: primaryColor,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(_isEditing ? Icons.check : Icons.edit),
            onPressed: _toggleEditing,
            tooltip: _isEditing ? S.of(context).save : S.of(context).edit,
          ),
          if (!_isEditing)
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: _deleteStencil,
              tooltip: S.of(context).delete,
            ),
        ],
      ),
      body: BlocConsumer<ArtistStencilBloc, ArtistStencilState>(
        listener: (context, state) {
          state.maybeWhen(
            stencilUpdated: (_) {
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
            error: (message) {
              setState(() {
                _isLoading = false;
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
          _isEditing ? _pickImage : () => _openGallery(widget.stencil.imageUrl),
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
                      widget.stencil.imageUrl,
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
                            Icon(
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
                  tag: 'stencil_image_${widget.stencil.id}',
                  child: Image.network(
                    widget.stencil.imageUrl,
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

  Widget _buildStencilDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                widget.stencil.title,
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
                  count: widget.stencil.viewCount,
                  tooltip: S.of(context).views,
                ),
                const SizedBox(width: 16),
                _buildStatusBadge(
                  icon: Icons.favorite,
                  count: widget.stencil.likeCount,
                  tooltip: S.of(context).likes,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 16),
        if (widget.stencil.description != null &&
            widget.stencil.description!.isNotEmpty) ...[
          Text(
            widget.stencil.description!,
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
              S.of(context).source,
              widget.stencil.source == StencilSource.app ? 'App' : 'External',
            ),
            _buildInfoItem(
              S.of(context).created,
              _formatDate(widget.stencil.createdAt),
            ),
            _buildInfoItem(
              S.of(context).lastUpdated,
              _formatDate(widget.stencil.updatedAt),
            ),
            _buildInfoItem(
              S.of(context).status,
              widget.stencil.isHidden
                  ? S.of(context).hidden
                  : S.of(context).visible,
            ),
            _buildInfoItem(
              S.of(context).featured,
              widget.stencil.isFeatured ? S.of(context).yes : S.of(context).no,
            ),
          ],
        ),
        if (widget.stencil.tags != null && widget.stencil.tags!.isNotEmpty) ...[
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
                widget.stencil.tags!.map((tag) => _buildTagChip(tag)).toList(),
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
    return Container(
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
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
