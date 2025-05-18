import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/data/api/work/dtos/work_dto.dart' as work_dto;
import 'package:inker_studio/domain/blocs/artist_location/artist_location_bloc.dart';
import 'package:inker_studio/domain/blocs/artist_my_profile/artist_my_profile_bloc.dart';
import 'package:inker_studio/domain/blocs/artist_stencil/artist_stencil_bloc.dart';
import 'package:inker_studio/domain/blocs/artist_work/artist_work_bloc.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/domain/services/location/location_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/domain/services/stencil/stencil_service.dart';
import 'package:inker_studio/domain/services/work/work_service.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/keys.dart';
import 'package:inker_studio/test_utils/register_keys.dart';
import 'package:inker_studio/ui/artist/locations/artist_location_manager_page.dart';
import 'package:inker_studio/ui/shared/edit_field_page.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/image/cached_image_manager.dart';

class ArtistMyProfilePage extends StatefulWidget {
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
  State<ArtistMyProfilePage> createState() => _ArtistMyProfilePageState();
}

class _ArtistMyProfilePageState extends State<ArtistMyProfilePage>
    with AutomaticKeepAliveClientMixin {
  final _imageCache = CachedImageManager();

  @override
  void initState() {
    super.initState();
    final bloc = context.read<ArtistMyProfileBloc>();
    bloc.add(const ArtistProfileEvent.loadProfile());

    // Precargar la imagen de perfil y las imágenes críticas
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final artistBloc = context.read<ArtistMyProfileBloc>();
      final state = artistBloc.state;

      // Si el perfil ya está cargado, precargamos sus imágenes
      state.maybeWhen(
        loaded: (artist) {
          if (artist.profileThumbnail != null &&
              artist.profileThumbnail!.isNotEmpty) {
            _imageCache.preloadCriticalImages(
              context,
              profileImageUrl: artist.profileThumbnail,
              // Podríamos agregar otras imágenes importantes aquí si existen
              additionalUrls: null,
            );
          }
        },
        orElse: () {},
      );
    });
  }

  @override
  bool get wantKeepAlive => true;

  Future<void> _refreshProfile() async {
    final bloc = context.read<ArtistMyProfileBloc>();
    bloc.add(const ArtistProfileEvent.loadProfile());
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
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
    return RefreshIndicator(
      onRefresh: _refreshProfile,
      color: Theme.of(context).colorScheme.secondary,
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: CustomScrollView(
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
                _buildPortfolioSection(artist),
                _buildStencilGallery(),
                _buildContactInfo(context, artist),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SliverAppBar _buildAppBar(BuildContext context, Artist artist) {
    return SliverAppBar(
      expandedHeight: 120.0,
      floating: false,
      pinned: true,
      backgroundColor: Theme.of(context).colorScheme.surface.withOpacity(0.8),
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          key: registerKeys.myProfile.myProfileTitle,
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
                          Theme.of(context)
                              .colorScheme
                              .secondary
                              .withOpacity(0.7),
                          Theme.of(context).colorScheme.surface,
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
                    Theme.of(context).colorScheme.surface.withOpacity(0.8),
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
        color: HSLColor.fromColor(Theme.of(context).colorScheme.surface)
            .withLightness(0.2)
            .toColor(),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
            width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildActionButton(
            context,
            icon: Icons.brush,
            label: S.of(context).addWork,
            onTap: () => _navigateToAddWork(context),
            key: registerKeys.workDetail.addWorkButton,
          ),
          _buildActionButton(
            context,
            icon: Icons.image,
            label: S.of(context).addStencil,
            onTap: () => _navigateToAddStencil(context),
          ),
          _buildActionButton(
            context,
            icon: Icons.location_on,
            label: S.of(context).location,
            onTap: () => _navigateToLocationManager(context),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onTap,
    Key? key,
  }) {
    return InkWell(
      key: key,
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
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context)
                        .colorScheme
                        .secondary
                        .withOpacity(0.3),
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

  void _navigateToAddWork(BuildContext context) {
    // Navigate to the dedicated work add page
    Navigator.pushNamed(context, '/works/add');
  }

  void _navigateToAddStencil(BuildContext context) {
    // Simply navigate to the route, our updated route handler will handle the bloc
    Navigator.pushNamed(context, '/stencils/add');
  }

  Widget _buildArtistStats(BuildContext context, Artist artist) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: HSLColor.fromColor(Theme.of(context).colorScheme.surface)
            .withLightness(0.15)
            .toColor(),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade800),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildStatItem(context, S.of(context).works,
              artist.worksCount?.toString() ?? '0'),
          _buildVerticalDivider(),
          _buildStatItem(context, S.of(context).stencils,
              artist.stencilsCount?.toString() ?? '0'),
          _buildVerticalDivider(),
          _buildStatItem(
              context, S.of(context).followers, artist.followers.toString()),
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
            color: Theme.of(context).colorScheme.secondary,
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

  Widget _buildPortfolioSection(Artist artist) {
    return BlocProvider(
      create: (context) {
        final sessionService = context.read<LocalSessionService>();
        final workBloc = ArtistWorkBloc(
          context.read<WorkService>(),
          sessionService,
        );
        workBloc.add(const ArtistWorkEvent.loadWorks());
        return workBloc;
      },
      child: BlocBuilder<ArtistWorkBloc, ArtistWorkState>(
        builder: (context, state) {
          return Container(
            margin: const EdgeInsets.only(top: 16.0),
            padding: const EdgeInsets.all(16.0),
            color: HSLColor.fromColor(Theme.of(context).colorScheme.surface)
                .withLightness(0.13)
                .toColor(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        key: registerKeys.myProfile.worksTitle,
                        S.of(context).works,
                        style: TextStyleTheme.headline3.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Botón más compacto para "Add Work"
                        IconButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/works/add'),
                          icon: Icon(Icons.add_circle_outline,
                              color: Theme.of(context).colorScheme.secondary,
                              size: 22),
                          tooltip: S.of(context).addWork,
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          constraints: const BoxConstraints(),
                        ),
                        // Botón más compacto para "Manage"
                        IconButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/works'),
                          icon: Icon(Icons.grid_view,
                              color: Theme.of(context).colorScheme.secondary,
                              size: 22),
                          tooltip: S.of(context).manageWorks,
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          constraints: const BoxConstraints(),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 180,
                  child: state.when(
                    initial: () =>
                        const Center(child: InkerProgressIndicator()),
                    loading: () =>
                        const Center(child: InkerProgressIndicator()),
                    loaded: (works) {
                      if (works.isEmpty) {
                        return _buildEmptySection(
                          context,
                          S.of(context).noTattooWorksAddedYet,
                          S
                              .of(context)
                              .addPhotosOfYourBestTattooWorkToShowcaseYourStyle,
                          Icons.photo_album,
                        );
                      }

                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: works.length,
                        itemBuilder: (context, index) {
                          final work = works[index];
                          return GestureDetector(
                            key: index == 0 ? K.workItem : null,
                            onTap: () => Navigator.pushNamed(
                              context,
                              '/works/detail',
                              arguments: work,
                            ),
                            child: Container(
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
                                    _imageCache.buildThumbnail(
                                      context: context,
                                      imageUrl:
                                          work.thumbnailUrl ?? work.imageUrl,
                                      width: 160,
                                      height: 160,
                                      borderRadius: BorderRadius.circular(8),
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
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              work.title,
                                              style: TextStyleTheme.caption
                                                  .copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            if (work.viewCount > 0)
                                              Text(
                                                "${work.viewCount} ${work.viewCount == 1 ? 'view' : 'views'}",
                                                style: TextStyleTheme.caption
                                                    .copyWith(
                                                  color: Colors.white
                                                      .withOpacity(0.7),
                                                  fontSize: 10,
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    if (work.source ==
                                        work_dto.WorkSource.external)
                                      Positioned(
                                        top: 8,
                                        right: 8,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 6, vertical: 2),
                                          decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          child: Text(
                                            'External',
                                            style:
                                                TextStyleTheme.caption.copyWith(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    detailLoading: () =>
                        const Center(child: InkerProgressIndicator()),
                    detailLoaded: (_) =>
                        const Center(child: InkerProgressIndicator()),
                    submitting: () =>
                        const Center(child: InkerProgressIndicator()),
                    workCreated: (_) =>
                        const Center(child: InkerProgressIndicator()),
                    workUpdated: (_) =>
                        const Center(child: InkerProgressIndicator()),
                    workDeleted: () =>
                        const Center(child: InkerProgressIndicator()),
                    viewRecorded: (_, __) =>
                        const Center(child: InkerProgressIndicator()),
                    workLiked: (_, __) =>
                        const Center(child: InkerProgressIndicator()),
                    tagSuggestionsLoaded: (_) =>
                        const Center(child: InkerProgressIndicator()),
                    popularTagsLoaded: (_) =>
                        const Center(child: InkerProgressIndicator()),
                    error: (message) => _buildEmptySection(
                      context,
                      S.of(context).errorLoadingWorks,
                      S.of(context).tryRefreshingThePage(message),
                      Icons.refresh,
                    ),
                    tagCreated: (_) =>
                        const Center(child: InkerProgressIndicator()),
                    filteredByTag: (_, __) =>
                        const Center(child: InkerProgressIndicator()),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildStencilGallery() {
    return BlocProvider(
      create: (context) {
        final sessionService = context.read<LocalSessionService>();
        final stencilBloc = ArtistStencilBloc(
          context.read<StencilService>(),
          sessionService,
        );
        stencilBloc.add(const ArtistStencilEvent.loadStencils(true));
        return stencilBloc;
      },
      child: BlocBuilder<ArtistStencilBloc, ArtistStencilState>(
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.all(16.0),
            color: Theme.of(context).colorScheme.surface,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        key: registerKeys.myProfile.stencilsTitle,
                        S.of(context).stencils,
                        style: TextStyleTheme.headline3.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Botón más compacto para "Add"
                        IconButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/stencils/add'),
                          icon: Icon(Icons.add_circle_outline,
                              color: Theme.of(context).colorScheme.secondary,
                              size: 22),
                          tooltip: S.of(context).addStencil,
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          constraints: const BoxConstraints(),
                        ),
                        // Botón más compacto para "View All"
                        IconButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/stencils'),
                          icon: Icon(Icons.grid_view,
                              color: Theme.of(context).colorScheme.secondary,
                              size: 22),
                          tooltip: S.of(context).viewAllStencils,
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          constraints: const BoxConstraints(),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 180,
                  child: state.when(
                    initial: () =>
                        const Center(child: InkerProgressIndicator()),
                    loading: () =>
                        const Center(child: InkerProgressIndicator()),
                    loaded: (stencils) {
                      final featured =
                          stencils.where((s) => s.isFeatured).take(5).toList();

                      if (stencils.isEmpty) {
                        return _buildEmptySection(
                          context,
                          S.of(context).noStencilsAddedYet,
                          S
                              .of(context)
                              .addYourStencilDesignsToShowcaseYourStyle,
                          Icons.brush,
                        );
                      }

                      return GridView.builder(
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          mainAxisSpacing: 10,
                          childAspectRatio: 1.0,
                        ),
                        itemCount: featured.isEmpty
                            ? stencils.take(5).length
                            : featured.length,
                        itemBuilder: (context, index) {
                          final stencil = featured.isEmpty
                              ? stencils[index]
                              : featured[index];
                          return GestureDetector(
                            key: index == 0
                                ? registerKeys.myProfile.stencilItem
                                : null,
                            onTap: () => Navigator.pushNamed(
                              context,
                              '/stencils/detail',
                              arguments: stencil,
                            ),
                            child: Container(
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
                                    _imageCache.buildThumbnail(
                                      context: context,
                                      imageUrl: stencil.thumbnailUrl ??
                                          stencil.imageUrl,
                                      width: 160,
                                      height: 160,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    if (stencil.isFeatured)
                                      Positioned(
                                        top: 8,
                                        right: 8,
                                        child: Container(
                                          padding: const EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Icon(
                                            Icons.star,
                                            color: Colors.white,
                                            size: 12,
                                          ),
                                        ),
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
                                          stencil.title,
                                          style:
                                              TextStyleTheme.caption.copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    detailLoading: () =>
                        const Center(child: InkerProgressIndicator()),
                    detailLoaded: (_) =>
                        const Center(child: InkerProgressIndicator()),
                    submitting: () =>
                        const Center(child: InkerProgressIndicator()),
                    stencilCreated: (_) =>
                        const Center(child: InkerProgressIndicator()),
                    stencilUpdated: (_) =>
                        const Center(child: InkerProgressIndicator()),
                    stencilDeleted: () =>
                        const Center(child: InkerProgressIndicator()),
                    viewRecorded: (_, __) =>
                        const Center(child: InkerProgressIndicator()),
                    stencilLiked: (_, __) =>
                        const Center(child: InkerProgressIndicator()),
                    tagSuggestionsLoaded: (_) =>
                        const Center(child: InkerProgressIndicator()),
                    popularTagsLoaded: (_) =>
                        const Center(child: InkerProgressIndicator()),
                    error: (message) => _buildEmptySection(
                      context,
                      S.of(context).errorLoadingStencils,
                      S.of(context).tryRefreshingThePage(message),
                      Icons.refresh,
                    ),
                    tagCreated: (_) =>
                        const Center(child: InkerProgressIndicator()),
                    filteredByTag: (_, __) =>
                        const Center(child: InkerProgressIndicator()),
                  ),
                ),
              ],
            ),
          );
        },
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
      color: HSLColor.fromColor(Theme.of(context).colorScheme.surface)
          .withLightness(0.1)
          .toColor(),
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
            isEditable: false,
          ),
          const SizedBox(height: 8),
          _buildInfoTile(
            context: context,
            icon: Icons.phone,
            label: S.of(context).phone,
            value: artist.contact?.phone ?? '',
            isEditable: false,
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
    VoidCallback? onTap,
    bool isEditable = true,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: HSLColor.fromColor(Theme.of(context).colorScheme.surface)
            .withLightness(0.15)
            .toColor(),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade800),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: Icon(icon,
                color: Theme.of(context).colorScheme.secondary, size: 20),
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
                  value.isEmpty ? 'Not set' : value,
                  style: TextStyleTheme.bodyText2.copyWith(
                    color: value.isEmpty ? Colors.grey.shade600 : Colors.white,
                  ),
                ),
              ],
            ),
          ),
          if (isEditable && onTap != null)
            Icon(Icons.edit, color: Colors.grey.shade600, size: 16),
        ],
      ),
    );
  }

  Widget _buildManageLocationsButton(BuildContext context, Artist artist) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: () => _navigateToLocationManager(context),
        icon: const Icon(Icons.location_on, color: Colors.white),
        label:
            Text(S.of(context).manageLocations, style: TextStyleTheme.button),
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }

  Future<void> _navigateToLocationManager(BuildContext context) async {
    final session =
        await context.read<LocalSessionService>().getActiveSession();
    if (session == null ||
        session.user == null ||
        session.user!.userTypeId == null) {
      return;
    }
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => ArtistLocationBloc(
            context.read<LocationService>(),
            context.read<LocalSessionService>(),
          ),
          child: ArtistLocationManagerPage(artistId: session.user!.userTypeId!),
        ),
      ),
    );
  }

  Widget _buildProfileHeader(BuildContext context, Artist artist) {
    final ratingValue = artist.review?.avgRating ?? artist.review?.value;
    final ratingDisplay = ratingValue?.toStringAsFixed(1);

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
                labelKey: ArtistMyProfilePage.kProfileImage,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Theme.of(context).colorScheme.secondary,
                        width: 3),
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context)
                            .colorScheme
                            .secondary
                            .withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: _imageCache.buildProfileImage(
                    imageUrl: artist.profileThumbnail ?? '',
                    size: 120,
                    heroTag: 'profile_${artist.id}',
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Theme.of(context).colorScheme.surface,
                          width: 2),
                    ),
                    child: const Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
                if (ratingDisplay != null)
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Theme.of(context).colorScheme.surface,
                            width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.4),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              ratingDisplay,
                              style: TextStyleTheme.caption.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 8,
                            ),
                          ],
                        ),
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
          if (artist.shortDescription != null &&
              artist.shortDescription!.isNotEmpty)
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
    final ratingValue = artist.review?.avgRating ?? artist.review?.value;
    final reviewCount = artist.review?.count ?? 0;

    return Container(
      key: const Key('artistProfileDetails'),
      color: Theme.of(context).colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Add a reviews section if there are reviews
            if (ratingValue != null && ratingValue > 0)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).reviews,
                    style: TextStyleTheme.headline3.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: HSLColor.fromColor(
                              Theme.of(context).colorScheme.surface)
                          .withLightness(0.15)
                          .toColor(),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey.shade800),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            shape: BoxShape.circle,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                ratingValue.toStringAsFixed(1),
                                style: TextStyleTheme.subtitle1.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 2),
                              const Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 16,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                S.of(context).averageRating,
                                style: TextStyleTheme.subtitle1.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "$reviewCount ${reviewCount == 1 ? 'review' : 'reviews'}",
                                style: TextStyleTheme.bodyText2.copyWith(
                                  color: Colors.grey.shade400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  S.of(context).aboutMe,
                  style: TextStyleTheme.headline3.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.edit,
                      color: Theme.of(context).colorScheme.secondary, size: 20),
                  onPressed: () => _navigateToEditField(
                    context,
                    EditFieldArguments(
                      type: EditFieldType.text,
                      initialValue: artist.shortDescription,
                      label: S.of(context).shortDescription,
                      labelKey: ArtistMyProfilePage.kDescription,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: HSLColor.fromColor(Theme.of(context).colorScheme.surface)
                    .withLightness(0.15)
                    .toColor(),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade800),
              ),
              child: Text(
                artist.shortDescription ??
                    S
                        .of(context)
                        .addAShortDescriptionAboutYourselfAndYourTattooStyle,
                style: TextStyleTheme.bodyText1.copyWith(
                  color: artist.shortDescription != null
                      ? Colors.white
                      : Colors.grey.shade600,
                  fontStyle: artist.shortDescription != null
                      ? FontStyle.normal
                      : FontStyle.italic,
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
      key: registerKeys.myProfile.studioPhoto,
      onTap: () => _navigateToEditField(
        context,
        EditFieldArguments(
          type: EditFieldType.image,
          initialValue: artist.studioPhoto,
          label: S.of(context).studioPhoto,
          labelKey: ArtistMyProfilePage.kStudioPhoto,
        ),
      ),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: HSLColor.fromColor(Theme.of(context).colorScheme.surface)
              .withLightness(0.15)
              .toColor(),
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
                        color: Theme.of(context).colorScheme.secondary,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
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
                          labelKey: ArtistMyProfilePage.kStudioPhoto,
                        ),
                      ),
                      icon: const Icon(Icons.add_a_photo),
                      label: Text(S.of(context).addStudioPhoto),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor:
                            Theme.of(context).colorScheme.secondary,
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
        case ArtistMyProfilePage.kFullName:
          final names = (result.value as String).split(' ');
          bloc.add(ArtistProfileEvent.updateName(
            firstName: names.first,
            lastName: names.length > 1 ? names.sublist(1).join(' ') : '',
          ));
          break;
        case ArtistMyProfilePage.kUsername:
          bloc.add(ArtistProfileEvent.updateUsername(result.value as String));
          break;
        case ArtistMyProfilePage.kDescription:
          bloc.add(
              ArtistProfileEvent.updateDescription(result.value as String));
          break;
        case ArtistMyProfilePage.kGenres:
          bloc.add(ArtistProfileEvent.updateGenres((result.value as String)
              .split(',')
              .map((s) => s.trim())
              .toList()));
          break;
        case ArtistMyProfilePage.kTags:
          bloc.add(ArtistProfileEvent.updateTags((result.value as String)
              .split(',')
              .map((s) => s.trim())
              .toList()));
          break;
        case ArtistMyProfilePage.kProfileImage:
          if (result.value != null) {
            bloc.add(
                ArtistProfileEvent.updateProfileImage(result.value as XFile));
          }
          break;
        case ArtistMyProfilePage.kStudioPhoto:
          if (result.value != null) {
            bloc.add(
                ArtistProfileEvent.updateStudioPhoto(result.value as XFile));
          }
          break;
        case ArtistMyProfilePage.kEmail:
          bloc.add(ArtistProfileEvent.updateEmail(result.value as String));
          break;
        case ArtistMyProfilePage.kPhone:
          bloc.add(ArtistProfileEvent.updatePhone(result.value as String));
          break;
      }
    }
  }
}
