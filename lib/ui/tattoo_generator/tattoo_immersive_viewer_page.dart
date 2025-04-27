import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:inker_studio/data/api/tattoo_generator/dtos/tattoo_styles.dart';
import 'package:inker_studio/domain/services/tattoo_generator/tatto_generator_service.dart';
import 'package:inker_studio/utils/image/cached_image_manager.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:inker_studio/ui/shared/widgets/buttons.dart';

/// Vertical immersive viewer for generated tattoo images that allows
/// swiping up/down to navigate between items
class TattooImmersiveViewerPage extends StatefulWidget {
  // List of images to navigate through
  final List<TattooGeneratedImageURL> images;
  
  // Prompt and style used to generate
  final String prompt;
  final TattooStyle style;
  
  // Starting position
  final int initialIndex;
  
  const TattooImmersiveViewerPage({
    Key? key,
    required this.images,
    required this.prompt,
    required this.style,
    this.initialIndex = 0,
  }) : super(key: key);

  @override
  State<TattooImmersiveViewerPage> createState() => _TattooImmersiveViewerPageState();
  
  // Factory method to create from TattooGeneratorBloc state
  static Widget fromGeneratorState({
    required List<TattooGeneratedImageURL> images,
    required String prompt,
    required TattooStyle style,
    int initialIndex = 0,
  }) {
    return TattooImmersiveViewerPage(
      images: images,
      prompt: prompt,
      style: style,
      initialIndex: initialIndex,
    );
  }
  
  // Helper method to create route
  static Route route({
    required List<TattooGeneratedImageURL> images,
    required String prompt,
    required TattooStyle style,
    int initialIndex = 0,
  }) {
    return MaterialPageRoute(
      builder: (context) => TattooImmersiveViewerPage(
        images: images,
        prompt: prompt,
        style: style,
        initialIndex: initialIndex,
      ),
    );
  }
}

class _TattooImmersiveViewerPageState extends State<TattooImmersiveViewerPage> {
  // Current viewing state
  late int _currentIndex;
  late List<TattooGeneratedImageURL> _images;
  
  // Controller for the page view
  late PageController _pageController;
  
  // For preloading images
  final _imageCache = CachedImageManager();
  
  // Flag to show end of results message
  bool _showEndOfResults = false;
  
  // For double-tap handling
  DateTime? _lastTapTime;
  
