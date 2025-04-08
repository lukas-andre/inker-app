import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/analytics/analytics_bloc.dart';
import 'package:inker_studio/domain/models/analytics/content_type.dart';
import 'package:inker_studio/domain/models/analytics/view_source.dart';
import 'package:inker_studio/domain/models/metrics/metrics.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';
import 'package:inker_studio/domain/models/work/work.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/domain/models/tag/tag.dart';
import 'package:inker_studio/ui/customer/artist_profile/artist_profile_page.dart';
import 'package:inker_studio/utils/image/cached_image_manager.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:inker_studio/ui/customer/quotation/create/create_quotation_page.dart';

/// Vertical immersive viewer for tattoos (works) and stencils that allows
/// swiping up/down to navigate between items
class VerticalImmersiveViewerPage extends StatefulWidget {
  // Lists of works and stencils to navigate through
  final List<Work> works;
  final List<Stencil> stencils;
  
  // Starting position
  final int initialWorkIndex;
  final int initialStencilIndex;
  final bool startWithStencils;
  
  // View source tracking for analytics
  final ViewSource viewSource;

  const VerticalImmersiveViewerPage({
    super.key,
    required this.works,
    required this.stencils,
    this.initialWorkIndex = 0,
    this.initialStencilIndex = 0,
    this.startWithStencils = false,
    this.viewSource = ViewSource.direct,
  });

  @override
  State<VerticalImmersiveViewerPage> createState() => _VerticalImmersiveViewerPageState();
  
  // Factory method to create from inspiration search state
  static Widget fromInspirationSearchState({
    required List<Work> works,
    required List<Stencil> stencils,
    int initialWorkIndex = 0,
    int initialStencilIndex = 0,
    bool startWithStencils = false,
  }) {
    return VerticalImmersiveViewerPage(
      works: works,
      stencils: stencils,
      initialWorkIndex: initialWorkIndex,
      initialStencilIndex: initialStencilIndex,
      startWithStencils: startWithStencils,
      viewSource: ViewSource.search,
    );
  }
}

class _VerticalImmersiveViewerPageState extends State<VerticalImmersiveViewerPage> {
  // Current viewing state
  late bool _viewingStencils;
  late int _currentWorkIndex;
  late int _currentStencilIndex;
  
  // Mutable copies of works and stencils
  late List<Work> _works;
  late List<Stencil> _stencils;
  
  // Controller for the page view
  late PageController _pageController;
  
  // For preloading images
  final _imageCache = CachedImageManager();
  
  // Flag to show end of category message
  bool _showEndOfCategory = false;
  String _endOfCategoryMessage = '';
  
  // Flag to track double tap for like
  DateTime? _lastTapTime;
  
  // For tracking view duration
  DateTime? _contentViewStartTime;
  
  @override
  void initState() {
    super.initState();
    
    // Create mutable copies of the lists
    _works = List.from(widget.works);
    _stencils = List.from(widget.stencils);
    
    // Initialize state
    _viewingStencils = widget.startWithStencils && _stencils.isNotEmpty;
    _currentWorkIndex = widget.initialWorkIndex.clamp(0, _works.isNotEmpty ? _works.length - 1 : 0);
    _currentStencilIndex = widget.initialStencilIndex.clamp(0, _stencils.isNotEmpty ? _stencils.length - 1 : 0);
    
    // Initialize page controller with the appropriate initial page
    _pageController = PageController(
      initialPage: _viewingStencils ? _currentStencilIndex : _currentWorkIndex,
    );
    
    // Preload nearby images
    _preloadImages();
    
    // Record initial view
    _recordInitialView();
  }
  
  void _recordInitialView() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Start tracking the view time
      _contentViewStartTime = DateTime.now();
      
