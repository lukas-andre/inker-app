import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/domain/blocs/artist_my_profile/artist_my_profile_bloc.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/artist/profile/profile_picture.dart';
import 'package:inker_studio/ui/shared/edit_field_page.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ArtistMyProfilePage extends StatelessWidget {
  const ArtistMyProfilePage({super.key});

  // Constantes para labelKey
  static const String kFullName = 'fullName';
  static const String kUsername = 'username';
  static const String kDescription = 'description';
  static const String kGenres = 'genres';
  static const String kTags = 'tags';
  static const String kProfileImage = 'profileImage';
  static const String kStudioPhoto = 'studioPhoto';

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ArtistMyProfileBloc>(context);
    bloc.state.whenOrNull(
        initial: () => bloc.add(const ArtistProfileEvent.loadProfile()));

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          S.of(context).myProfile,
          style: TextStyleTheme.headline2,
        ),
        elevation: 0,
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
            loaded: (artist) => _buildProfileContent(context, artist),
            error: (message) => Center(
              child: Text('${S.of(context).error}: $message',
                  style: TextStyleTheme.headline2),
            ),
          );
        },
      ),
    );
  }

  Widget _buildProfileContent(BuildContext context, Artist artist) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildProfileHeader(context, artist),
          _buildProfileDetails(context, artist),
        ],
      ),
    );
  }

  Widget _buildProfileHeader(BuildContext context, Artist artist) {
    return GestureDetector(
      onTap: () => _navigateToEditField(
        context,
        EditFieldArguments(
          type: EditFieldType.image,
          initialValue: artist.profileThumbnail,
          label: S.of(context).profileImage,
          labelKey: kProfileImage,
        ),
      ),
      child: ProfileImage(
        imageUrl: artist.profileThumbnail ?? '',
        onTap: () => _navigateToEditField(
          context,
          EditFieldArguments(
            type: EditFieldType.image,
            initialValue: artist.profileThumbnail,
            label: S.of(context).profileImage,
            labelKey: kProfileImage,
          ),
        ),
      ),
    );
  }

  Widget _buildProfileDetails(BuildContext context, Artist artist) {
    return Container(
      color: primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildEditableField(
              context: context,
              label: S.of(context).fullName,
              value: '${artist.firstName} ${artist.lastName}',
              onTap: () => _navigateToEditField(
                context,
                EditFieldArguments(
                  type: EditFieldType.text,
                  initialValue: '${artist.firstName} ${artist.lastName}',
                  label: S.of(context).fullName,
                  labelKey: kFullName,
                ),
              ),
            ),
            _buildEditableField(
              context: context,
              label: S.of(context).username,
              value: artist.username,
              onTap: () => _navigateToEditField(
                context,
                EditFieldArguments(
                  type: EditFieldType.text,
                  initialValue: artist.username,
                  label: S.of(context).username,
                  labelKey: kUsername,
                ),
              ),
            ),
            _buildEditableField(
              context: context,
              label: S.of(context).shortDescription,
              value: artist.shortDescription ?? '',
              onTap: () => _navigateToEditField(
                context,
                EditFieldArguments(
                  type: EditFieldType.text,
                  initialValue: artist.shortDescription,
                  label: S.of(context).shortDescription,
                  labelKey: kDescription,
                ),
              ),
            ),
            _buildEditableField(
              context: context,
              label: S.of(context).genres,
              value: artist.genres?.join(', ') ?? '',
              onTap: () => _navigateToEditField(
                context,
                EditFieldArguments(
                  type: EditFieldType.text,
                  initialValue: artist.genres?.join(', ') ?? '',
                  label: S.of(context).genres,
                  labelKey: kGenres,
                ),
              ),
            ),
            _buildEditableField(
              context: context,
              label: S.of(context).tags,
              value: artist.tags?.join(', ') ?? '',
              onTap: () => _navigateToEditField(
                context,
                EditFieldArguments(
                  type: EditFieldType.text,
                  initialValue: artist.tags?.join(', ') ?? '',
                  label: S.of(context).tags,
                  labelKey: kTags,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(S.of(context).studioPhoto, style: TextStyleTheme.headline3),
            const SizedBox(height: 8),
            _buildStudioPhoto(context, artist),
          ],
        ),
      ),
    );
  }

  Widget _buildEditableField({
    required BuildContext context,
    required String label,
    required String value,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyleTheme.headline3),
          const SizedBox(height: 4),
          InkWell(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade600),
                borderRadius: BorderRadius.circular(4.0),
                color: primaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(value, style: TextStyleTheme.bodyText1),
                  ),
                  const Icon(Icons.edit, color: Colors.grey),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStudioPhoto(BuildContext context, Artist artist) {
    return GestureDetector(
      onTap: () => _navigateToEditField(
        context,
        EditFieldArguments(
          type: EditFieldType.image,
          initialValue: artist.studioPhoto,
          label: S.of(context).studioPhoto,
          labelKey: kStudioPhoto,
        ),
      ),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: Colors.grey[800], // Un color de fondo oscuro para consistencia
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: artist.studioPhoto != null && artist.studioPhoto!.isNotEmpty
            ? Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      artist.studioPhoto!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child:
                          const Icon(Icons.edit, color: Colors.white, size: 20),
                    ),
                  ),
                ],
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.image_not_supported,
                      size: 48,
                      color: Colors.grey[400],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      S.of(context).noStudioPhotoAvailable,
                      style: TextStyleTheme.bodyText1
                          .copyWith(color: Colors.grey[400]),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton.icon(
                      onPressed: () => _navigateToEditField(
                        context,
                        EditFieldArguments(
                          type: EditFieldType.image,
                          initialValue: artist.studioPhoto,
                          label: S.of(context).studioPhoto,
                          labelKey: kStudioPhoto,
                        ),
                      ),
                      icon: const Icon(Icons.add_a_photo),
                      label: Text(S.of(context).addStudioPhoto),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: secondaryColor,
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }

  Future<void> _navigateToEditField(
    BuildContext context,
    EditFieldArguments arguments,
  ) async {
    final result = await Navigator.push<EditFieldResult>(
      context,
      MaterialPageRoute(
        builder: (context) => EditFieldPage(arguments: arguments),
      ),
    );

    if (result != null) {
      final bloc = context.read<ArtistMyProfileBloc>();
      switch (result.labelKey) {
        case kFullName:
          final names = (result.value as String).split(' ');
          bloc.add(ArtistProfileEvent.updateName(
            firstName: names.first,
            lastName: names.length > 1 ? names.sublist(1).join(' ') : '',
          ));
          break;
        case kUsername:
          bloc.add(ArtistProfileEvent.updateUsername(result.value as String));
          break;
        case kDescription:
          bloc.add(
              ArtistProfileEvent.updateDescription(result.value as String));
          break;
        case kGenres:
          bloc.add(ArtistProfileEvent.updateGenres((result.value as String)
              .split(',')
              .map((s) => s.trim())
              .toList()));
          break;
        case kTags:
          bloc.add(ArtistProfileEvent.updateTags((result.value as String)
              .split(',')
              .map((s) => s.trim())
              .toList()));
          break;
        case kProfileImage:
          if (result.value != null) {
            bloc.add(
                ArtistProfileEvent.updateProfileImage(result.value as XFile));
          }
          break;
        case kStudioPhoto:
          if (result.value != null) {
            bloc.add(
                ArtistProfileEvent.updateStudioPhoto(result.value as XFile));
          }
          break;
      }
    }
  }
}
