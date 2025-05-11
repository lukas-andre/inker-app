import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';
import 'package:inker_studio/domain/models/work/work.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/utils/image/cached_image_manager.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

/// Immersive viewer for Works or Stencils - can be navigated to via route
class ImmersiveViewerPage extends StatelessWidget {
  final Work? work;
  final Stencil? stencil;
  
  const ImmersiveViewerPage({
    super.key,
    this.work,
    this.stencil,
  });

  @override
  Widget build(BuildContext context) {
    if (work != null) {
      return _ImmersiveWorkViewer(work: work!);
    } else if (stencil != null) {
      return _ImmersiveStencilViewer(stencil: stencil!);
    } else {
      // Fallback in case no item is provided
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body:  Center(
          child: Text(
            S.of(context).couldNotLoadImage,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      );
    }
  }
  
  // Factory constructor to create from route arguments
  static Widget fromArguments(BuildContext context, Object? arguments) {
    if (arguments is Map<String, dynamic>) {
      final work = arguments['work'] as Work?;
      final stencil = arguments['stencil'] as Stencil?;
      
      return ImmersiveViewerPage(
        work: work,
        stencil: stencil,
      );
    }
    
    // Fallback
    return const ImmersiveViewerPage();
  }
}

/// Immersive full-screen viewer for Works
class _ImmersiveWorkViewer extends StatefulWidget {
  final Work work;
  
  const _ImmersiveWorkViewer({
    required this.work,
  });
  
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
                          S.of(context).couldNotLoadImage,
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
                        child:  Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.star, color: Colors.white, size: 14),
                            const SizedBox(width: 4),
                            Text(
                              S.of(context).featured,
                              style: const TextStyle(
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
                  S.of(context).views,
                ),
                const SizedBox(height: 20),
                
                // Likes stat
                _buildTiktokStat(
                  Icons.favorite,
                  '${work.likeCount}',
                  S.of(context).likes,
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
                  S.of(context).description,
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
                  S.of(context).tags,
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
      S.of(context).january, S.of(context).february, S.of(context).march, S.of(context).april, S.of(context).may, S.of(context).june,
      S.of(context).july, S.of(context).august, S.of(context).september, S.of(context).october, S.of(context).november, S.of(context).december
    ];
    return '${date.day} ${months[date.month - 1]} ${date.year}';
  }
}

/// Immersive full-screen viewer for Stencils
class _ImmersiveStencilViewer extends StatefulWidget {
  final Stencil stencil;
  
  const _ImmersiveStencilViewer({
    required this.stencil,
  });
  
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
                          S.of(context).couldNotLoadImage,
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
                        child:  Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.star, color: Colors.white, size: 14),
                            const SizedBox(width: 4),
                            Text(
                              S.of(context).featured,
                              style: const TextStyle(
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
                  S.of(context).views,
                ),
                const SizedBox(height: 20),
                
                // Likes stat
                _buildTiktokStat(
                  Icons.favorite,
                  '${stencil.likeCount}',
                  S.of(context).likes,
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
                  S.of(context).description,
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
                  S.of(context).tags,
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
      S.of(context).january, S.of(context).february, S.of(context).march, S.of(context).april, S.of(context).may, S.of(context).june,
      S.of(context).july, S.of(context).august, S.of(context).september, S.of(context).october, S.of(context).november, S.of(context).december
    ];
    return '${date.day} ${months[date.month - 1]} ${date.year}';
  }
} 