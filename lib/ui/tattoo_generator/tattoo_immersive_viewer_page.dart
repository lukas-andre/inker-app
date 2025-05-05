import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/api/tattoo_generator/dtos/tattoo_styles.dart';
import 'package:inker_studio/domain/blocs/analytics/analytics_bloc.dart';
import 'package:inker_studio/domain/blocs/tattoo_generator/tattoo_generator_bloc.dart';
import 'package:inker_studio/domain/models/analytics/content_type.dart';
import 'package:inker_studio/domain/models/analytics/view_source.dart';
import 'package:inker_studio/domain/services/tattoo_generator/tatto_generator_service.dart';
import 'package:inker_studio/utils/image/cached_image_manager.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:inker_studio/ui/shared/widgets/buttons.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/data/api/tattoo_generator/dtos/user_tattoo_design_dto.dart';
import 'package:inker_studio/ui/quotation/create_open_quotation_page.dart';

/// Immersive viewer for generated tattoo images with Instagram-like UI
/// Horizontal swipes to navigate between images within a design
/// Vertical swipes to navigate between different designs
class TattooImmersiveViewerPage extends StatefulWidget {
  // List of images to navigate through
  final List<String> images;
  
  // Prompt and style used to generate
  final String prompt;
  final TattooStyle style;
  
  // Starting position
  final int initialIndex;
  
  // Optional design ID if this is from saved designs
  final String? designId;
  final bool? isFavorite;
  
  // Additional designs to navigate through vertically (optional)
  final List<UserTattooDesignDto>? allDesigns;
  final int? currentDesignIndex;
  
  final bool? selectForQuotation;
  final void Function(Map<String, dynamic> result)? onSelectDesign;
  
  const TattooImmersiveViewerPage({
    Key? key,
    required this.images,
    required this.prompt,
    required this.style,
    this.initialIndex = 0,
    this.designId,
    this.isFavorite,
    this.allDesigns,
    this.currentDesignIndex,
    this.selectForQuotation,
    this.onSelectDesign,
  }) : super(key: key);

  @override
  State<TattooImmersiveViewerPage> createState() => _TattooImmersiveViewerPageState();
  
  // Factory method to create from TattooGeneratorBloc state
  static Widget fromGeneratorState({
    required List<GeneratedTattooImage> images,
    required String prompt,
    required TattooStyle style,
    int initialIndex = 0,
    String? designId,
    bool? isFavorite,
  }) {
    return TattooImmersiveViewerPage(
      images: images.map((img) => img.imageUrl).toList(),
      prompt: prompt,
      style: style,
      initialIndex: initialIndex,
      designId: designId ?? (images.isNotEmpty ? images[0].imageId : null),
      isFavorite: isFavorite,
    );
  }
}

class _TattooImmersiveViewerPageState extends State<TattooImmersiveViewerPage> {
  // Current viewing state for horizontal image navigation
  late int _currentImageIndex;
  late List<String> _images;
  
  // Current design index for vertical design navigation
  late int _currentDesignIndex;
  late List<UserTattooDesignDto>? _allDesigns;
  
  // Controller for the page views
  late PageController _horizontalPageController;
  late PageController? _verticalPageController;
  
  // For preloading images
  final _imageCache = CachedImageManager();
  
  // For double-tap handling
  DateTime? _lastTapTime;
  
  // For tracking favorite state
  bool _isFavorite = false;
  String? _designId;
  
  // For controlling the current design data
  String _currentPrompt = '';
  TattooStyle _currentStyle = TattooStyle.blackwork;
  
  @override
  void initState() {
    super.initState();
    
    // Initialize single design data
    _images = List.from(widget.images);
    _currentImageIndex = widget.initialIndex.clamp(0, _images.isNotEmpty ? _images.length - 1 : 0);
    _currentPrompt = widget.prompt;
    _currentStyle = widget.style;
    
    // Initialize design collection data if available
    _allDesigns = widget.allDesigns;
    _currentDesignIndex = widget.currentDesignIndex ?? 0;
    
    // Initialize page controllers
    _horizontalPageController = PageController(initialPage: _currentImageIndex);
    
    if (_allDesigns != null && _allDesigns!.isNotEmpty) {
      _verticalPageController = PageController(initialPage: _currentDesignIndex);
    } else {
      _verticalPageController = null;
    }
    
    // Initialize favorite state
    _isFavorite = widget.isFavorite ?? false;
    _designId = widget.designId;
    
    // Preload images
    _preloadImages();
  }
  
  @override
  void dispose() {
    _horizontalPageController.dispose();
    _verticalPageController?.dispose();
    super.dispose();
  }
  
