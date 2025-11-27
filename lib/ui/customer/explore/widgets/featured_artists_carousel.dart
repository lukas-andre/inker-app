import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/customer/artist_profile/artist_profile_page.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';
import 'package:inker_studio/utils/formatters/distance_formatter.dart';

class FeaturedArtistsCarousel extends StatefulWidget {
  final List<Artist> artists;

  const FeaturedArtistsCarousel({
    super.key,
    required this.artists,
  });

  @override
  State<FeaturedArtistsCarousel> createState() => _FeaturedArtistsCarouselState();
}

class _FeaturedArtistsCarouselState extends State<FeaturedArtistsCarousel> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.85,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final cardHeight = screenWidth >= ResponsiveBreakpoints.desktop ? 320.0 : 280.0;

    return Column(
      children: [
        SizedBox(
          height: cardHeight,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemCount: widget.artists.length,
            itemBuilder: (context, index) {
              final artist = widget.artists[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: _FeaturedArtistCard(
                  artist: artist,
                  isActive: index == _currentPage,
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        // Indicadores de página
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.artists.length > 5 ? 5 : widget.artists.length,
            (index) {
              final isActive = index == _currentPage || 
                (widget.artists.length > 5 && _currentPage >= 5 && index == 4);
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: isActive ? 24 : 8,
                height: 8,
                decoration: BoxDecoration(
                  color: isActive
                      ? Theme.of(context).colorScheme.secondary
                      : Theme.of(context).colorScheme.secondary.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(4),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _FeaturedArtistCard extends StatefulWidget {
  final Artist artist;
  final bool isActive;

  const _FeaturedArtistCard({
    required this.artist,
    required this.isActive,
  });

  @override
  State<_FeaturedArtistCard> createState() => _FeaturedArtistCardState();
}

class _FeaturedArtistCardState extends State<_FeaturedArtistCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth >= ResponsiveBreakpoints.desktop;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            ArtistProfilePage.route(widget.artist),
          );
        },
        child: AnimatedScale(
          scale: widget.isActive ? 1.0 : 0.95,
          duration: const Duration(milliseconds: 300),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: _isHovered ? 0.3 : 0.2),
                  blurRadius: _isHovered ? 20 : 10,
                  offset: Offset(0, _isHovered ? 8 : 4),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  // Imagen de fondo
                  Image.network(
                    widget.artist.studioPhoto ?? widget.artist.profileThumbnail ?? '',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
                        child: Icon(
                          Icons.person,
                          size: 60,
                          color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.5),
                        ),
                      );
                    },
                  ),
                  // Gradiente oscuro
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withValues(alpha: 0.7),
                        ],
                      ),
                    ),
                  ),
                  // Contenido
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // Badge de artista destacado
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFDD22E),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.star,
                                size: 16,
                                color: Color(0xFF141D3C),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                S.of(context).featuredArtist,
                                style: TextStyleTheme.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF141D3C),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        // Nombre del artista
                        Text(
                          widget.artist.username ?? 'Artista',
                          style: TextStyleTheme.copyWith(
                            fontSize: isDesktop ? 24 : 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 4),
                        // Rating y distancia
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              size: 18,
                              color: Color(0xFFFDD22E),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              (widget.artist.rating != null ? double.tryParse(widget.artist.rating!)?.toStringAsFixed(1) : null) ?? '0.0',
                              style: TextStyleTheme.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            if (widget.artist.distance != null) ...[
                              const SizedBox(width: 16),
                              Icon(
                                Icons.location_on,
                                size: 16,
                                color: Colors.white.withValues(alpha: 0.8),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                DistanceFormatter.formatDistanceCompact(widget.artist.distance, widget.artist.distanceUnit, context),
                                style: TextStyleTheme.copyWith(
                                  fontSize: 14,
                                  color: Colors.white.withValues(alpha: 0.8),
                                ),
                              ),
                            ],
                          ],
                        ),
                        if (widget.artist.shortDescription != null &&
                            widget.artist.shortDescription!.isNotEmpty &&
                            isDesktop) ...[
                          const SizedBox(height: 8),
                          Text(
                            widget.artist.shortDescription!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyleTheme.copyWith(
                              fontSize: 14,
                              color: Colors.white.withValues(alpha: 0.9),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  // Overlay hover effect
                  if (_isHovered)
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
                      ),
                      child: Center(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Text(
                            S.of(context).seeProfile,
                            style: TextStyleTheme.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}