      // Record the initial view
      if (_viewingStencils && _stencils.isNotEmpty) {
        _recordView(
          contentId: _stencils[_currentStencilIndex].id,
          contentType: ContentType.stencil,
          viewSource: widget.viewSource,
        );
      } else if (_works.isNotEmpty) {
        _recordView(
          contentId: _works[_currentWorkIndex].id,
          contentType: ContentType.work,
          viewSource: widget.viewSource,
        );
      }
    });
  }
  
  void _recordView({
    required String contentId,
    required ContentType contentType,
    ViewSource? viewSource,
  }) {
    context.read<AnalyticsBloc>().add(
      AnalyticsEvent.recordContentView(
        contentId: contentId,
        contentType: contentType,
        viewSource: viewSource ?? widget.viewSource,
      ),
    );
  }
  
  void _recordViewDuration() {
    if (_contentViewStartTime == null) return;
    
    final viewDuration = DateTime.now().difference(_contentViewStartTime!).inSeconds;
    _contentViewStartTime = DateTime.now(); // Reset for next view
    
    // Only track if meaningful duration (more than 1 second)
    if (viewDuration > 1) {
      if (_viewingStencils && _currentStencilIndex < _stencils.length) {
        context.read<AnalyticsBloc>().add(
          AnalyticsEvent.recordContentView(
            contentId: _stencils[_currentStencilIndex].id,
            contentType: ContentType.stencil,
            viewDurationSeconds: viewDuration,
          ),
        );
      } else if (!_viewingStencils && _currentWorkIndex < _works.length) {
        context.read<AnalyticsBloc>().add(
          AnalyticsEvent.recordContentView(
            contentId: _works[_currentWorkIndex].id,
            contentType: ContentType.work,
            viewDurationSeconds: viewDuration,
          ),
        );
      }
    }
  }
  
  void _recordLike() {
    if (_viewingStencils && _currentStencilIndex < _stencils.length) {
      context.read<AnalyticsBloc>().add(
        AnalyticsEvent.recordContentLike(
          contentId: _stencils[_currentStencilIndex].id,
          contentType: ContentType.stencil,
        ),
      );
    } else if (!_viewingStencils && _currentWorkIndex < _works.length) {
      context.read<AnalyticsBloc>().add(
        AnalyticsEvent.recordContentLike(
          contentId: _works[_currentWorkIndex].id,
          contentType: ContentType.work,
        ),
      );
    }
  }
  
  // Update the local state when a like is recorded
  void _updateLikeState(String contentId, ContentType contentType, bool isLiked, int likeCount) {
    setState(() {
      if (contentType == ContentType.work) {
        final index = _works.indexWhere((work) => work.id == contentId);
        if (index != -1) {
          final work = _works[index];
          
          // Crear métricas actualizadas con contador exacto proporcionado por el bloc
          final updatedMetrics = Metrics(
            viewCount: work.metrics?.viewCount ?? work.viewCount,
            likeCount: likeCount, // Usar exactamente el valor proporcionado
            userHasLiked: isLiked,
          );
                  
          _works[index] = Work(
            id: work.id,
            artistId: work.artistId,
            title: work.title,
            description: work.description,
            imageUrl: work.imageUrl,
            thumbnailUrl: work.thumbnailUrl,
            imageVersion: work.imageVersion,
            thumbnailVersion: work.thumbnailVersion,
            isFeatured: work.isFeatured,
            orderPosition: work.orderPosition,
            source: work.source,
            isHidden: work.isHidden,
            viewCount: work.viewCount,
            likeCount: likeCount, // Usar exactamente el valor proporcionado
            userHasLiked: isLiked,
            metrics: updatedMetrics,
            artist: work.artist,
            createdAt: work.createdAt,
            updatedAt: work.updatedAt,
            deletedAt: work.deletedAt,
            tags: work.tags,
          );
        }
      } else if (contentType == ContentType.stencil) {
        final index = _stencils.indexWhere((stencil) => stencil.id == contentId);
        if (index != -1) {
          final stencil = _stencils[index];
          
          // Crear métricas actualizadas con contador exacto proporcionado por el bloc
          final updatedMetrics = Metrics(
            viewCount: stencil.metrics?.viewCount ?? stencil.viewCount,
            likeCount: likeCount, // Usar exactamente el valor proporcionado
            userHasLiked: isLiked,
          );
                  
          _stencils[index] = Stencil(
            id: stencil.id,
            artistId: stencil.artistId,
            title: stencil.title,
            description: stencil.description,
            imageUrl: stencil.imageUrl,
            imageVersion: stencil.imageVersion,
            thumbnailUrl: stencil.thumbnailUrl,
            thumbnailVersion: stencil.thumbnailVersion,
            isFeatured: stencil.isFeatured,
            orderPosition: stencil.orderPosition,
            isHidden: stencil.isHidden,
            createdAt: stencil.createdAt,
            updatedAt: stencil.updatedAt,
            deletedAt: stencil.deletedAt,
            tags: stencil.tags,
            artist: stencil.artist,
            viewCount: stencil.viewCount,
            likeCount: likeCount, // Usar exactamente el valor proporcionado
            isLikedByUser: isLiked,
            metrics: updatedMetrics,
          );
        }
      }
    });
  }
  
  @override
  void dispose() {
    // Record final view duration before closing
    _recordViewDuration();
    _pageController.dispose();
    super.dispose();
  }
  
  // Preload images for smoother navigation
  void _preloadImages() {
    final List<String> imagesToPreload = [];
    
    if (_viewingStencils) {
      // Preload current stencil and a few next/previous ones
      final int startIdx = (_currentStencilIndex - 2).clamp(0, _stencils.length - 1);
      final int endIdx = (_currentStencilIndex + 2).clamp(0, _stencils.length - 1);
      
      for (int i = startIdx; i <= endIdx; i++) {
        if (i >= 0 && i < _stencils.length) {
          imagesToPreload.add(_stencils[i].imageUrl);
        }
      }
      
      // If near the end of stencils, prepare to show first work
      if (_currentStencilIndex >= _stencils.length - 3 && _works.isNotEmpty) {
        imagesToPreload.add(_works[0].imageUrl);
      }
    } else {
      // Preload current work and a few next/previous ones
      final int startIdx = (_currentWorkIndex - 2).clamp(0, _works.length - 1);
      final int endIdx = (_currentWorkIndex + 2).clamp(0, _works.length - 1);
      
      for (int i = startIdx; i <= endIdx; i++) {
        if (i >= 0 && i < _works.length) {
          imagesToPreload.add(_works[i].imageUrl);
        }
      }
      
      // If near the end of works, prepare to show first stencil
      if (_currentWorkIndex >= _works.length - 3 && _stencils.isNotEmpty) {
        imagesToPreload.add(_stencils[0].imageUrl);
      }
    }
    
    // Preload the images
    if (imagesToPreload.isNotEmpty) {
      _imageCache.preloadImages(imagesToPreload, context);
    }
  }
  
  // Handle page changes
  void _onPageChanged(int index) {
    // Record view duration for the previous content
    _recordViewDuration();
    
    if (_viewingStencils) {
      if (index >= 0 && index < _stencils.length) {
        setState(() {
          _currentStencilIndex = index;
          _showEndOfCategory = false;
          _endOfCategoryMessage = '';
        });
        
        // Record view for new stencil
        _recordView(
          contentId: _stencils[index].id,
          contentType: ContentType.stencil,
        );
      } else if (index >= _stencils.length) {
        // End of stencils
        setState(() {
          _showEndOfCategory = true;
          _endOfCategoryMessage = 'Fin de Stencils';
        });
      }
    } else {
      if (index >= 0 && index < _works.length) {
        setState(() {
          _currentWorkIndex = index;
          _showEndOfCategory = false;
          _endOfCategoryMessage = '';
        });
        
        // Record view for new work
        _recordView(
          contentId: _works[index].id,
          contentType: ContentType.work,
        );
      } else if (index >= _works.length) {
        // End of works
        setState(() {
          _showEndOfCategory = true;
          _endOfCategoryMessage = 'Fin de Tatuajes';
        });
      }
    }
    
    // Preload images for the new position
    _preloadImages();
  }
  
  // Switch to viewing works
  void _switchToWorks() {
    if (_works.isEmpty) return;
    
    // Record view duration for the previous content
    _recordViewDuration();
    
    setState(() {
      _viewingStencils = false;
      _currentWorkIndex = 0;
      _showEndOfCategory = false;
      _endOfCategoryMessage = '';
    });
    
    _pageController = PageController(initialPage: 0);
    _preloadImages();
    
    // Record new view
    if (_works.isNotEmpty) {
      _recordView(
        contentId: _works[0].id,
        contentType: ContentType.work,
      );
    }
  }
  
  // Switch to viewing stencils
  void _switchToStencils() {
    if (_stencils.isEmpty) return;
    
    // Record view duration for the previous content
    _recordViewDuration();
    
    setState(() {
      _viewingStencils = true;
      _currentStencilIndex = 0;
      _showEndOfCategory = false;
      _endOfCategoryMessage = '';
    });
    
    _pageController = PageController(initialPage: 0);
    _preloadImages();
    
    // Record new view
    if (_stencils.isNotEmpty) {
      _recordView(
        contentId: _stencils[0].id,
        contentType: ContentType.stencil,
      );
    }
  }
  
  // Return to the beginning of the current category
  void _returnToStart() {
    // Record view duration for the previous content
    _recordViewDuration();
    
    setState(() {
      _showEndOfCategory = false;
      _endOfCategoryMessage = '';
      
      if (_viewingStencils) {
        _currentStencilIndex = 0;
      } else {
        _currentWorkIndex = 0;
      }
    });
    
    _pageController.jumpToPage(0);
    _preloadImages();
    
    // Record new view
    if (_viewingStencils && _stencils.isNotEmpty) {
      _recordView(
        contentId: _stencils[0].id,
        contentType: ContentType.stencil,
      );
    } else if (!_viewingStencils && _works.isNotEmpty) {
      _recordView(
        contentId: _works[0].id,
        contentType: ContentType.work,
      );
    }
  }
  
  // Handle taps on the content - double tap to like
  void _handleTap() {
    final now = DateTime.now();
    if (_lastTapTime != null &&
        now.difference(_lastTapTime!).inMilliseconds < 300) {
      // Double tap detected - like the content
      _handleDoubleTap();
    }
    
    _lastTapTime = now;
  }
  
  // Handle double tap - like the current item
  void _handleDoubleTap() {
    // Toggle like
    bool isCurrentlyLiked = false;
    String contentId = '';
    ContentType contentType = ContentType.work;
    
    if (_viewingStencils && _currentStencilIndex < _stencils.length) {
      final stencil = _stencils[_currentStencilIndex];
      isCurrentlyLiked = stencil.metrics?.userHasLiked ?? stencil.isLikedByUser;
      contentId = stencil.id;
      contentType = ContentType.stencil;
    } else if (!_viewingStencils && _currentWorkIndex < _works.length) {
      final work = _works[_currentWorkIndex];
      isCurrentlyLiked = work.metrics?.userHasLiked ?? work.userHasLiked;
      contentId = work.id;
      contentType = ContentType.work;
    } else {
      return; // No hay elemento seleccionado
    }
    
    // Record the like/unlike action - esto actualizará la UI mediante el bloc listener
    context.read<AnalyticsBloc>().add(
      AnalyticsEvent.recordContentLike(
        contentId: contentId,
        contentType: contentType,
      ),
    );
    
    // Show like animation
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.favorite, color: Colors.white),
            const SizedBox(width: 8),
            Text(
              isCurrentlyLiked
                ? (_viewingStencils 
                  ? 'Ya no te gusta este stencil' 
                  : 'Ya no te gusta este tatuaje')
                : (_viewingStencils 
                  ? 'Te gusta este stencil' 
                  : 'Te gusta este tatuaje')
            ),
          ],
        ),
        backgroundColor: redColor,
        duration: const Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
  
  // Handle like button tap
  void _handleLikeButtonTap() {
    String contentId = '';
    ContentType contentType = ContentType.work;
    bool isCurrentlyLiked = false;
    
    if (_viewingStencils && _currentStencilIndex < _stencils.length) {
      final stencil = _stencils[_currentStencilIndex];
      isCurrentlyLiked = stencil.metrics?.userHasLiked ?? stencil.isLikedByUser;
      contentId = stencil.id;
      contentType = ContentType.stencil;
    } else if (!_viewingStencils && _currentWorkIndex < _works.length) {
      final work = _works[_currentWorkIndex];
      isCurrentlyLiked = work.metrics?.userHasLiked ?? work.userHasLiked;
      contentId = work.id;
      contentType = ContentType.work;
    } else {
      return; // No hay elemento seleccionado
    }
    
    // Record the like/unlike action - esto actualizará la UI mediante el bloc listener
    context.read<AnalyticsBloc>().add(
      AnalyticsEvent.recordContentLike(
        contentId: contentId,
        contentType: contentType,
      ),
    );
    
    // Show like animation
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.favorite, color: Colors.white),
            const SizedBox(width: 8),
            Text(
              !isCurrentlyLiked
                ? (_viewingStencils 
                  ? 'Te gusta este stencil' 
                  : 'Te gusta este tatuaje')
                : (_viewingStencils 
                  ? 'Ya no te gusta este stencil' 
                  : 'Ya no te gusta este tatuaje')
            ),
          ],
        ),
        backgroundColor: redColor,
        duration: const Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
  
  // Método para navegar al perfil del artista desde el visor
  void _navigateToArtistProfile(Artist artist) {
    // Grabar evento de vista del artista
    context.read<AnalyticsBloc>().add(
      AnalyticsEvent.recordArtistView(
        artistId: artist.id,
      ),
    );
    
    // Navegar al perfil
    Navigator.of(context).push(
      ArtistProfilePage.route(artist),
    );
  }
  
  // Método para navegar a la pantalla de cotización con el stencil seleccionado
  void _navigateToQuotation(String artistId) {
    if (_viewingStencils && _currentStencilIndex < _stencils.length) {
      final stencil = _stencils[_currentStencilIndex];
      
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => CreateQuotationPage(
            artistId: artistId,
            stencil: stencil,
          ),
        ),
      ).then((_) {
        // Mostrar mensaje de confirmación al regresar
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Regresaste a la galería'),
            duration: Duration(seconds: 2),
          ),
        );
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return BlocListener<AnalyticsBloc, AnalyticsState>(
      listener: (context, state) {
        // Listen for like updates
        state.maybeWhen(
          contentLikeUpdated: (contentId, contentType, isLiked, likeCount) {
            _updateLikeState(contentId, contentType, isLiked, likeCount);
          },
          orElse: () {},
        );
      },
      child: WillPopScope(
        onWillPop: () async {
          // Al cerrar con botón de atrás, también devuelve las listas actualizadas
          Navigator.of(context).pop({
            'works': _works,
            'stencils': _stencils,
          });
          return false; // Manejamos la navegación manualmente
        },
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Stack(
            children: [
              // Main content
              _buildMainContent(),
              
              // Top back button
              Positioned(
                top: MediaQuery.of(context).padding.top + 10,
                left: 16,
                child: GestureDetector(
                  onTap: () {
                    // Al cerrar, devuelve las listas actualizadas de works y stencils
                    Navigator.of(context).pop({
                      'works': _works,
                      'stencils': _stencils,
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ),
              ),
              
              // End of category overlay if needed
              if (_showEndOfCategory)
                _buildEndOfCategoryOverlay(),
            ],
          ),
        ),
      ),
    );
  }
  
  Widget _buildMainContent() {
    final List<dynamic> items = _viewingStencils ? _stencils : _works;
    
    if (items.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.image_not_supported, size: 48, color: Colors.white),
            const SizedBox(height: 16),
            Text(
              _viewingStencils 
                ? 'No hay stencils disponibles' 
                : 'No hay tatuajes disponibles',
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                if (_viewingStencils && _works.isNotEmpty) {
                  _switchToWorks();
                } else if (!_viewingStencils && _stencils.isNotEmpty) {
                  _switchToStencils();
                } else {
                  Navigator.of(context).pop();
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: redColor,
                foregroundColor: Colors.white,
              ),
              child: Text(
                _viewingStencils && _works.isNotEmpty
                  ? 'Ver tatuajes'
                  : (!_viewingStencils && _stencils.isNotEmpty
                     ? 'Ver stencils'
                     : 'Volver')
              ),
            ),
          ],
        ),
      );
    }
    
    return PageView.builder(
      controller: _pageController,
      scrollDirection: Axis.vertical,
      onPageChanged: _onPageChanged,
      itemCount: items.length + 1, // +1 for end of category
      itemBuilder: (context, index) {
        if (index >= items.length) {
          // End of list placeholder - will be replaced with the overlay
          return Container(color: Colors.black);
        }
        
        final item = items[index];
        return _viewingStencils
            ? _buildStencilView(item as Stencil)
            : _buildWorkView(item as Work);
      },
    );
  }
  
  Widget _buildWorkView(Work work) {
    return GestureDetector(
      onTap: _handleTap,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Image
          Hero(
            tag: 'work_${work.id}',
            child: CachedNetworkImage(
              imageUrl: work.imageUrl,
              fit: BoxFit.contain,
              placeholder: (context, url) => Container(
                color: HSLColor.fromColor(primaryColor).withLightness(0.1).toColor(),
                child: const Center(
                  child: InkerProgressIndicator(color: Colors.white),
                ),
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
          
          // Stats overlay on right side
          Positioned(
            bottom: 120,
            right: 16,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Views stat
                _buildStatItem(
                  Icons.visibility_rounded,
                  '${work.metrics?.viewCount ?? work.viewCount}',
                  'vistas',
                ),
                const SizedBox(height: 20),
                
                // Likes stat
                _buildStatItem(
                  Icons.favorite,
                  '${work.metrics?.likeCount ?? work.likeCount}',
                  'me gusta',
                  isLiked: work.metrics?.userHasLiked ?? work.userHasLiked,
                ),
                const SizedBox(height: 20),
                
                // Date stat
                _buildStatItem(
                  Icons.calendar_today_rounded,
                  '',
                  _formatDate(work.createdAt),
                  iconSize: 22,
                ),
              ],
            ),
          ),
          
          // Bottom info panel
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: _buildInfoPanel(
              title: work.title,
              description: work.description,
              tags: work.tags,
              artist: work.artist,
            ),
          ),
          
          // Swipe guide arrows at first view
          if (_currentWorkIndex == 0 && !_viewingStencils)
            Positioned(
              right: 16,
              top: MediaQuery.of(context).size.height / 2 - 50,
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(36),
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.keyboard_arrow_up,
                      color: Colors.white.withOpacity(0.7),
                      size: 32,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Desliza',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
  
  Widget _buildStencilView(Stencil stencil) {
    return GestureDetector(
      onTap: _handleTap,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Image
          Hero(
            tag: 'stencil_${stencil.id}',
            child: CachedNetworkImage(
              imageUrl: stencil.imageUrl,
              fit: BoxFit.contain,
              placeholder: (context, url) => Container(
                color: HSLColor.fromColor(primaryColor).withLightness(0.1).toColor(),
                child: const Center(
                  child: InkerProgressIndicator(color: Colors.white),
                ),
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
          
          // Stats overlay on right side
          Positioned(
            bottom: 120,
            right: 16,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Views stat
                _buildStatItem(
                  Icons.visibility_rounded,
                  '${stencil.metrics?.viewCount ?? stencil.viewCount}',
                  'vistas',
                ),
                const SizedBox(height: 20),
                
                // Likes stat
                _buildStatItem(
                  Icons.favorite,
                  '${stencil.metrics?.likeCount ?? stencil.likeCount}',
                  'me gusta',
                  isLiked: stencil.metrics?.userHasLiked ?? stencil.isLikedByUser,
                ),
                const SizedBox(height: 20),
                
                // Date stat
                _buildStatItem(
                  Icons.calendar_today_rounded,
                  '',
                  _formatDate(stencil.createdAt),
                  iconSize: 22,
                ),
              ],
            ),
          ),
          
          // Bottom info panel
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: _buildInfoPanel(
              title: stencil.title,
              description: stencil.description,
              tags: stencil.tags,
              artist: stencil.artist,
            ),
          ),
          
          // Swipe guide arrows at first view
          if (_currentStencilIndex == 0 && _viewingStencils)
            Positioned(
              right: 16,
              top: MediaQuery.of(context).size.height / 2 - 50,
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(36),
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.keyboard_arrow_up,
                      color: Colors.white.withOpacity(0.7),
                      size: 32,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Desliza',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
  
  // Build a stat item with icon and text in TikTok style
  Widget _buildStatItem(IconData icon, String count, String label, {double iconSize = 24, bool isLiked = false}) {
    return Column(
      children: [
        GestureDetector(
          onTap: icon == Icons.favorite ? _handleLikeButtonTap : null,
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon, 
              color: icon == Icons.favorite && isLiked ? redColor : Colors.white, 
              size: iconSize
            ),
          ),
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
  
  // Build bottom info panel with title, description and tags
  Widget _buildInfoPanel({
    required String title,
    String? description,
    List<Tag>? tags,
    Artist? artist,
  }) {
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
          // Artist info if available - Show at the top
          if (artist != null) ...[
            GestureDetector(
              onTap: () => _navigateToArtistProfile(artist),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Row(
                  children: [
                    if (artist.profileThumbnail != null)
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(artist.profileThumbnail!),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(color: Colors.white.withOpacity(0.5), width: 1),
                        ),
                      )
                    else
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: redColor.withOpacity(0.3),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white.withOpacity(0.5), width: 1),
                        ),
                        child: const Icon(Icons.person, size: 24, color: Colors.white),
                      ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            artist.firstName != null && artist.lastName != null
                                ? '${artist.firstName} ${artist.lastName}'
                                : artist.username ?? 'Artista',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              shadows: [
                                Shadow(offset: Offset(1, 1), blurRadius: 3, color: Colors.black),
                              ],
                            ),
                          ),
                          if (artist.rating != null)
                            Text(
                              'Rating: ${artist.rating}',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontSize: 12,
                                shadows: const [
                                  Shadow(offset: Offset(1, 1), blurRadius: 3, color: Colors.black),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
          
          // Tags first
          if (tags != null && tags.isNotEmpty)
            SizedBox(
              height: 30,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: tags.map((tag) => _buildTagPill(tag.name)).toList(),
              ),
            ),
          const SizedBox(height: 8),
          
          // Title
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(offset: Offset(1, 1), blurRadius: 3, color: Colors.black),
              ],
            ),
          ),
          
          // Description if available
          if (description != null && description.isNotEmpty) ...[
            const SizedBox(height: 4),
            Text(
              description.length > 120 
                ? '${description.substring(0, 120)}...' 
                : description,
              style: TextStyle(
                color: Colors.white.withOpacity(0.9),
                fontSize: 14,
                shadows: const [
                  Shadow(offset: Offset(1, 1), blurRadius: 3, color: Colors.black),
                ],
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
          
          // Agregar botón de cotización si es un stencil y tiene artista asociado
          if (_viewingStencils && artist != null) ...[
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () => _navigateToQuotation(artist.id),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: redColor,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20, 
                      vertical: 10
                    ),
                    elevation: 5,
                    shadowColor: Colors.black54,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  icon: const Icon(Icons.request_quote, color: Colors.white),
                  label: const Text(
                    'Cotizar este diseño',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ],
          const SizedBox(height: 10),
        ],
      ),
    );
  }
  
  // Build tag pill for horizontal list
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
  
  // Build overlay for end of category
  Widget _buildEndOfCategoryOverlay() {
    return Container(
      color: Colors.black.withOpacity(0.9),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              _viewingStencils 
                ? Icons.auto_awesome_mosaic
                : Icons.brush,
              size: 64,
              color: redColor,
            ),
            const SizedBox(height: 24),
            Text(
              _endOfCategoryMessage,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 48),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _returnToStart,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[800],
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                  ),
                  child: Text(
                    _viewingStencils 
                      ? 'Volver al inicio de stencils'
                      : 'Volver al inicio de tatuajes'
                  ),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: _viewingStencils && _works.isNotEmpty
                    ? _switchToWorks
                    : (!_viewingStencils && _stencils.isNotEmpty
                       ? _switchToStencils
                       : () {
                          // Regresar a la página anterior con los datos actualizados
                          Navigator.of(context).pop({
                            'works': _works,
                            'stencils': _stencils,
                          });
                        }),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: redColor,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                  ),
                  child: Text(
                    _viewingStencils && _works.isNotEmpty
                      ? 'Ver tatuajes'
                      : (!_viewingStencils && _stencils.isNotEmpty
                         ? 'Ver stencils'
                         : 'Volver a la búsqueda')
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  
  // Format date for display
  String _formatDate(DateTime date) {
    final months = [
      'ene', 'feb', 'mar', 'abr', 'may', 'jun',
      'jul', 'ago', 'sep', 'oct', 'nov', 'dic'
    ];
    return '${date.day} ${months[date.month - 1]} ${date.year}';
  }
} 