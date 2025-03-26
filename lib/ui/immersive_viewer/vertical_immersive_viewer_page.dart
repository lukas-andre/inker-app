import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:inker_studio/domain/blocs/customer/inspiration_search/inspiration_search_bloc.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';
import 'package:inker_studio/domain/models/work/work.dart';
import 'package:inker_studio/utils/image/cached_image_manager.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

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

  const VerticalImmersiveViewerPage({
    Key? key,
    required this.works,
    required this.stencils,
    this.initialWorkIndex = 0,
    this.initialStencilIndex = 0,
    this.startWithStencils = false,
  }) : super(key: key);

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
    );
  }
}

class _VerticalImmersiveViewerPageState extends State<VerticalImmersiveViewerPage> {
  // Current viewing state
  late bool _viewingStencils;
  late int _currentWorkIndex;
  late int _currentStencilIndex;
  
  // Controller for the page view
  late PageController _pageController;
  
  // For preloading images
  final _imageCache = CachedImageManager();
  
  // Flag to show end of category message
  bool _showEndOfCategory = false;
  String _endOfCategoryMessage = '';
  
  // Flag to track double tap for like
  DateTime? _lastTapTime;
  
  @override
  void initState() {
    super.initState();
    
    // Initialize state
    _viewingStencils = widget.startWithStencils && widget.stencils.isNotEmpty;
    _currentWorkIndex = widget.initialWorkIndex.clamp(0, widget.works.isNotEmpty ? widget.works.length - 1 : 0);
    _currentStencilIndex = widget.initialStencilIndex.clamp(0, widget.stencils.isNotEmpty ? widget.stencils.length - 1 : 0);
    
    // Initialize page controller with the appropriate initial page
    _pageController = PageController(
      initialPage: _viewingStencils ? _currentStencilIndex : _currentWorkIndex,
    );
    
    // Preload nearby images
    _preloadImages();
  }
  
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  
  // Preload images for smoother navigation
  void _preloadImages() {
    final List<String> imagesToPreload = [];
    
    if (_viewingStencils) {
      // Preload current stencil and a few next/previous ones
      final int startIdx = (_currentStencilIndex - 2).clamp(0, widget.stencils.length - 1);
      final int endIdx = (_currentStencilIndex + 2).clamp(0, widget.stencils.length - 1);
      
      for (int i = startIdx; i <= endIdx; i++) {
        if (i >= 0 && i < widget.stencils.length) {
          imagesToPreload.add(widget.stencils[i].imageUrl);
        }
      }
      
      // If near the end of stencils, prepare to show first work
      if (_currentStencilIndex >= widget.stencils.length - 3 && widget.works.isNotEmpty) {
        imagesToPreload.add(widget.works[0].imageUrl);
      }
    } else {
      // Preload current work and a few next/previous ones
      final int startIdx = (_currentWorkIndex - 2).clamp(0, widget.works.length - 1);
      final int endIdx = (_currentWorkIndex + 2).clamp(0, widget.works.length - 1);
      
      for (int i = startIdx; i <= endIdx; i++) {
        if (i >= 0 && i < widget.works.length) {
          imagesToPreload.add(widget.works[i].imageUrl);
        }
      }
      
      // If near the end of works, prepare to show first stencil
      if (_currentWorkIndex >= widget.works.length - 3 && widget.stencils.isNotEmpty) {
        imagesToPreload.add(widget.stencils[0].imageUrl);
      }
    }
    
    // Preload the images
    if (imagesToPreload.isNotEmpty) {
      _imageCache.preloadImages(imagesToPreload, context);
    }
  }
  
  // Handle page changes
  void _onPageChanged(int index) {
    if (_viewingStencils) {
      if (index >= 0 && index < widget.stencils.length) {
        setState(() {
          _currentStencilIndex = index;
          _showEndOfCategory = false;
          _endOfCategoryMessage = '';
        });
      } else if (index >= widget.stencils.length) {
        // End of stencils
        setState(() {
          _showEndOfCategory = true;
          _endOfCategoryMessage = 'Fin de Stencils';
        });
      }
    } else {
      if (index >= 0 && index < widget.works.length) {
        setState(() {
          _currentWorkIndex = index;
          _showEndOfCategory = false;
          _endOfCategoryMessage = '';
        });
      } else if (index >= widget.works.length) {
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
    if (widget.works.isEmpty) return;
    
    setState(() {
      _viewingStencils = false;
      _currentWorkIndex = 0;
      _showEndOfCategory = false;
      _endOfCategoryMessage = '';
    });
    
    _pageController = PageController(initialPage: 0);
    _preloadImages();
  }
  
  // Switch to viewing stencils
  void _switchToStencils() {
    if (widget.stencils.isEmpty) return;
    
    setState(() {
      _viewingStencils = true;
      _currentStencilIndex = 0;
      _showEndOfCategory = false;
      _endOfCategoryMessage = '';
    });
    
    _pageController = PageController(initialPage: 0);
    _preloadImages();
  }
  
  // Return to the beginning of the current category
  void _returnToStart() {
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
    // Show like animation
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.favorite, color: Colors.white),
            const SizedBox(width: 8),
            Text(
              _viewingStencils 
                ? 'Te gusta este stencil' 
                : 'Te gusta este tatuaje'
            ),
          ],
        ),
        backgroundColor: redColor,
        duration: const Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
      ),
    );
    
    // Here you would typically call an API to register the like
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              onTap: () => Navigator.of(context).pop(),
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
    );
  }
  
  Widget _buildMainContent() {
    final List<dynamic> items = _viewingStencils ? widget.stencils : widget.works;
    
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
                if (_viewingStencils && widget.works.isNotEmpty) {
                  _switchToWorks();
                } else if (!_viewingStencils && widget.stencils.isNotEmpty) {
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
                _viewingStencils && widget.works.isNotEmpty
                  ? 'Ver tatuajes'
                  : (!_viewingStencils && widget.stencils.isNotEmpty
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
                  '${work.viewCount}',
                  'vistas',
                ),
                const SizedBox(height: 20),
                
                // Likes stat
                _buildStatItem(
                  Icons.favorite,
                  '${work.likeCount}',
                  'me gusta',
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
                  '${stencil.viewCount}',
                  'vistas',
                ),
                const SizedBox(height: 20),
                
                // Likes stat
                _buildStatItem(
                  Icons.favorite,
                  '${stencil.likeCount}',
                  'me gusta',
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
  Widget _buildStatItem(IconData icon, String count, String label, {double iconSize = 24}) {
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
  
  // Build bottom info panel with title, description and tags
  Widget _buildInfoPanel({
    required String title,
    String? description,
    List<dynamic>? tags,
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
          if (tags != null && tags.isNotEmpty)
            SizedBox(
              height: 30,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: tags.map((tag) => _buildTagPill(tag.name)).toList(),
              ),
            ),
          const SizedBox(height: 8),
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
                  onPressed: _viewingStencils && widget.works.isNotEmpty
                    ? _switchToWorks
                    : (!_viewingStencils && widget.stencils.isNotEmpty
                       ? _switchToStencils
                       : () => Navigator.of(context).pop()),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: redColor,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                  ),
                  child: Text(
                    _viewingStencils && widget.works.isNotEmpty
                      ? 'Ver tatuajes'
                      : (!_viewingStencils && widget.stencils.isNotEmpty
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