  // Preload nearby images for current design
  void _preloadImages() {
    if (_images.isEmpty) return;
    
    final List<String> imagesToPreload = [];
    
    // Preload all images in the current design (usually just 2-3 images)
    for (int i = 0; i < _images.length; i++) {
      imagesToPreload.add(_images[i]);
    }
    
    // Preload images from nearby designs if available
    if (_allDesigns != null && _allDesigns!.isNotEmpty) {
      // Preload previous design's first image
      if (_currentDesignIndex > 0) {
        final prevDesign = _allDesigns![_currentDesignIndex - 1];
        if (prevDesign.imageUrls.isNotEmpty) {
          imagesToPreload.add(prevDesign.imageUrls[0]);
        }
      }
      
      // Preload next design's first image
      if (_currentDesignIndex < _allDesigns!.length - 1) {
        final nextDesign = _allDesigns![_currentDesignIndex + 1];
        if (nextDesign.imageUrls.isNotEmpty) {
          imagesToPreload.add(nextDesign.imageUrls[0]);
        }
      }
    }
    
    // Preload the images
    if (imagesToPreload.isNotEmpty) {
      _imageCache.preloadImages(imagesToPreload, context);
    }
  }
  
  // Handle horizontal page changes
  void _onHorizontalPageChanged(int index) {
    setState(() {
      _currentImageIndex = index;
    });
  }
  
  // Handle vertical page changes
  void _onVerticalPageChanged(int index) {
    if (_allDesigns == null || _allDesigns!.isEmpty) return;
    
    if (index != _currentDesignIndex) {
      final design = _allDesigns![index];
      
      setState(() {
        _currentDesignIndex = index;
        _images = List.from(design.imageUrls);
        _currentImageIndex = 0;
        _currentPrompt = design.userQuery;
        _currentStyle = design.getTattooStyle();
        _isFavorite = design.isFavorite ?? false;
        _designId = design.id;
      });
      
      // Reset horizontal page controller
      _horizontalPageController.jumpToPage(0);
      
      // Preload images for new design
      _preloadImages();
    }
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
    _toggleFavorite();
  }
  
