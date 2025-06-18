import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/ui/customer/artist_profile/artist_profile_page.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';
import 'package:inker_studio/utils/formatters/distance_formatter.dart';

class ArtistItemWeb extends StatefulWidget {
  final Artist artist;

  const ArtistItemWeb({
    super.key,
    required this.artist,
  });

  @override
  State<ArtistItemWeb> createState() => _ArtistItemWebState();
}

class _ArtistItemWebState extends State<ArtistItemWeb> with SingleTickerProviderStateMixin {
  bool _isHovered = false;
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 1.05,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth >= ResponsiveBreakpoints.desktop;
    final rating = double.tryParse(widget.artist.rating ?? '0') ?? 0.0;
    final isFeatured = rating >= 4.5;

    return MouseRegion(
      onEnter: (_) {
        setState(() => _isHovered = true);
        _animationController.forward();
      },
      onExit: (_) {
        setState(() => _isHovered = false);
        _animationController.reverse();
      },
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            ArtistProfilePage.route(widget.artist),
          );
        },
        child: AnimatedBuilder(
          animation: _scaleAnimation,
          builder: (context, child) {
            return Transform.scale(
              scale: _scaleAnimation.value,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: _isHovered ? 0.15 : 0.08),
                      blurRadius: _isHovered ? 12 : 6,
                      offset: Offset(0, _isHovered ? 4 : 2),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Stack(
                    children: [
                      // Contenido principal
                      Container(
                        color: Theme.of(context).colorScheme.surface,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Imagen de estudio
                            AspectRatio(
                              aspectRatio: 1.2,
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.network(
                                    widget.artist.studioPhoto ?? widget.artist.profileThumbnail ?? '',
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
                                        child: Icon(
                                          Icons.person,
                                          size: isDesktop ? 50 : 40,
                                          color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.5),
                                        ),
                                      );
                                    },
                                  ),
                                  // Badge de artista destacado
                                  if (isFeatured)
                                    Positioned(
                                      top: 8,
                                      right: 8,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFFDD22E),
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              size: 12,
                                              color: Color(0xFF141D3C),
                                            ),
                                            const SizedBox(width: 2),
                                            Text(
                                              'Destacado',
                                              style: TextStyleTheme.copyWith(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                color: const Color(0xFF141D3C),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  // Avatar del artista
                                  Positioned(
                                    bottom: -1,
                                    left: 12,
                                    child: Container(
                                      padding: const EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        color: Theme.of(context).colorScheme.surface,
                                        shape: BoxShape.circle,
                                      ),
                                      child: CircleAvatar(
                                        radius: isDesktop ? 28 : 24,
                                        backgroundColor: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.2),
                                        backgroundImage: widget.artist.profileThumbnail != null
                                            ? NetworkImage(widget.artist.profileThumbnail!)
                                            : null,
                                        child: widget.artist.profileThumbnail == null
                                            ? Icon(
                                                Icons.person,
                                                size: isDesktop ? 28 : 24,
                                                color: Theme.of(context).colorScheme.secondary,
                                              )
                                            : null,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Información del artista
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(12, 40, 12, 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Nombre
                                    Text(
                                      widget.artist.username ?? 'Artista',
                                      style: TextStyleTheme.copyWith(
                                        fontSize: isDesktop ? 16 : 14,
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context).colorScheme.onSurface,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(height: 4),
                                    // Rating y distancia
                                    Row(
                                      children: [
                                        if (rating > 4.0) ...[
                                          Icon(
                                            Icons.star,
                                            size: 14,
                                            color: const Color(0xFFFDD22E),
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            rating.toStringAsFixed(1),
                                            style: TextStyleTheme.copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.8),
                                            ),
                                          ),
                                        ],
                                        if (widget.artist.distance != null) ...[
                                          if (rating > 4.0) const SizedBox(width: 8),
                                          Icon(
                                            Icons.location_on,
                                            size: 14,
                                            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
                                          ),
                                          const SizedBox(width: 2),
                                          Text(
                                            DistanceFormatter.formatDistanceCompact(widget.artist.distance, widget.artist.distanceUnit, context),
                                            style: TextStyleTheme.copyWith(
                                              fontSize: 12,
                                              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
                                            ),
                                          ),
                                        ],
                                      ],
                                    ),
                                    // Descripción breve (solo en desktop)
                                    if (isDesktop && 
                                        widget.artist.shortDescription != null && 
                                        widget.artist.shortDescription!.isNotEmpty) ...[
                                      const SizedBox(height: 8),
                                      Text(
                                        widget.artist.shortDescription!,
                                        style: TextStyleTheme.copyWith(
                                          fontSize: 12,
                                          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Overlay de hover
                      if (_isHovered)
                        Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
                            ),
                            child: Center(
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.secondary,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  'Ver Perfil',
                                  style: TextStyleTheme.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
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
        ),
      ),
    );
  }
}