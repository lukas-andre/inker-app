import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/domain/blocs/artist_location/artist_location_bloc.dart';
import 'package:inker_studio/domain/blocs/artist_my_profile/artist_my_profile_bloc.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/domain/services/location/location_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/artist/locations/artist_location_manager_page.dart';
import 'package:inker_studio/ui/artist/profile/profile_picture.dart';
import 'package:inker_studio/ui/shared/edit_field_page.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ArtistMyProfilePage extends StatelessWidget {
  const ArtistMyProfilePage({super.key});

  static const String kFullName = 'fullName';
  static const String kUsername = 'username';
  static const String kDescription = 'description';
  static const String kGenres = 'genres';
  static const String kTags = 'tags';
  static const String kProfileImage = 'profileImage';
  static const String kStudioPhoto = 'studioPhoto';
  static const String kEmail = 'email';
  static const String kPhone = 'phone';

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ArtistMyProfileBloc>(context);
    bloc.state.whenOrNull(
        initial: () => bloc.add(const ArtistProfileEvent.loadProfile()));

    return Scaffold(
      backgroundColor: primaryColor,
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
    return CustomScrollView(
      key: const Key('artistProfileContent'),
      slivers: [
        _buildAppBar(context, artist),
        SliverToBoxAdapter(
          child: Column(
            children: [
              _buildProfileHeader(context, artist),
              _buildQuickActions(context),
              _buildArtistStats(context, artist),
              _buildProfileDetails(context, artist),
              _buildPortfolioSection(context, artist),
              _buildStencilGallery(context),
              _buildContactInfo(context, artist),
            ],
          ),
        ),
      ],
    );
  }

  SliverAppBar _buildAppBar(BuildContext context, Artist artist) {
    return SliverAppBar(
      expandedHeight: 120.0,
      floating: false,
      pinned: true,
      backgroundColor: primaryColor.withOpacity(0.8),
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          S.of(context).myProfile,
          style: TextStyleTheme.headline2.copyWith(
            shadows: [
              Shadow(
                blurRadius: 10.0,
                color: Colors.black.withOpacity(0.5),
                offset: const Offset(2.0, 2.0),
              ),
            ],
          ),
        ),
        background: Stack(
          fit: StackFit.expand,
          children: [
            artist.studioPhoto != null && artist.studioPhoto!.isNotEmpty
                ? Image.network(
                    artist.studioPhoto!,
                    fit: BoxFit.cover,
                    color: Colors.black.withOpacity(0.5),
                    colorBlendMode: BlendMode.darken,
                  )
                : Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          secondaryColor.withOpacity(0.7),
                          primaryColor,
                        ],
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.brush,
                        size: 40,
                        color: Colors.white.withOpacity(0.3),
                      ),
                    ),
                  ),
            // Overlay gradient
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    primaryColor.withOpacity(0.8),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          key: const Key('settingsButton'),
          icon: const Icon(Icons.settings, color: Colors.white),
          onPressed: () => Navigator.pushNamed(context, '/settings'),
          tooltip: S.of(context).settings,
        ),
      ],
    );
  }

  Widget _buildQuickActions(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      decoration: BoxDecoration(
        color: HSLColor.fromColor(primaryColor).withLightness(0.2).toColor(),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: secondaryColor.withOpacity(0.3), width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildActionButton(
            context,
            icon: Icons.brush,
            label: "Add Work",
            onTap: () {},
          ),
          _buildActionButton(
            context,
            icon: Icons.image,
            label: "Add Stencil",
            onTap: () {},
          ),
          _buildActionButton(
            context,
            icon: Icons.location_on,
            label: "Location",
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: secondaryColor,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: secondaryColor.withOpacity(0.3),
                    blurRadius: 8,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Icon(icon, color: Colors.white, size: 22),
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: TextStyleTheme.caption.copyWith(
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildArtistStats(BuildContext context, Artist artist) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: HSLColor.fromColor(primaryColor).withLightness(0.15).toColor(),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade800),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildStatItem(context, "Works", "24"),
          _buildVerticalDivider(),
          _buildStatItem(context, "Stencils", "15"),
          _buildVerticalDivider(),
          _buildStatItem(context, "Clients", "18"),
        ],
      ),
    );
  }

  Widget _buildVerticalDivider() {
    return Container(
      height: 40,
      width: 1,
      color: Colors.grey.shade700,
    );
  }

  Widget _buildStatItem(BuildContext context, String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyleTheme.headline2.copyWith(
            color: secondaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyleTheme.caption.copyWith(
            color: Colors.grey.shade400,
          ),
        ),
      ],
    );
  }

  Widget _buildPortfolioSection(BuildContext context, Artist artist) {
    // Dummy data for portfolio
    final dummyPortfolio = [
      'https://images.unsplash.com/photo-1590246814288-997d61a10aa5?q=80&w=300',
      'https://images.unsplash.com/photo-1595862678508-b8107d1e0432?q=80&w=300',
      'https://images.unsplash.com/photo-1565058381756-57c69c7b51d1?q=80&w=300',
      'https://images.unsplash.com/photo-1562962230-16e4623d36e6?q=80&w=300',
    ];

    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      padding: const EdgeInsets.all(16.0),
      color: HSLColor.fromColor(primaryColor).withLightness(0.13).toColor(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Portfolio",
                style: TextStyleTheme.headline3.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add, color: secondaryColor, size: 18),
                label: Text(
                  "Add Work",
                  style: TextStyleTheme.button.copyWith(color: secondaryColor),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 180,
            child: dummyPortfolio.isEmpty
                ? _buildEmptySection(
                    context,
                    "No tattoo works added yet",
                    "Add photos of your best tattoo work to showcase your style",
                    Icons.photo_album,
                  )
                : ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: dummyPortfolio.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 150,
                        margin: const EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.network(
                                dummyPortfolio[index],
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 12),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.transparent,
                                        Colors.black.withOpacity(0.7),
                                      ],
                                    ),
                                  ),
                                  child: Text(
                                    "Work #${index + 1}",
                                    style: TextStyleTheme.caption.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildStencilGallery(BuildContext context) {
    // Dummy data for stencils
    final dummyStencils = [
      'https://images.unsplash.com/photo-1576119438483-6083d9c71637?q=80&w=300',
      'https://images.unsplash.com/photo-1554756790-9a4a63984b23?q=80&w=300',
      'https://images.unsplash.com/photo-1572328992812-378ab9c98a59?q=80&w=300',
    ];

    return Container(
      padding: const EdgeInsets.all(16.0),
      color: primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Stencil Gallery",
                style: TextStyleTheme.headline3.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add, color: secondaryColor, size: 18),
                label: Text(
                  "Add Stencil",
                  style: TextStyleTheme.button.copyWith(color: secondaryColor),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 180,
            child: dummyStencils.isEmpty
                ? _buildEmptySection(
                    context,
                    "No stencils added yet",
                    "Add your stencil designs to showcase your style",
                    Icons.brush,
                  )
                : GridView.builder(
                    scrollDirection: Axis.horizontal,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1.0,
                    ),
                    itemCount: dummyStencils.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.grey.shade700,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.network(
                                dummyStencils[index],
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 12),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.transparent,
                                        Colors.black.withOpacity(0.7),
                                      ],
                                    ),
                                  ),
                                  child: Text(
                                    "Stencil #${index + 1}",
                                    style: TextStyleTheme.caption.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptySection(
    BuildContext context,
    String title,
    String description,
    IconData icon,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade800),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 40,
                color: Colors.grey.shade600,
              ),
              const SizedBox(height: 16),
              Text(
                title,
                style: TextStyleTheme.subtitle1.copyWith(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: TextStyleTheme.caption.copyWith(
                  color: Colors.grey.shade500,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContactInfo(BuildContext context, Artist artist) {
    return Container(
      key: const Key('artistProfileContactInfo'),
      color: HSLColor.fromColor(primaryColor).withLightness(0.1).toColor(),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).contactInformation,
            style: TextStyleTheme.headline3.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          _buildInfoTile(
            context: context,
            icon: Icons.email,
            label: S.of(context).email,
            value: artist.contact?.email ?? '',
            onTap: () => _navigateToEditField(
              context,
              EditFieldArguments(
                type: EditFieldType.text,
                initialValue: artist.contact?.email ?? '',
                label: S.of(context).email,
                labelKey: kEmail,
              ),
            ),
          ),
          const SizedBox(height: 8),
          _buildInfoTile(
            context: context,
            icon: Icons.phone,
            label: S.of(context).phone,
            value: artist.contact?.phone ?? '',
            onTap: () => _navigateToEditField(
              context,
              EditFieldArguments(
                type: EditFieldType.text,
                initialValue: artist.contact?.phone ?? '',
                label: S.of(context).phone,
                labelKey: kPhone,
              ),
            ),
          ),
          const SizedBox(height: 16),
          _buildManageLocationsButton(context, artist),
        ],
      ),
    );
  }
  
  Widget _buildInfoTile({
    required BuildContext context,
    required IconData icon,
    required String label,
    required String value,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: HSLColor.fromColor(primaryColor).withLightness(0.15).toColor(),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade800),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: secondaryColor.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: secondaryColor, size: 20),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: TextStyleTheme.caption.copyWith(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  Text(
                    value.isEmpty ? "Not set" : value,
                    style: TextStyleTheme.bodyText2.copyWith(
                      color: value.isEmpty ? Colors.grey.shade600 : Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.edit, color: Colors.grey.shade600, size: 16),
          ],
        ),
      ),
    );
  }
  
  Widget _buildManageLocationsButton(BuildContext context, Artist artist) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: () => _navigateToLocationManager(context, artist),
        icon: const Icon(Icons.location_on),
        label: Text(S.of(context).manageLocations),
        style: ElevatedButton.styleFrom(
          backgroundColor: secondaryColor,
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
  
  void _navigateToLocationManager(BuildContext context, Artist artist) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => ArtistLocationBloc(
            context.read<LocationService>(),
            context.read<LocalSessionService>(),
          ),
          child: ArtistLocationManagerPage(artistId: artist.id),
        ),
      ),
    );
  }

  Widget _buildProfileHeader(BuildContext context, Artist artist) {
    return Padding(
      key: const Key('artistProfileHeader'),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => _navigateToEditField(
              context,
              EditFieldArguments(
                type: EditFieldType.image,
                initialValue: artist.profileThumbnail,
                label: S.of(context).profileImage,
                labelKey: kProfileImage,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: secondaryColor, width: 3),
                    boxShadow: [
                      BoxShadow(
                        color: secondaryColor.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.grey.shade800,
                    backgroundImage: artist.profileThumbnail != null && artist.profileThumbnail!.isNotEmpty
                        ? NetworkImage(artist.profileThumbnail!)
                        : null,
                    child: artist.profileThumbnail == null || artist.profileThumbnail!.isEmpty
                        ? Icon(
                            Icons.person,
                            size: 60,
                            color: Colors.grey.shade500,
                          )
                        : null,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      shape: BoxShape.circle,
                      border: Border.all(color: primaryColor, width: 2),
                    ),
                    child: const Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Text(
            '${artist.firstName} ${artist.lastName}',
            style: TextStyleTheme.headline1.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          if (artist.username != null && artist.username!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                '@${artist.username}',
                style: TextStyleTheme.subtitle1.copyWith(
                  color: Colors.grey.shade400,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          if (artist.shortDescription != null && artist.shortDescription!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Text(
                artist.shortDescription!,
                style: TextStyleTheme.bodyText1.copyWith(
                  color: Colors.grey.shade300,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildProfileDetails(BuildContext context, Artist artist) {
    return Container(
      key: const Key('artistProfileDetails'),
      color: primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "About Me",
                  style: TextStyleTheme.headline3.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.edit, color: secondaryColor, size: 20),
                  onPressed: () => _navigateToEditField(
                    context,
                    EditFieldArguments(
                      type: EditFieldType.text,
                      initialValue: artist.shortDescription,
                      label: S.of(context).shortDescription,
                      labelKey: kDescription,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: HSLColor.fromColor(primaryColor).withLightness(0.15).toColor(),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade800),
              ),
              child: Text(
                artist.shortDescription ?? "Add a short description about yourself and your tattoo style...",
                style: TextStyleTheme.bodyText1.copyWith(
                  color: artist.shortDescription != null ? Colors.white : Colors.grey.shade600,
                  fontStyle: artist.shortDescription != null ? FontStyle.normal : FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              S.of(context).studioPhoto,
              style: TextStyleTheme.headline3.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            _buildStudioPhoto(context, artist),
          ],
        ),
      ),
    );
  }

  Widget _buildStudioPhoto(BuildContext context, Artist artist) {
    return GestureDetector(
      key: const Key('artistProfileStudioPhoto'),
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
          color: HSLColor.fromColor(primaryColor).withLightness(0.15).toColor(),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade800),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: artist.studioPhoto != null && artist.studioPhoto!.isNotEmpty
            ? Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      artist.studioPhoto!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 12,
                    right: 12,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Icon(Icons.edit, color: Colors.white, size: 20),
                    ),
                  ),
                ],
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.store_mall_directory,
                      size: 48,
                      color: Colors.grey.shade600,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      S.of(context).noStudioPhotoAvailable,
                      style: TextStyleTheme.subtitle1.copyWith(
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.w500,
                      ),
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
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        textStyle: TextStyleTheme.button.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
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
        case kEmail:
          bloc.add(ArtistProfileEvent.updateEmail(result.value as String));
          break;
        case kPhone:
          bloc.add(ArtistProfileEvent.updatePhone(result.value as String));
          break;
      }
    }
  }
}
