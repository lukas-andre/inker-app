import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/analytics/analytics_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_portfolio_cubit/artist_portfolio_cubit.dart';
import 'package:inker_studio/domain/models/analytics/content_type.dart';
import 'package:inker_studio/domain/models/analytics/view_source.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';
import 'package:inker_studio/domain/models/tag/tag.dart';
import 'package:inker_studio/domain/models/work/work.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/domain/services/stencil/stencil_service.dart';
import 'package:inker_studio/domain/services/work/work_service.dart';
import 'package:inker_studio/ui/immersive_viewer/vertical_immersive_viewer_page.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ArtistPortfolioGallery extends StatefulWidget {
  final List<Work> works;
  final int artistId;
  final bool isMinimalist;

  const ArtistPortfolioGallery({
    Key? key,
    required this.works,
    required this.artistId,
    this.isMinimalist = false,
  }) : super(key: key);

  @override
  State<ArtistPortfolioGallery> createState() => _ArtistPortfolioGalleryState();
}

class _ArtistPortfolioGalleryState extends State<ArtistPortfolioGallery>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Work> get works => widget.works;
  int get artistId => widget.artistId;
  bool get isMinimalist => widget.isMinimalist;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ArtistPortfolioCubit(
        stencilService: context.read<StencilService>(),
        workService: context.read<WorkService>(),
        sessionService: context.read<LocalSessionService>(),
      )..loadArtistPortfolio(artistId),
      child: BlocBuilder<ArtistPortfolioCubit, ArtistPortfolioState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: InkerProgressIndicator()),
            loading: () => const Center(child: InkerProgressIndicator()),
            loaded: (stencils, portfolioWorks) {
              // Combinamos stencils y trabajos para mostrarlos juntos
              final allItems = [...portfolioWorks, ...stencils];

              if (allItems.isEmpty) {
                // Si no hay elementos, mostrar mensaje vacío
                return _buildEmptyPortfolio();
              }

              return _buildPortfolioGrid(context, portfolioWorks, stencils);
            },
            error: (message) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, size: 48, color: redColor),
                  const SizedBox(height: 16),
                  Text(
                    'Error al cargar el portafolio',
                    style: TextStyleTheme.copyWith(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    message,
                    style: TextStyleTheme.copyWith(
                      fontSize: 12,
                      color: Colors.white.withOpacity(0.7),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => context
                        .read<ArtistPortfolioCubit>()
                        .loadArtistPortfolio(artistId),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: secondaryColor,
                    ),
                    child: const Text('Reintentar'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildPortfolioGrid(
      BuildContext context, List<Work> works, List<Stencil> stencils) {
    // Layout para las pestañas dentro del portfolio
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          margin: EdgeInsets.zero,
          color: HSLColor.fromColor(primaryColor).withLightness(0.18).toColor(),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(isMinimalist ? 0 : 16),
            side: BorderSide.none,
          ),
          child: Container(
            padding: const EdgeInsets.all(16),
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              dividerColor: Colors.transparent,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white.withOpacity(0.6),
              labelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              indicator: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: secondaryColor.withOpacity(0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  )
                ],
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              padding: const EdgeInsets.all(4),
              tabs: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('Trabajos'),
                      const SizedBox(width: 8),
                      if (works.isNotEmpty)
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            '${works.length}',
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('Stencils'),
                      const SizedBox(width: 8),
                      if (stencils.isNotEmpty)
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            '${stencils.length}',
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
              onTap: (index) {
                setState(() {
                  // Actualizar TabController cuando se cambia manualmente
                });
              },
            ),
          ),
        ),
        SizedBox(height: isMinimalist ? 16 : 20),
        Expanded(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(
                opacity: animation,
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0.05, 0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
              );
            },
            child: TabBarView(
              key: ValueKey<int>(_tabController.index),
              controller: _tabController,
              children: [
                // Pestaña de Trabajos
                works.isEmpty
                    ? _buildEmptySection('No hay trabajos',
                        'Este artista aún no ha compartido sus trabajos')
                    : _buildWorksGrid(context, works),

                // Pestaña de Stencils
                stencils.isEmpty
                    ? _buildEmptySection('No hay stencils',
                        'Este artista aún no ha compartido sus stencils')
                    : _buildStencilsGrid(context, stencils),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildWorksGrid(BuildContext context, List<Work> works) {
    return Container(
      color: primaryColor,
      child: GridView.builder(
        padding: isMinimalist
            ? const EdgeInsets.symmetric(horizontal: 12, vertical: 8)
            : const EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: isMinimalist ? 8 : 12,
          mainAxisSpacing: isMinimalist ? 8 : 12,
          childAspectRatio: 0.75,
        ),
        itemCount: works.length,
        itemBuilder: (context, index) {
          final work = works[index];
          return _buildWorkItem(context, work, index);
        },
      ),
    );
  }

  Widget _buildStencilsGrid(BuildContext context, List<Stencil> stencils) {
    return Container(
      color: primaryColor,
      child: GridView.builder(
        padding: isMinimalist
            ? const EdgeInsets.symmetric(horizontal: 12, vertical: 8)
            : const EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: isMinimalist ? 8 : 12,
          mainAxisSpacing: isMinimalist ? 8 : 12,
          childAspectRatio: 0.75,
        ),
        itemCount: stencils.length,
        itemBuilder: (context, index) {
          final stencil = stencils[index];
          return _buildStencilItem(context, stencil, index);
        },
      ),
    );
  }

  Widget _buildWorkItem(BuildContext context, Work work, int index) {
    return StatefulBuilder(
      builder: (context, setState) {
        bool isHovered = false;
        bool isPressed = false;

        return GestureDetector(
          onTap: () => _showPortfolioDetail(context, work: work),
          onTapDown: (_) => setState(() => isPressed = true),
          onTapUp: (_) => setState(() => isPressed = false),
          onTapCancel: () => setState(() => isPressed = false),
          child: MouseRegion(
            onEnter: (_) => setState(() => isHovered = true),
            onExit: (_) => setState(() => isHovered = false),
            child: TweenAnimationBuilder(
              duration: const Duration(milliseconds: 200),
              tween: Tween<double>(begin: 1.0, end: isPressed ? 0.95 : isHovered ? 1.05 : 1.0),
              builder: (context, double scale, child) {
                return Transform.scale(
                  scale: scale,
                  child: child!,
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: isMinimalist
                      ? HSLColor.fromColor(primaryColor).withLightness(0.12).toColor()
                      : HSLColor.fromColor(primaryColor).withLightness(0.18).toColor(),
                  borderRadius: BorderRadius.circular(isMinimalist ? 8 : 12),
                  boxShadow: isMinimalist
                      ? []
                      : [
                          BoxShadow(
                            color: Colors.black.withOpacity(isHovered ? 0.3 : 0.2),
                            blurRadius: isHovered ? 12 : 8,
                            offset: const Offset(0, 3),
                          ),
                        ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(isMinimalist ? 8 : 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Hero(
                              tag: 'work_${work.id}',
                              child: CachedNetworkImage(
                                imageUrl: work.thumbnailUrl ?? work.imageUrl,
                                fit: BoxFit.cover,
                                placeholder: (context, url) => const Center(
                                  child: InkerProgressIndicator(radius: 12),
                                ),
                                errorWidget: (context, url, error) => Container(
                                  color: HSLColor.fromColor(primaryColor)
                                      .withLightness(0.15)
                                      .toColor(),
                                  child:
                                      const Icon(Icons.error, color: redColor, size: 24),
                                ),
                              ),
                            ),
                            // Featured badge
                            if (work.isFeatured)
                              Positioned(
                                top: 8,
                                right: 8,
                                child: Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: const BoxDecoration(
                                    color: secondaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      // Work details
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: isMinimalist
                              ? HSLColor.fromColor(primaryColor)
                                  .withLightness(0.1)
                                  .toColor()
                              : null,
                          gradient: isMinimalist
                              ? null
                              : LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    HSLColor.fromColor(primaryColor)
                                        .withLightness(0.15)
                                        .toColor(),
                                    HSLColor.fromColor(primaryColor)
                                        .withLightness(0.12)
                                        .toColor(),
                                  ],
                                ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              work.title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            if (!isMinimalist &&
                                work.description != null &&
                                work.description!.isNotEmpty)
                              const SizedBox(height: 4),
                            if (!isMinimalist &&
                                work.description != null &&
                                work.description!.isNotEmpty)
                              Text(
                                work.description!,
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 12,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            if (isMinimalist ||
                                (work.tags != null && work.tags!.isNotEmpty))
                              const SizedBox(height: 4),
                            if (!isMinimalist ||
                                (work.tags != null && work.tags!.take(1).isNotEmpty))
                              _buildWorkTagsRow(work.tags, isMinimalist),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildStencilItem(BuildContext context, Stencil stencil, int index) {
    return StatefulBuilder(
      builder: (context, setState) {
        bool isHovered = false;
        bool isPressed = false;

        return GestureDetector(
          onTap: () => _showPortfolioDetail(context, stencil: stencil),
          onTapDown: (_) => setState(() => isPressed = true),
          onTapUp: (_) => setState(() => isPressed = false),
          onTapCancel: () => setState(() => isPressed = false),
          child: MouseRegion(
            onEnter: (_) => setState(() => isHovered = true),
            onExit: (_) => setState(() => isHovered = false),
            child: TweenAnimationBuilder(
              duration: const Duration(milliseconds: 200),
              tween: Tween<double>(begin: 1.0, end: isPressed ? 0.95 : isHovered ? 1.05 : 1.0),
              builder: (context, double scale, child) {
                return Transform.scale(
                  scale: scale,
                  child: child!,
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: isMinimalist
                      ? HSLColor.fromColor(primaryColor).withLightness(0.12).toColor()
                      : HSLColor.fromColor(primaryColor).withLightness(0.18).toColor(),
                  borderRadius: BorderRadius.circular(isMinimalist ? 8 : 12),
                  boxShadow: isMinimalist
                      ? []
                      : [
                          BoxShadow(
                            color: Colors.black.withOpacity(isHovered ? 0.3 : 0.2),
                            blurRadius: isHovered ? 12 : 8,
                            offset: const Offset(0, 3),
                          ),
                        ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(isMinimalist ? 8 : 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Hero(
                              tag: 'stencil_${stencil.id}',
                              child: CachedNetworkImage(
                                imageUrl: stencil.thumbnailUrl ?? stencil.imageUrl,
                                fit: BoxFit.cover,
                                placeholder: (context, url) => const Center(
                                  child: InkerProgressIndicator(radius: 12),
                                ),
                                errorWidget: (context, url, error) => Container(
                                  color: HSLColor.fromColor(primaryColor)
                                      .withLightness(0.15)
                                      .toColor(),
                                  child:
                                      const Icon(Icons.error, color: redColor, size: 24),
                                ),
                              ),
                            ),
                            // Featured badge
                            if (stencil.isFeatured)
                              Positioned(
                                top: 8,
                                right: 8,
                                child: Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: const BoxDecoration(
                                    color: secondaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      // Stencil details
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: isMinimalist
                              ? HSLColor.fromColor(primaryColor)
                                  .withLightness(0.1)
                                  .toColor()
                              : null,
                          gradient: isMinimalist
                              ? null
                              : LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    HSLColor.fromColor(primaryColor)
                                        .withLightness(0.15)
                                        .toColor(),
                                    HSLColor.fromColor(primaryColor)
                                        .withLightness(0.12)
                                        .toColor(),
                                  ],
                                ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              stencil.title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            if (!isMinimalist &&
                                stencil.description != null &&
                                stencil.description!.isNotEmpty)
                              const SizedBox(height: 4),
                            if (!isMinimalist &&
                                stencil.description != null &&
                                stencil.description!.isNotEmpty)
                              Text(
                                stencil.description!,
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 12,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            if (isMinimalist ||
                                (stencil.tags != null && stencil.tags!.isNotEmpty))
                              const SizedBox(height: 4),
                            if (!isMinimalist ||
                                (stencil.tags != null &&
                                    stencil.tags!.take(1).isNotEmpty))
                              _buildStencilTagsRow(stencil.tags, isMinimalist),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildWorkTagsRow(List<Tag>? tags, bool minimal) {
    if (tags == null || tags.isEmpty) {
      return const SizedBox.shrink();
    }

    if (minimal) {
      // In minimal mode, just show one tag with a simple style
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
        decoration: BoxDecoration(
          color: secondaryColor.withOpacity(0.15),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          tags.first.name,
          style: TextStyle(
            color: Colors.white.withOpacity(0.9),
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    }

    return SizedBox(
      height: 24,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tags.length > 3 ? 3 : tags.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 6),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: secondaryColor.withOpacity(0.15),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: secondaryColor.withOpacity(0.3)),
            ),
            child: Text(
              tags[index].name,
              style: TextStyle(
                color: Colors.white.withOpacity(0.9),
                fontSize: 10,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildStencilTagsRow(List<Tag>? tags, bool minimal) {
    if (tags == null || tags.isEmpty) {
      return const SizedBox.shrink();
    }

    if (minimal) {
      // In minimal mode, just show one tag with a simple style
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
        decoration: BoxDecoration(
          color: secondaryColor.withOpacity(0.15),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          tags.first.name,
          style: TextStyle(
            color: Colors.white.withOpacity(0.9),
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    }

    return SizedBox(
      height: 24,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tags.length > 3 ? 3 : tags.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 6),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: secondaryColor.withOpacity(0.15),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: secondaryColor.withOpacity(0.3)),
            ),
            child: Text(
              tags[index].name,
              style: TextStyle(
                color: Colors.white.withOpacity(0.9),
                fontSize: 10,
              ),
            ),
          );
        },
      ),
    );
  }

  void _showPortfolioDetail(BuildContext context,
      {Work? work, Stencil? stencil}) {
    // Obtener las listas de trabajos y stencils del portafolio
    final portfolioState = context.read<ArtistPortfolioCubit>().state;
    
    portfolioState.maybeWhen(
      loaded: (stencils, portfolioWorks) {
        // Registrar la vista en analytics
        if (work != null) {
          context.read<AnalyticsBloc>().add(
            AnalyticsEvent.recordContentView(
              contentId: work.id,
              contentType: ContentType.work,
              viewSource: ViewSource.profile,
            ),
          );
        } else if (stencil != null) {
          context.read<AnalyticsBloc>().add(
            AnalyticsEvent.recordContentView(
              contentId: stencil.id,
              contentType: ContentType.stencil,
              viewSource: ViewSource.profile,
            ),
          );
        }
        
        // Determinar el índice inicial
        int initialWorkIndex = 0;
        int initialStencilIndex = 0;
        bool startWithStencils = stencil != null;
        
        // Si tenemos un trabajo, encontrar su índice
        if (work != null) {
          initialWorkIndex = portfolioWorks.indexWhere((w) => w.id == work.id);
          if (initialWorkIndex < 0) initialWorkIndex = 0;
        }
        
        // Si tenemos un stencil, encontrar su índice
        if (stencil != null) {
          initialStencilIndex = stencils.indexWhere((s) => s.id == stencil.id);
          if (initialStencilIndex < 0) initialStencilIndex = 0;
        }
        
        // Navegar al visor inmersivo vertical
        Navigator.of(context).push(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                VerticalImmersiveViewerPage(
                  works: portfolioWorks,
                  stencils: stencils,
                  initialWorkIndex: initialWorkIndex,
                  initialStencilIndex: initialStencilIndex,
                  startWithStencils: startWithStencils,
                  viewSource: ViewSource.profile,
                ),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              const begin = Offset(0.0, 0.2);
              const end = Offset.zero;
              const curve = Curves.easeOutCubic;

              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              var offsetAnimation = animation.drive(tween);

              return SlideTransition(
                position: offsetAnimation,
                child: FadeTransition(
                  opacity: animation,
                  child: child,
                ),
              );
            },
            transitionDuration: const Duration(milliseconds: 300),
          ),
        ).then((result) {
          // Si recibimos un resultado con updates, actualizar las listas
          if (result != null && result is Map) {
            final List<Work>? updatedWorks = result['works'] as List<Work>?;
            final List<Stencil>? updatedStencils = result['stencils'] as List<Stencil>?;
            
            if (updatedWorks != null || updatedStencils != null) {
              // Actualizar el estado del cubit con los datos actualizados
              context.read<ArtistPortfolioCubit>().updatePortfolioItems(
                works: updatedWorks,
                stencils: updatedStencils,
              );
            }
          }
        });
      },
      orElse: () {
        // Si no tenemos datos cargados, mostrar un snackbar
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('No se pudo cargar el portafolio completo'),
            backgroundColor: redColor,
          ),
        );
      },
    );
  }

  Widget _buildEmptyPortfolio() {
    return Container(
      color: primaryColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.brush,
              size: 64,
              color: Colors.white.withOpacity(0.4),
            ),
            const SizedBox(height: 16),
            Text(
              'Sin portafolio',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.8),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              'Este artista aún no ha compartido trabajos en su portafolio',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(0.6),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            OutlinedButton.icon(
              onPressed: () => context
                  .read<ArtistPortfolioCubit>()
                  .loadArtistPortfolio(artistId),
              icon: const Icon(Icons.refresh, color: redColor),
              label: const Text(
                'Actualizar',
                style: TextStyle(color: redColor, fontWeight: FontWeight.w600),
              ),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: redColor),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptySection(String title, String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.photo_size_select_actual_outlined,
            size: 64,
            color: Colors.white.withOpacity(0.4),
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white.withOpacity(0.8),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            message,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white.withOpacity(0.6),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: () => context
                .read<ArtistPortfolioCubit>()
                .loadArtistPortfolio(artistId),
            icon: const Icon(Icons.refresh, color: redColor),
            label: const Text(
              'Actualizar',
              style: TextStyle(color: redColor, fontWeight: FontWeight.w600),
            ),
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: redColor),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
