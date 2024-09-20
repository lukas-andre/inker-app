import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist_my_profile/artist_my_profile_bloc.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/domain/services/artist/artist_service.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/constants.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:inker_studio/generated/l10n.dart';

class ArtistProfilePage extends StatelessWidget {
  const ArtistProfilePage({Key? key}) : super(key: key);
  void _showSettingsModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: primaryColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.0)),
      ),
      builder: (context) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: const Icon(Icons.edit, color: Colors.white),
                title: Text(
                  S.of(context).editProfile,
                  style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                  // Navegar a la página de edición de perfil
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings, color: Colors.white),
                title: Text(
                  S.of(context).settings,
                  style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                  // Navegar a la página de ajustes
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout, color: Colors.redAccent),
                title: Text(
                  S.of(context).logout,
                  style: TextStyleTheme.bodyText1
                      .copyWith(color: Colors.redAccent),
                ),
                onTap: () {
                  Navigator.pop(context);
                  // Acción de cerrar sesión
                },
              ),
              ListTile(
                leading: const Icon(Icons.delete_forever, color: Colors.red),
                title: Text(
                  S.of(context).deleteAccount,
                  style: TextStyleTheme.bodyText1.copyWith(color: Colors.red),
                ),
                onTap: () {
                  Navigator.pop(context);
                  _confirmDeleteAccount(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _confirmDeleteAccount(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: primaryColor,
            title: Text(
              S.of(context).confirmDeletion,
              style: TextStyleTheme.headline2.copyWith(color: Colors.white),
            ),
            content: Text(
              S.of(context).confirmDeletionMessage,
              style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
            ),
            actions: [
              TextButton(
                child: Text(
                  S.of(context).cancel,
                  style: TextStyleTheme.button.copyWith(color: secondaryColor),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: Text(
                  S.of(context).delete,
                  style: TextStyleTheme.button.copyWith(color: Colors.red),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                  // Acción de eliminar cuenta
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ArtistProfileBloc(context.read<ArtistService>())
        ..add(const ArtistProfileEvent.loadProfile()),
      child: Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          title: Text(
            S.of(context).myProfile,
            style: TextStyleTheme.headline2.copyWith(color: Colors.white),
          ),
          backgroundColor: primaryColor,
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(Icons.settings, color: Colors.white),
              onPressed: () => _showSettingsModal(context),
            ),
          ],
        ),
        body: BlocBuilder<ArtistProfileBloc, ArtistProfileState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: InkerProgressIndicator()),
              loading: () => const Center(child: InkerProgressIndicator()),
              loaded: (artist) => _buildProfileContent(context, artist),
              error: (message) => Center(
                child: Text(
                  '${S.of(context).error}: $message',
                  style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildProfileContent(BuildContext context, Artist artist) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildHeader(context, artist),
          _buildDescription(context, artist),
          _buildStats(context, artist),
          _buildGenres(context, artist),
          _buildEditButton(context),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context, Artist artist) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: explorerSecondaryColor,
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
                artist.profileThumbnail ?? defaultProfileImageLink),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${artist.firstName} ${artist.lastName}',
                  style: TextStyleTheme.headline2.copyWith(color: Colors.white),
                ),
                Text(
                  '@${artist.username}',
                  style:
                      TextStyleTheme.bodyText1.copyWith(color: tertiaryColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDescription(BuildContext context, Artist artist) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        artist.shortDescription.isNotEmpty
            ? artist.shortDescription
            : S.of(context).addDescription,
        style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
      ),
    );
  }

  Widget _buildStats(BuildContext context, Artist artist) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      color: explorerSecondaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildStatItem(context, Icons.people, artist.followers.toString(),
              S.of(context).followers),
          _buildStatItem(context, Icons.person_add, artist.follows.toString(),
              S.of(context).following),
          _buildStatItem(
              context,
              Icons.star,
              artist.rating > 0
                  ? artist.rating.toStringAsFixed(1)
                  : S.of(context).noReviewsYet,
              S.of(context).rating),
        ],
      ),
    );
  }

  Widget _buildStatItem(
      BuildContext context, IconData icon, String value, String label) {
    return Column(
      children: [
        Icon(icon, color: secondaryColor),
        const SizedBox(height: 4),
        Text(
          value,
          style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
        ),
        Text(
          label,
          style: TextStyleTheme.caption.copyWith(color: tertiaryColor),
        ),
      ],
    );
  }

  Widget _buildGenres(BuildContext context, Artist artist) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: (artist.genres ?? []).map((genre) {
          return Chip(
            label: Text(genre),
            backgroundColor: secondaryColor.withOpacity(0.2),
            labelStyle: TextStyleTheme.caption.copyWith(color: Colors.white),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildEditButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: secondaryColor,
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {},
        child: Text(
          S.of(context).editProfile,
          style: TextStyleTheme.button.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