  // Handle save to favorites
  void _toggleFavorite() {
    if (_designId == null) {
      // Show saved message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Design saved to your generated designs'),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 1),
          behavior: SnackBarBehavior.floating,
        ),
      );
      return;
    }
    
    setState(() {
      _isFavorite = !_isFavorite;
    });
    
    // Toggle in the bloc
    context.read<TattooGeneratorBloc>().add(
      TattooGeneratorEvent.toggleFavorite(
        designId: _designId!,
        isFavorite: _isFavorite,
      ),
    );
    
    // Show confirmation
    final s = S.of(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(_isFavorite 
          ? s.designAddedToFavorites
          : s.designRemovedFromFavorites),
        backgroundColor: _isFavorite ? Colors.green : redColor,
        duration: const Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _buildMainContent(),
    );
  }
  
  Widget _buildMainContent() {
    // If we have multiple designs to navigate through
    if (_allDesigns != null && _allDesigns!.isNotEmpty && _verticalPageController != null) {
      return PageView.builder(
        controller: _verticalPageController!,
        scrollDirection: Axis.vertical,
        onPageChanged: _onVerticalPageChanged,
        itemCount: _allDesigns!.length,
        itemBuilder: (context, designIndex) {
          // If this is the current design, show its actual content
          if (designIndex == _currentDesignIndex) {
            return _buildSingleDesignView();
          }
          
          // For other designs, show a placeholder until scrolled to
          final design = _allDesigns![designIndex];
          return Container(
            color: Colors.black,
            child: Center(
              child: CachedNetworkImage(
                imageUrl: design.imageUrls.isNotEmpty ? design.imageUrls[0] : '',
                fit: BoxFit.contain,
                color: Colors.black.withOpacity(0.5),
                colorBlendMode: BlendMode.darken,
              ),
            ),
          );
        },
      );
    }
    
    // If we have only one design to display
    return _buildSingleDesignView();
  }
  
  Widget _buildSingleDesignView() {
    if (_images.isEmpty) {
      return _buildEmptyState();
    }
    
    return Stack(
      children: [
        // Horizontal PageView for images
        PageView.builder(
          controller: _horizontalPageController,
          scrollDirection: Axis.horizontal,
          onPageChanged: _onHorizontalPageChanged,
          itemCount: _images.length,
          itemBuilder: (context, imageIndex) {
            return GestureDetector(
              onTap: _handleTap,
              child: _buildImageView(_images[imageIndex], imageIndex),
            );
          },
        ),
        
        // UI Overlays
        _buildOverlayUI(),
      ],
    );
  }
  
  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.image_not_supported, size: 48, color: Colors.white),
          const SizedBox(height: 16),
          const Text(
            'No images available',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            style: ElevatedButton.styleFrom(
              backgroundColor: redColor,
              foregroundColor: Colors.white,
            ),
            child: const Text('Back'),
          ),
        ],
      ),
    );
  }
  
  Widget _buildImageView(String imageUrl, int index) {
    // Generate the appropriate hero tag based on the source
    String heroTag;
    if (_designId != null) {
      // From history/favorites
      heroTag = 'design_${_designId}_$index';
    } else {
      // From generate tab
      heroTag = 'generated_tattoo_${_designId ?? ""}_$index';
    }
    
    return Hero(
      tag: heroTag,
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
                'Failed to load image',
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
    );
  }
  
  Widget _buildOverlayUI() {
    return SafeArea(
      child: Stack(
        children: [
          // Top bar with back button and counter
          Positioned(
            top: 16,
            left: 16,
            right: 16,
            child: Row(
              children: [
                // Back button
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ),
                const Spacer(),
                // Counter indicator
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Horizontal counter
                      Text(
                        '${_currentImageIndex + 1}/${_images.length}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Vertical counter if available
                      if (_allDesigns != null && _allDesigns!.isNotEmpty) ...[
                        const Text(
                          ' • ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          '${_currentDesignIndex + 1}/${_allDesigns!.length}',
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          // Vertical navigation arrows if multiple designs
          if (_allDesigns != null && _allDesigns!.length > 1) ...[
            // Previous design button (top)
            if (_currentDesignIndex > 0)
              Positioned(
                top: 80,
                left: 0,
                right: 0,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      // Jump to previous design
                      _verticalPageController?.animateToPage(
                        _currentDesignIndex - 1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_upward,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                ),
              ),
              
            // Next design button (bottom)
            if (_currentDesignIndex < _allDesigns!.length - 1)
              Positioned(
                bottom: 140, // Position above the info panel
                left: 0,
                right: 0,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      // Jump to next design
                      _verticalPageController?.animateToPage(
                        _currentDesignIndex + 1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.6),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_downward,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                ),
              ),
          ],
          
          // Action buttons on the right
          Positioned(
            right: 16,
            top: MediaQuery.of(context).size.height / 2 - 50,
            child: Column(
              children: [
                // Favorite button
                _buildActionButton(
                  icon: _isFavorite ? Icons.favorite : Icons.favorite_border,
                  label: _isFavorite ? 'Favorite' : 'Like',
                  onTap: _toggleFavorite,
                  iconColor: _isFavorite ? redColor : Colors.white,
                ),
                
                // Navigation indicators
                const SizedBox(height: 24),
                // Horizontal swipe indicator if multiple images
                if (_images.length > 1)
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Icon(
                      Icons.swipe,
                      color: Colors.white70,
                      size: 20,
                    ),
                  ),
                  
                // Vertical swipe indicator if multiple designs
                if (_allDesigns != null && _allDesigns!.length > 1) ...[
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Icon(
                      Icons.swipe_vertical,
                      color: Colors.white70,
                      size: 20,
                    ),
                  ),
                ],
              ],
            ),
          ),
          
          // Bottom dot indicators for horizontal swiping
          if (_images.length > 1)
            Positioned(
              bottom: 100, // Position above the info panel
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(_images.length, (index) {
                  return Container(
                    width: 8,
                    height: 8,
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentImageIndex == index
                          ? Colors.white
                          : Colors.white.withOpacity(0.4),
                    ),
                  );
                }),
              ),
            ),
          
          // Bottom info panel
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: _buildInfoPanel(),
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
    Color? iconColor,
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
            child: Icon(icon, color: iconColor ?? Colors.white, size: 26),
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
  Widget _buildInfoPanel() {
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
              _formatStyleName(_currentStyle.name),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          
          // Prompt
          Text(
            _currentPrompt,
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
          
          // Action button contextual
          SizedBox(
            width: double.infinity,
            child: Builder(
              builder: (context) {
                if (widget.selectForQuotation == true) {
                  return PrimaryButton(
                    text: 'Seleccionar este diseño',
                    onPressed: () {
                      final design = _allDesigns != null && _allDesigns!.isNotEmpty
                          ? _allDesigns![_currentDesignIndex]
                          : null;
                      final imageUrl = _images.isNotEmpty ? _images[_currentImageIndex] : null;
                      final result = {
                        'design': design,
                        'imageUrl': imageUrl,
                      };
                      if (widget.onSelectDesign != null) {
                        widget.onSelectDesign!(result);
                      }
                      Navigator.of(context).pop(result);
                    },
                  );
                } else {
                  return PrimaryButton(
                    text: 'Crear cotización con este diseño',
                    onPressed: () {
                      final design = _allDesigns != null && _allDesigns!.isNotEmpty
                          ? _allDesigns![_currentDesignIndex]
                          : null;
                      final imageUrl = _images.isNotEmpty ? _images[_currentImageIndex] : null;
                      if (design == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('No se pudo obtener el diseño.')),
                        );
                        return;
                      }
                      final result = {
                        'design': design,
                        'imageUrl': imageUrl,
                      };
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CreateOpenQuotationProvider(
                            initialTattooDesign: design,
                            initialTattooDesignImageUrl: imageUrl,
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
} 