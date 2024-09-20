import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist_my_profile/artist_my_profile_bloc.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/constants.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ArtistProfilePage extends StatelessWidget {
  static const String routeName = '/artistProfile';

  const ArtistProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ArtistMyProfileBloc>(context);
    bloc.state.whenOrNull(
        initial: () => bloc.add(const ArtistProfileEvent.loadProfile()));

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(S.of(context).myProfile, style: TextStyleTheme.headline1),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () => Navigator.of(context).pushNamed('/settings'),
          ),
        ],
      ),
      body: BlocBuilder<ArtistMyProfileBloc, ArtistProfileState>(
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
    return ListView(
      children: [
        _buildProfileImage(context, artist),
        _buildListTile(
          context,
          icon: Icons.person,
          title: '${artist.firstName} ${artist.lastName}',
          subtitle: S.of(context).fullName,
          onTap: () => _navigateToEditField(context, 'name'),
        ),
        _buildListTile(
          context,
          icon: Icons.alternate_email,
          title: artist.username,
          subtitle: S.of(context).username,
          onTap: () => _navigateToEditField(context, 'username'),
        ),
        _buildListTile(
          context,
          icon: Icons.description,
          title: artist.shortDescription,
          subtitle: S.of(context).shortDescription,
          onTap: () => _navigateToEditField(context, 'description'),
        ),
        _buildListTile(
          context,
          icon: Icons.category,
          title: artist.genres?.join(', ') ?? '',
          subtitle: S.of(context).genres,
          onTap: () => _navigateToEditField(context, 'genres'),
        ),
        _buildListTile(
          context,
          icon: Icons.label,
          title: artist.tags?.join(', ') ?? '',
          subtitle: S.of(context).tags,
          onTap: () => _navigateToEditField(context, 'tags'),
        ),
        _buildStatistics(context, artist),
        _buildListTile(
          context,
          icon: Icons.photo_camera,
          title: S.of(context).studioPhoto,
          subtitle: artist.studioPhoto != null
              ? S.of(context).updateStudioPhoto
              : S.of(context).addStudioPhoto,
          onTap: () => _navigateToEditField(context, 'studio-photo'),
        ),
      ],
    );
  }

  void _navigateToEditField(BuildContext context, String field) {
    Navigator.of(context).pushNamed('/editField', arguments: {'field': field});
  }

  Widget _buildProfileImage(BuildContext context, Artist artist) {
    return GestureDetector(
      onTap: () => _navigateToEditField(context, 'profile-image'),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                artist.profileThumbnail ?? defaultProfileImageLink),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 16,
              right: 16,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.edit, color: Theme.of(context).primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title, style: TextStyleTheme.bodyText1),
      subtitle: Text(subtitle,
          style: TextStyleTheme.caption.copyWith(color: Colors.grey)),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }

  Widget _buildStatistics(BuildContext context, Artist artist) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildStatItem(
              context, S.of(context).followers, artist.followers.toString()),
          _buildStatItem(
              context, S.of(context).following, artist.follows.toString()),
          _buildStatItem(
              context, S.of(context).rating, artist.rating.toStringAsFixed(1)),
        ],
      ),
    );
  }

  Widget _buildStatItem(BuildContext context, String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyleTheme.headline2,
        ),
        Text(
          label,
          style: TextStyleTheme.caption,
        ),
      ],
    );
  }
}