  @override
  void initState() {
    super.initState();
    
    // Initialize state
    _images = List.from(widget.images);
    _currentIndex = widget.initialIndex.clamp(0, _images.isNotEmpty ? _images.length - 1 : 0);
    
    // Initialize page controller
    _pageController = PageController(
      initialPage: _currentIndex,
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
    
    // Preload current image and a few next/previous ones
    final int startIdx = (_currentIndex - 2).clamp(0, _images.length - 1);
    final int endIdx = (_currentIndex + 2).clamp(0, _images.length - 1);
    
    for (int i = startIdx; i <= endIdx; i++) {
      if (i >= 0 && i < _images.length) {
        imagesToPreload.add(_images[i]);
      }
    }
    
    // Preload the images
    if (imagesToPreload.isNotEmpty) {
      _imageCache.preloadImages(imagesToPreload, context);
    }
  }
  
  // Handle page changes
  void _onPageChanged(int index) {
    if (index >= 0 && index < _images.length) {
      setState(() {
        _currentIndex = index;
        _showEndOfResults = false;
      });
    } else if (index >= _images.length) {
      // End of images
      setState(() {
        _showEndOfResults = true;
      });
    }
    
    // Preload images for the new position
    _preloadImages();
  }
  
  // Return to the beginning
  void _returnToStart() {
    setState(() {
      _showEndOfResults = false;
      _currentIndex = 0;
    });
    
    _pageController.jumpToPage(0);
    _preloadImages();
  }
  
  // Generate new images
  void _generateMore() {
    Navigator.of(context).pop();
  }
  
  // Format style name for display
  String _formatStyleName(String styleName) {
    // Convert camelCase to Title Case with spaces
    final result = styleName.replaceAllMapped(
      RegExp(r'([a-z])([A-Z])'),
      (match) => '${match.group(1)} ${match.group(2)}',
    );
    
    return result.substring(0, 1).toUpperCase() + result.substring(1);
  }
  
  // Handle tap actions
  void _handleTap() {
    final now = DateTime.now();
    if (_lastTapTime != null &&
        now.difference(_lastTapTime!).inMilliseconds < 300) {
      // Double tap detected
      _handleDoubleTap();
    }
    
    _lastTapTime = now;
  }
  
  // Handle double tap actions
  void _handleDoubleTap() {
    // Show like animation
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.favorite, color: Colors.white),
            const SizedBox(width: 8),
            const Text('Te gusta este diseño'),
          ],
        ),
        backgroundColor: redColor,
        duration: const Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
  
  // Handle save to favorites
  void _handleSave() {
    // Show saved message
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Diseño guardado en favoritos'),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
      ),
    );
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
              onTap: () {
                Navigator.of(context).pop();
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
          
          // End of results overlay if needed
          if (_showEndOfResults)
            _buildEndOfResultsOverlay(),
        ],
      ),
    );
  }
  
  Widget _buildMainContent() {
    if (_images.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.image_not_supported, size: 48, color: Colors.white),
            const SizedBox(height: 16),
            const Text(
              'No hay imágenes generadas disponibles',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              style: ElevatedButton.styleFrom(
                backgroundColor: redColor,
                foregroundColor: Colors.white,
              ),
              child: const Text('Volver'),
            ),
          ],
        ),
      );
    }
    
    return PageView.builder(
      controller: _pageController,
      scrollDirection: Axis.vertical,
      onPageChanged: _onPageChanged,
      itemCount: _images.length + 1, // +1 for end of list
      itemBuilder: (context, index) {
        if (index >= _images.length) {
          // End of list placeholder - will be replaced with the overlay
          return Container(color: Colors.black);
        }
        
        return _buildImageView(_images[index], index);
      },
    );
  }
  
  Widget _buildImageView(String imageUrl, int index) {
    return GestureDetector(
      onTap: _handleTap,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Image
          Hero(
            tag: 'generated_tattoo_$index',
            child: CachedNetworkImage(
              imageUrl: imageUrl,
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
          
          // Bottom info panel
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: _buildInfoPanel(index),
          ),
          
          // Action buttons on the right
          Positioned(
            right: 16,
            top: MediaQuery.of(context).size.height / 2 - 50,
            child: Column(
              children: [
                // Save button
                _buildActionButton(
                  icon: Icons.favorite,
                  label: 'Me gusta',
                  onTap: _handleSave,
                ),
                const SizedBox(height: 16),
                
                // Generate more button
                _buildActionButton(
                  icon: Icons.add_circle,
                  label: 'Generar',
                  onTap: _generateMore,
                ),
                
                // Swipe indicator for first image
                if (index == 0) ...[
                  const SizedBox(height: 24),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.swipe_vertical,
                          color: Colors.white.withOpacity(0.7),
                          size: 24,
                        ),
                        const SizedBox(height: 4),
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
                ],
              ],
            ),
          ),
          
          // Counter indicator
          Positioned(
            top: MediaQuery.of(context).padding.top + 16,
            right: 16,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                '${index + 1}/${_images.length}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  // Action button on the right side
  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white.withOpacity(0.3)),
            ),
            child: Icon(icon, color: Colors.white, size: 26),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              shadows: [
                Shadow(
                  offset: Offset(1, 1),
                  blurRadius: 2,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
  // Build bottom info panel with prompt and style
  Widget _buildInfoPanel(int index) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Colors.black.withOpacity(0.9),
            Colors.black.withOpacity(0.0),
          ],
          stops: const [0.0, 1.0],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Style pill
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: redColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              _formatStyleName(widget.style.name),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          
          // Prompt
          Text(
            widget.prompt,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              shadows: [
                Shadow(offset: Offset(1, 1), blurRadius: 3, color: Colors.black),
              ],
            ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          
          const SizedBox(height: 16),
          
          // Action button
          SizedBox(
            width: double.infinity,
            child: PrimaryButton(
              text: 'Crear cotización con este diseño',
              onPressed: () {
                // TODO: Navigate to quotation creation with this design
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Feature coming soon!"),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
  
  // Build overlay for end of results
  Widget _buildEndOfResultsOverlay() {
    return Container(
      color: Colors.black.withOpacity(0.9),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.brush,
              size: 64,
              color: redColor,
            ),
            const SizedBox(height: 24),
            const Text(
              '¡Fin de los resultados!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              '¿Quieres ver más diseños de tatuajes?',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
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
                  child: const Text('Volver al inicio'),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: _generateMore,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: redColor,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                  ),
                  child: const Text('Generar más'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
} 