import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_portfolio_cubit/artist_portfolio_cubit.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';
import 'package:inker_studio/domain/models/tag/tag.dart';
import 'package:inker_studio/domain/models/work/work.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/domain/services/stencil/stencil_service.dart';
import 'package:inker_studio/domain/services/work/work_service.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/image/cached_image_manager.dart';
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

class _ArtistPortfolioGalleryState extends State<ArtistPortfolioGallery> with SingleTickerProviderStateMixin {
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
                    onPressed: () => context.read<ArtistPortfolioCubit>().loadArtistPortfolio(artistId),
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
  
  Widget _buildPortfolioGrid(BuildContext context, List<Work> works, List<Stencil> stencils) {
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
              tabs: const [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  child: Text('Trabajos'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  child: Text('Stencils'),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: isMinimalist ? 16 : 20),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              // Pestaña de Trabajos
              works.isEmpty
                  ? _buildEmptySection('No hay trabajos', 'Este artista aún no ha compartido sus trabajos')
                  : _buildWorksGrid(context, works),
                  
              // Pestaña de Stencils
              stencils.isEmpty
                  ? _buildEmptySection('No hay stencils', 'Este artista aún no ha compartido sus stencils')
                  : _buildStencilsGrid(context, stencils),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildWorksGrid(BuildContext context, List<Work> works) {
    return Container(
      color: primaryColor,
      child: GridView.builder(
        padding: isMinimalist ? const EdgeInsets.symmetric(horizontal: 12, vertical: 8) : const EdgeInsets.all(16),
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
        padding: isMinimalist ? const EdgeInsets.symmetric(horizontal: 12, vertical: 8) : const EdgeInsets.all(16),
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
    return GestureDetector(
      onTap: () => _showPortfolioDetail(context, work: work),
      child: Container(
        decoration: BoxDecoration(
          color: isMinimalist ? HSLColor.fromColor(primaryColor).withLightness(0.12).toColor() : HSLColor.fromColor(primaryColor).withLightness(0.18).toColor(),
          borderRadius: BorderRadius.circular(isMinimalist ? 8 : 12),
          boxShadow: isMinimalist ? [] : [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
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
                    CachedNetworkImage(
                      imageUrl: work.thumbnailUrl ?? work.imageUrl,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => const Center(
                        child: InkerProgressIndicator(radius: 12),
                      ),
                      errorWidget: (context, url, error) => Container(
                        color: HSLColor.fromColor(primaryColor).withLightness(0.15).toColor(),
                        child: const Icon(Icons.error, color: redColor, size: 24),
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
                  color: isMinimalist ? HSLColor.fromColor(primaryColor).withLightness(0.1).toColor() : null,
                  gradient: isMinimalist ? null : LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      HSLColor.fromColor(primaryColor).withLightness(0.15).toColor(),
                      HSLColor.fromColor(primaryColor).withLightness(0.12).toColor(),
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
                    if (!isMinimalist && work.description != null && work.description!.isNotEmpty)
                      const SizedBox(height: 4),
                    if (!isMinimalist && work.description != null && work.description!.isNotEmpty)
                      Text(
                        work.description!,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 12,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    if (isMinimalist || (work.tags != null && work.tags!.isNotEmpty))
                      const SizedBox(height: 4),
                    if (!isMinimalist || (work.tags != null && work.tags!.take(1).isNotEmpty))
                      _buildWorkTagsRow(work.tags, isMinimalist),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  Widget _buildStencilItem(BuildContext context, Stencil stencil, int index) {
    return GestureDetector(
      onTap: () => _showPortfolioDetail(context, stencil: stencil),
      child: Container(
        decoration: BoxDecoration(
          color: isMinimalist ? HSLColor.fromColor(primaryColor).withLightness(0.12).toColor() : HSLColor.fromColor(primaryColor).withLightness(0.18).toColor(),
          borderRadius: BorderRadius.circular(isMinimalist ? 8 : 12),
          boxShadow: isMinimalist ? [] : [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
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
                    CachedNetworkImage(
                      imageUrl: stencil.thumbnailUrl ?? stencil.imageUrl,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => const Center(
                        child: InkerProgressIndicator(radius: 12),
                      ),
                      errorWidget: (context, url, error) => Container(
                        color: HSLColor.fromColor(primaryColor).withLightness(0.15).toColor(),
                        child: const Icon(Icons.error, color: redColor, size: 24),
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
                  color: isMinimalist ? HSLColor.fromColor(primaryColor).withLightness(0.1).toColor() : null,
                  gradient: isMinimalist ? null : LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      HSLColor.fromColor(primaryColor).withLightness(0.15).toColor(),
                      HSLColor.fromColor(primaryColor).withLightness(0.12).toColor(),
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
                    if (!isMinimalist && stencil.description != null && stencil.description!.isNotEmpty)
                      const SizedBox(height: 4),
                    if (!isMinimalist && stencil.description != null && stencil.description!.isNotEmpty)
                      Text(
                        stencil.description!,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 12,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    if (isMinimalist || (stencil.tags != null && stencil.tags!.isNotEmpty))
                      const SizedBox(height: 4),
                    if (!isMinimalist || (stencil.tags != null && stencil.tags!.take(1).isNotEmpty))
                      _buildStencilTagsRow(stencil.tags, isMinimalist),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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

  void _showPortfolioDetail(BuildContext context, {Work? work, Stencil? stencil}) {
    if (work != null) {
      Navigator.of(context).push(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => _ImmersiveWorkViewer(work: work),
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
      );
    } else if (stencil != null) {
      Navigator.of(context).push(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => _ImmersiveStencilViewer(stencil: stencil),
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
      );
    }
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
              onPressed: () => context.read<ArtistPortfolioCubit>().loadArtistPortfolio(artistId),
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
            onPressed: () => context.read<ArtistPortfolioCubit>().loadArtistPortfolio(artistId),
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

/// Immersive full-screen viewer for Works
class _ImmersiveWorkViewer extends StatefulWidget {
  final Work work;
  
  const _ImmersiveWorkViewer({
    Key? key,
    required this.work,
  }) : super(key: key);
  
  @override
  State<_ImmersiveWorkViewer> createState() => _ImmersiveWorkViewerState();
}

class _ImmersiveWorkViewerState extends State<_ImmersiveWorkViewer> with SingleTickerProviderStateMixin {
  final _transformationController = TransformationController();
  late AnimationController _animationController;
  Animation<Matrix4>? _animation;
  final _imageCache = CachedImageManager();
  
  // Control info visibility
  bool _showFullInfo = false;
  
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    )..addListener(() {
      if (_animation != null) {
        _transformationController.value = _animation!.value;
      }
    });
  }
  
  @override
  void dispose() {
    _transformationController.dispose();
    _animationController.dispose();
    super.dispose();
  }
  
  // Reset zoom when double tap
  void _handleDoubleTap() {
    if (_transformationController.value != Matrix4.identity()) {
      // If already zoomed in, reset to original size
      final animationReset = Matrix4Tween(
        begin: _transformationController.value,
        end: Matrix4.identity(),
      ).animate(CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOut,
      ));
      
      _animation = animationReset;
      _animationController.forward(from: 0);
    } else {
      // Zoom to 2.5x on double tap
      final animationZoom = Matrix4Tween(
        begin: Matrix4.identity(),
        end: Matrix4.diagonal3Values(2.5, 2.5, 1.0),
      ).animate(CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOut,
      ));
      
      _animation = animationZoom;
      _animationController.forward(from: 0);
    }
  }
  
  void _toggleFullInfo() {
    setState(() {
      _showFullInfo = !_showFullInfo;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final work = widget.work;
    
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Interactive image viewer
          GestureDetector(
            onTap: _toggleFullInfo,
            onDoubleTap: _handleDoubleTap,
            child: InteractiveViewer(
              transformationController: _transformationController,
              minScale: 1.0,
              maxScale: 4.0,
              child: Hero(
                tag: 'work_${work.id}',
                child: CachedNetworkImage(
                  imageUrl: work.imageUrl,
                  fit: BoxFit.contain,
                  width: screenSize.width,
                  height: screenSize.height,
                  placeholder: (context, url) => const Center(
                    child: InkerProgressIndicator(color: Colors.white),
                  ),
                  errorWidget: (context, url, error) => Container(
                    color: primaryColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.error_outline, size: 60, color: Colors.white.withOpacity(0.7)),
                        const SizedBox(height: 16),
                        Text(
                          'No se pudo cargar la imagen',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          
          // Top gradient for back button and title
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.transparent,
                  ],
                ),
              ),
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top + 8,
                left: 16, 
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Back button with backdrop
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.4),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  
                  // Title with shadow
                  Text(
                    work.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          offset: Offset(0, 1),
                          blurRadius: 3.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  
                  // Featured badge if applicable
                  work.isFeatured
                    ? Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star, color: Colors.white, size: 14),
                            SizedBox(width: 4),
                            Text(
                              'Destacado',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    : const SizedBox(width: 36), // Empty space for balance
                ],
              ),
            ),
          ),
          
          // Right side stats (TikTok style)
          Positioned(
            bottom: 100,
            right: 16,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Views stat
                _buildTiktokStat(
                  Icons.visibility_rounded,
                  '${work.viewCount}',
                  'vistas',
                ),
                const SizedBox(height: 20),
                
                // Likes stat
                _buildTiktokStat(
                  Icons.favorite,
                  '${work.likeCount}',
                  'me gusta',
                ),
                const SizedBox(height: 20),
                
                // Date stat
                _buildTiktokStat(
                  Icons.calendar_today_rounded,
                  '',
                  _formatDate(work.createdAt),
                  iconSize: 22,
                ),
              ],
            ),
          ),
          
          // Bottom information overlay (description & tags)
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: _showFullInfo
              ? _buildFullInfoPanel(work)
              : _buildBasicInfoPanel(work),
          ),
        ],
      ),
    );
  }
  
  // TikTok style stat with icon and counter
  Widget _buildTiktokStat(IconData icon, String count, String label, {double iconSize = 24}) {
    return Column(
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.white, size: iconSize),
        ),
        if (count.isNotEmpty) ...[
          const SizedBox(height: 4),
          Text(
            count,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(offset: Offset(1, 1), blurRadius: 3, color: Colors.black),
              ],
            ),
          ),
        ],
        const SizedBox(height: 2),
        Text(
          label,
          style: TextStyle(
            color: Colors.white.withOpacity(0.9),
            fontSize: 12,
            shadows: const [
              Shadow(offset: Offset(1, 1), blurRadius: 3, color: Colors.black),
            ],
          ),
        ),
      ],
    );
  }
  
  // Basic info panel showing just title and tags
  Widget _buildBasicInfoPanel(Work work) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Colors.black.withOpacity(0.8),
            Colors.black.withOpacity(0.0),
          ],
          stops: const [0.0, 1.0],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (work.tags != null && work.tags!.isNotEmpty)
            SizedBox(
              height: 30,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: work.tags!.map((tag) => _buildTagPill(tag.name)).toList(),
              ),
            ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Text(
                  work.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(offset: Offset(1, 1), blurRadius: 3, color: Colors.black),
                    ],
                  ),
                ),
              ),
              const Icon(
                Icons.keyboard_arrow_up,
                color: Colors.white,
                size: 28,
              ),
            ],
          ),
          if (work.description != null && work.description!.isNotEmpty)
            Text(
              '${work.description!.substring(0, work.description!.length > 80 ? 80 : work.description!.length)}${work.description!.length > 80 ? '...' : ''}',
              style: TextStyle(
                color: Colors.white.withOpacity(0.9),
                fontSize: 13,
                shadows: const [
                  Shadow(offset: Offset(1, 1), blurRadius: 3, color: Colors.black),
                ],
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
  
  // Full expanded info panel with all details
  Widget _buildFullInfoPanel(Work work) {
    return GestureDetector(
      onTap: () {}, // Prevent tap from closing panel
      child: Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.5,
        ),
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Colors.black.withOpacity(0.95),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.0),
            ],
            stops: const [0.6, 0.9, 1.0],
          ),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Title and minimize control
              Row(
                children: [
                  Expanded(
                    child: Text(
                      work.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: _toggleFullInfo,
                    child: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              
              // Description
              if (work.description != null && work.description!.isNotEmpty) ...[
                Text(
                  'Descripción',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  work.description!,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 14,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 24),
              ],
              
              // Tags section
              if (work.tags != null && work.tags!.isNotEmpty) ...[
                Text(
                  'Etiquetas',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: work.tags!.map((tag) => _buildTag(tag.name)).toList(),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
  
  // Tag pill for horizontal scrolling list
  Widget _buildTagPill(String text) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.6),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.white.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
  
  // Tag for tag cloud in detailed view
  Widget _buildTag(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: HSLColor.fromColor(secondaryColor).withAlpha(0.15).toColor(),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: secondaryColor.withOpacity(0.4),
          width: 1,
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
  
  String _formatDate(DateTime date) {
    final months = [
      'ene', 'feb', 'mar', 'abr', 'may', 'jun',
      'jul', 'ago', 'sep', 'oct', 'nov', 'dic'
    ];
    return '${date.day} ${months[date.month - 1]} ${date.year}';
  }
}

/// Immersive full-screen viewer for Stencils
class _ImmersiveStencilViewer extends StatefulWidget {
  final Stencil stencil;
  
  const _ImmersiveStencilViewer({
    Key? key,
    required this.stencil,
  }) : super(key: key);
  
  @override
  State<_ImmersiveStencilViewer> createState() => _ImmersiveStencilViewerState();
}

class _ImmersiveStencilViewerState extends State<_ImmersiveStencilViewer> with SingleTickerProviderStateMixin {
  final _transformationController = TransformationController();
  late AnimationController _animationController;
  Animation<Matrix4>? _animation;
  final _imageCache = CachedImageManager();
  
  // Control info visibility
  bool _showFullInfo = false;
  
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    )..addListener(() {
      if (_animation != null) {
        _transformationController.value = _animation!.value;
      }
    });
  }
  
  @override
  void dispose() {
    _transformationController.dispose();
    _animationController.dispose();
    super.dispose();
  }
  
  // Reset zoom when double tap
  void _handleDoubleTap() {
    if (_transformationController.value != Matrix4.identity()) {
      // If already zoomed in, reset to original size
      final animationReset = Matrix4Tween(
        begin: _transformationController.value,
        end: Matrix4.identity(),
      ).animate(CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOut,
      ));
      
      _animation = animationReset;
      _animationController.forward(from: 0);
    } else {
      // Zoom to 2.5x on double tap
      final animationZoom = Matrix4Tween(
        begin: Matrix4.identity(),
        end: Matrix4.diagonal3Values(2.5, 2.5, 1.0),
      ).animate(CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOut,
      ));
      
      _animation = animationZoom;
      _animationController.forward(from: 0);
    }
  }
  
  void _toggleFullInfo() {
    setState(() {
      _showFullInfo = !_showFullInfo;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final stencil = widget.stencil;
    
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Interactive image viewer
          GestureDetector(
            onTap: _toggleFullInfo,
            onDoubleTap: _handleDoubleTap,
            child: InteractiveViewer(
              transformationController: _transformationController,
              minScale: 1.0,
              maxScale: 4.0,
              child: Hero(
                tag: 'stencil_${stencil.id}',
                child: CachedNetworkImage(
                  imageUrl: stencil.imageUrl,
                  fit: BoxFit.contain,
                  width: screenSize.width,
                  height: screenSize.height,
                  placeholder: (context, url) => const Center(
                    child: InkerProgressIndicator(color: Colors.white),
                  ),
                  errorWidget: (context, url, error) => Container(
                    color: primaryColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.error_outline, size: 60, color: Colors.white.withOpacity(0.7)),
                        const SizedBox(height: 16),
                        Text(
                          'No se pudo cargar la imagen',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          
          // Top gradient for back button and title
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.transparent,
                  ],
                ),
              ),
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top + 8,
                left: 16, 
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Back button with backdrop
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.4),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  
                  // Title with shadow
                  Text(
                    stencil.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          offset: Offset(0, 1),
                          blurRadius: 3.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  
                  // Featured badge if applicable
                  stencil.isFeatured
                    ? Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star, color: Colors.white, size: 14),
                            SizedBox(width: 4),
                            Text(
                              'Destacado',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    : const SizedBox(width: 36), // Empty space for balance
                ],
              ),
            ),
          ),
          
          // Right side stats (TikTok style)
          Positioned(
            bottom: 100,
            right: 16,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Views stat
                _buildTiktokStat(
                  Icons.visibility_rounded,
                  '${stencil.viewCount}',
                  'vistas',
                ),
                const SizedBox(height: 20),
                
                // Likes stat
                _buildTiktokStat(
                  Icons.favorite,
                  '${stencil.likeCount}',
                  'me gusta',
                ),
                const SizedBox(height: 20),
                
                // Date stat
                _buildTiktokStat(
                  Icons.calendar_today_rounded,
                  '',
                  _formatDate(stencil.createdAt),
                  iconSize: 22,
                ),
              ],
            ),
          ),
          
          // Bottom information overlay (description & tags)
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: _showFullInfo
              ? _buildFullInfoPanel(stencil)
              : _buildBasicInfoPanel(stencil),
          ),
        ],
      ),
    );
  }
  
  // TikTok style stat with icon and counter
  Widget _buildTiktokStat(IconData icon, String count, String label, {double iconSize = 24}) {
    return Column(
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.white, size: iconSize),
        ),
        if (count.isNotEmpty) ...[
          const SizedBox(height: 4),
          Text(
            count,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(offset: Offset(1, 1), blurRadius: 3, color: Colors.black),
              ],
            ),
          ),
        ],
        const SizedBox(height: 2),
        Text(
          label,
          style: TextStyle(
            color: Colors.white.withOpacity(0.9),
            fontSize: 12,
            shadows: const [
              Shadow(offset: Offset(1, 1), blurRadius: 3, color: Colors.black),
            ],
          ),
        ),
      ],
    );
  }
  
  // Basic info panel showing just title and tags
  Widget _buildBasicInfoPanel(Stencil stencil) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Colors.black.withOpacity(0.8),
            Colors.black.withOpacity(0.0),
          ],
          stops: const [0.0, 1.0],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (stencil.tags != null && stencil.tags!.isNotEmpty)
            SizedBox(
              height: 30,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: stencil.tags!.map((tag) => _buildTagPill(tag.name)).toList(),
              ),
            ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Text(
                  stencil.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(offset: Offset(1, 1), blurRadius: 3, color: Colors.black),
                    ],
                  ),
                ),
              ),
              const Icon(
                Icons.keyboard_arrow_up,
                color: Colors.white,
                size: 28,
              ),
            ],
          ),
          if (stencil.description != null && stencil.description!.isNotEmpty)
            Text(
              '${stencil.description!.substring(0, stencil.description!.length > 80 ? 80 : stencil.description!.length)}${stencil.description!.length > 80 ? '...' : ''}',
              style: TextStyle(
                color: Colors.white.withOpacity(0.9),
                fontSize: 13,
                shadows: const [
                  Shadow(offset: Offset(1, 1), blurRadius: 3, color: Colors.black),
                ],
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
  
  // Full expanded info panel with all details
  Widget _buildFullInfoPanel(Stencil stencil) {
    return GestureDetector(
      onTap: () {}, // Prevent tap from closing panel
      child: Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.5,
        ),
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Colors.black.withOpacity(0.95),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.0),
            ],
            stops: const [0.6, 0.9, 1.0],
          ),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Title and minimize control
              Row(
                children: [
                  Expanded(
                    child: Text(
                      stencil.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: _toggleFullInfo,
                    child: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              
              // Description
              if (stencil.description != null && stencil.description!.isNotEmpty) ...[
                Text(
                  'Descripción',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  stencil.description!,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 14,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 24),
              ],
              
              // Tags section
              if (stencil.tags != null && stencil.tags!.isNotEmpty) ...[
                Text(
                  'Etiquetas',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.9),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: stencil.tags!.map((tag) => _buildTag(tag.name)).toList(),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
  
  // Tag pill for horizontal scrolling list
  Widget _buildTagPill(String text) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.6),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.white.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
  
  // Tag for tag cloud in detailed view
  Widget _buildTag(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: HSLColor.fromColor(secondaryColor).withAlpha(0.15).toColor(),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: secondaryColor.withOpacity(0.4),
          width: 1,
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
  
  String _formatDate(DateTime date) {
    final months = [
      'ene', 'feb', 'mar', 'abr', 'may', 'jun',
      'jul', 'ago', 'sep', 'oct', 'nov', 'dic'
    ];
    return '${date.day} ${months[date.month - 1]} ${date.year}';
  }
}