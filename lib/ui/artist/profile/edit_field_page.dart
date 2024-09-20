import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/domain/blocs/artist_my_profile/artist_my_profile_bloc.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

import '../../../domain/models/artist/artist.dart';

class EditFieldPage extends StatefulWidget {
  static const String routeName = '/editField';

  final String field;

  const EditFieldPage({super.key, required this.field});

  @override
  _EditFieldPageState createState() => _EditFieldPageState();
}

class _EditFieldPageState extends State<EditFieldPage> {
  late TextEditingController _controller;
  XFile? _imageFile;
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _loadInitialValue();
  }

  void _loadInitialValue() {
    final artistBloc = context.read<ArtistMyProfileBloc>();
    artistBloc.state.whenOrNull(
      loaded: (artist) {
        switch (widget.field) {
          case 'name':
            _controller.text = '${artist.firstName} ${artist.lastName}';
            break;
          case 'username':
            _controller.text = artist.username;
            break;
          case 'description':
            _controller.text = artist.shortDescription;
            break;
          case 'genres':
            _controller.text = artist.genres?.join(', ') ?? '';
            break;
          case 'tags':
            _controller.text = artist.tags?.join(', ') ?? '';
            break;
        }
      },
    );
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
        actions: [
          IconButton(
            icon: const Icon(Icons.check, color: Colors.white),
            onPressed: _saveChanges,
          ),
        ],
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
            loaded: (artist) => _buildEditForm(artist),
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
    switch (widget.field) {
      case 'profile-image':
      case 'studio-photo':
        return _buildImageForm(artist);
      default:
        return _buildTextForm();
    }
  }

  Widget _buildTextForm() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          labelText: _getFieldTitle(),
          labelStyle: TextStyleTheme.bodyText1,
        ),
        style: TextStyleTheme.bodyText1,
        maxLines: widget.field == 'description' ? null : 1,
      ),
    );
  }

  Widget _buildImageForm(Artist artist) {
    final currentImage = widget.field == 'profile-image'
        ? artist.profileThumbnail
        : artist.studioPhoto;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: _imageFile != null
              ? Image.file(File(_imageFile!.path), fit: BoxFit.cover)
              : (currentImage != null
                  ? Image.network(currentImage, fit: BoxFit.cover)
                  : Center(child: Text(S.of(context).noImageSelected))),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: _pickImage,
            style: ElevatedButton.styleFrom(
              backgroundColor: secondaryColor,
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            child:
                Text(S.of(context).chooseImage, style: TextStyleTheme.button),
          ),
        ),
      ],
    );
  }

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = pickedFile;
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
        final names = _controller.text.split(' ');
        artistBloc.add(ArtistProfileEvent.updateName(
          firstName: names.first,
          lastName: names.length > 1 ? names.sublist(1).join(' ') : '',
        ));
        break;
      case 'username':
        artistBloc.add(ArtistProfileEvent.updateUsername(_controller.text));
        break;
      case 'description':
        artistBloc.add(ArtistProfileEvent.updateDescription(_controller.text));
        break;
      case 'genres':
        artistBloc
            .add(ArtistProfileEvent.updateGenres(_controller.text.split(', ')));
        break;
      case 'tags':
        artistBloc
            .add(ArtistProfileEvent.updateTags(_controller.text.split(', ')));
        break;
      case 'profile-image':
        if (_imageFile != null) {
          artistBloc.add(ArtistProfileEvent.updateProfileImage(_imageFile!));
        }
        break;
      case 'studio-photo':
        if (_imageFile != null) {
          artistBloc.add(ArtistProfileEvent.updateStudioPhoto(_imageFile!));
        }
        break;
    }
    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
