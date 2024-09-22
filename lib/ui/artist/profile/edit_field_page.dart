import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import 'package:inker_studio/domain/blocs/artist_my_profile/artist_my_profile_bloc.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class EditFieldPage extends StatefulWidget {
  static const String routeName = '/editField';

  final String field;

  const EditFieldPage({Key? key, required this.field}) : super(key: key);

  @override
  _EditFieldPageState createState() => _EditFieldPageState();
}

class _EditFieldPageState extends State<EditFieldPage> {
  late TextEditingController _controller;
  XFile? _imageFile;
  bool _isNewImageSelected = false;
  bool _hasChanges = false;
  String _initialText = '';
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _loadInitialValue();
    _controller.addListener(_onTextChanged);
  }

  void _loadInitialValue() {
    final artistBloc = context.read<ArtistMyProfileBloc>();
    artistBloc.state.whenOrNull(
      loaded: (artist) {
        switch (widget.field) {
          case 'name':
            _controller.text = '${artist.firstName} ${artist.lastName}';
            _initialText = _controller.text;
            break;
          case 'username':
            _controller.text = artist.username;
            _initialText = _controller.text;
            break;
          case 'description':
            _controller.text = artist.shortDescription ?? '';
            _initialText = _controller.text;
            break;
          case 'genres':
            _controller.text = artist.genres?.join(', ') ?? '';
            _initialText = _controller.text;
            break;
          case 'tags':
            _controller.text = artist.tags?.join(', ') ?? '';
            _initialText = _controller.text;
            break;
          default:
            break;
        }
      },
    );
  }

  void _onTextChanged() {
    setState(() {
      _hasChanges = _controller.text.trim() != _initialText.trim();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          '${S.of(context).edit} ${_getFieldTitle()}',
          style: TextStyleTheme.headline2,
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: BlocConsumer<ArtistMyProfileBloc, ArtistProfileState>(
        listener: (context, state) {
          state.maybeWhen(
            error: (message) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message)),
            ),
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: InkerProgressIndicator()),
            loading: () => const Center(child: InkerProgressIndicator()),
            loaded: (artist) => Column(
              children: [
                Expanded(child: _buildEditForm(artist)),
                _buildBottomButtons(artist),
              ],
            ),
            error: (message) => Center(
              child: Text('${S.of(context).error}: $message',
                  style: TextStyleTheme.headline2),
            ),
          );
        },
      ),
    );
  }

  Widget _buildEditForm(Artist artist) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: widget.field == 'profile-image' || widget.field == 'studio-photo'
          ? _buildImageForm(artist)
          : _buildTextForm(),
    );
  }

  Widget _buildImageForm(Artist artist) {
    final currentImage = widget.field == 'profile-image'
        ? artist.profileThumbnail
        : artist.studioPhoto;

    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: _buildImageContent(currentImage),
      ),
    );
  }

  Widget _buildImageContent(String? currentImage) {
    return Center(
      child: _isNewImageSelected && _imageFile != null
          ? Image.file(
              File(_imageFile!.path),
              fit: BoxFit.contain,
            )
          : currentImage != null
              ? Image.network(
                  currentImage,
                  fit: BoxFit.contain,
                )
              : Container(
                  color: Colors.grey[200],
                  child: Center(
                    child: Text(
                      S.of(context).noImageSelected,
                      style: TextStyleTheme.bodyText1,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
    );
  }

  Widget _buildTextForm() {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        labelText: _getFieldTitle(),
        labelStyle: TextStyleTheme.bodyText1,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        filled: true,
        fillColor: primaryColor,
      ),
      style: TextStyleTheme.bodyText1,
      maxLines: widget.field == 'description' ? null : 1,
    );
  }

  Widget _buildBottomButtons(Artist artist) {
    final isImageField =
        widget.field == 'profile-image' || widget.field == 'studio-photo';
    final currentImage = isImageField
        ? (widget.field == 'profile-image'
            ? artist.profileThumbnail
            : artist.studioPhoto)
        : null;

    return Container(
      color: primaryColor,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isImageField) ...[
            if (_isNewImageSelected)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      _imageFile = null;
                      _isNewImageSelected = false;
                      _hasChanges = true; // Deleting is a change
                    });
                  },
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
                  _isNewImageSelected
                      ? S.of(context).changeSelection
                      : (currentImage != null
                          ? S.of(context).changeImage
                          : S.of(context).chooseImage),
                  style: TextStyleTheme.button.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
          if (isImageField && (_isNewImageSelected || _hasChanges))
            const SizedBox(height: 8.0),
          if (!isImageField && _hasChanges) const SizedBox(height: 8.0),
          if (_hasChanges)
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

  String _getFieldTitle() {
    switch (widget.field) {
      case 'name':
        return S.of(context).fullName;
      case 'username':
        return S.of(context).username;
      case 'description':
        return S.of(context).shortDescription;
      case 'genres':
        return S.of(context).genres;
      case 'tags':
        return S.of(context).tags;
      case 'profile-image':
        return S.of(context).profileImage;
      case 'studio-photo':
        return S.of(context).studioPhoto;
      default:
        return widget.field;
    }
  }

  void _saveChanges() {
    final artistBloc = context.read<ArtistMyProfileBloc>();
    switch (widget.field) {
      case 'name':
        final names = _controller.text.trim().split(' ');
        artistBloc.add(ArtistProfileEvent.updateName(
          firstName: names.first,
          lastName: names.length > 1 ? names.sublist(1).join(' ') : '',
        ));
        break;
      case 'username':
        artistBloc
            .add(ArtistProfileEvent.updateUsername(_controller.text.trim()));
        break;
      case 'description':
        artistBloc
            .add(ArtistProfileEvent.updateDescription(_controller.text.trim()));
        break;
      case 'genres':
        artistBloc.add(ArtistProfileEvent.updateGenres(
            _controller.text.split(',').map((s) => s.trim()).toList()));
        break;
      case 'tags':
        artistBloc.add(ArtistProfileEvent.updateTags(
            _controller.text.split(',').map((s) => s.trim()).toList()));
        break;
      case 'profile-image':
        if (_isNewImageSelected && _imageFile != null) {
          artistBloc.add(ArtistProfileEvent.updateProfileImage(_imageFile!));
        }
        break;
      case 'studio-photo':
        if (_isNewImageSelected && _imageFile != null) {
          artistBloc.add(ArtistProfileEvent.updateStudioPhoto(_imageFile!));
        }
        break;
      default:
        break;
    }
    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _controller.removeListener(_onTextChanged);
    _controller.dispose();
    super.dispose();
  }
}
