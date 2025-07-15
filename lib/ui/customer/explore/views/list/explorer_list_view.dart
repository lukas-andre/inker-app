import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artists_list/artists_list_bloc.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/customer/artist_profile/artist_profile_page.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/bloc_navigator.dart';
import 'package:inker_studio/utils/constants.dart' show defaultProfileImageLink;
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/formatters/distance_formatter.dart';

class ExplorerListView extends StatelessWidget {
  const ExplorerListView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface),
      width: size.width,
      child: SafeArea(
        child: Column(
          children: [
            // Ya no necesitamos la barra de búsqueda aquí, se ha movido al AppBar
            Expanded(
              child: ExplorerResultList(),
            ),
          ],
        ),
      ),
    );
  }
}

class ExplorerResultList extends StatelessWidget {
  const ExplorerResultList({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<ArtistsListBloc, ArtistsListState>(
        builder: (context, state) {
          if (state is ArtistsListStateInitial) {
            return const InkerProgressIndicator();
          }

          return GridView.count(
            key: const Key('artistGridView'),
            crossAxisCount: 2,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            childAspectRatio:
                0.75, // Ajustamos la proporción para mostrar más de la imagen
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: List.generate(
              state.artists.length,
              (index) => _ArtistGridItem(
                key: Key('artistItem$index'),
                artist: state.artists[index],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _ArtistGridItem extends StatelessWidget {
  const _ArtistGridItem({
    super.key,
    required this.artist,
  });

  final Artist artist;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => InkerNavigator.push(
        context,
        ArtistProfilePage(artist: artist),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context)
              .colorScheme
              .primary, // Color más oscuro para la card
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              blurRadius: 10,
              spreadRadius: 1,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Imagen del estudio
              Expanded(
                flex: 7, // Mayor proporción de imagen
                child: _StudioImage(
                  imageUrl: artist.studioPhoto,
                  fallbackUrl: artist.profileThumbnail,
                ),
              ),
              // Información del artista con diseño mejorado
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Theme.of(context).colorScheme.primary.withValues(alpha: 0.9),
                      Theme.of(context).colorScheme.primary,
                    ],
                  ),
                ),
                child: _ArtistInfo(artist: artist),
              ),
              // Indicador para artistas destacados (si tienen cierta calificación)
              if (artist.rating != null && double.parse(artist.rating!) >= 4.5)
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.star, color: Colors.white, size: 14),
                      const SizedBox(width: 4),
                      Text(
                        S.of(context).featuredArtist,
                        style: TextStyleTheme.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StudioImage extends StatelessWidget {
  const _StudioImage({
    required this.imageUrl,
    required this.fallbackUrl,
  });

  final String? imageUrl;
  final String? fallbackUrl;

  @override
  Widget build(BuildContext context) {
    // Use studio photo first, then profile thumbnail, then show placeholder
    final finalUrl = imageUrl ?? fallbackUrl;
    
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(25)),
      child: finalUrl != null
          ? CachedNetworkImage(
              imageUrl: finalUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              placeholder: (context, url) => Container(
                color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
                child: const Center(
                  child: InkerProgressIndicator(radius: 10),
                ),
              ),
              errorWidget: (context, url, error) => Container(
                color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.5),
                ),
              ),
            )
          : Container(
              color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
              child: Icon(
                Icons.person,
                size: 50,
                color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.5),
              ),
            ),
    );
  }
}

class _ArtistInfo extends StatelessWidget {
  const _ArtistInfo({
    required this.artist,
  });

  final Artist artist;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Fila superior con avatar y nombre de usuario
        Row(
          children: [
            // Avatar con borde para destacar
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                  width: 2,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context)
                        .colorScheme
                        .secondary
                        .withValues(alpha: 0.3),
                    blurRadius: 4,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(
                  artist.profileThumbnail ??
                      defaultProfileImageLink,
                ),
              ),
            ),
            const SizedBox(width: 10),
            // Información principal
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '@${artist.username!}',
                    style: TextStyleTheme.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 2),
                  // Distancia con icono y estilo más moderno
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 12,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      const SizedBox(width: 2),
                      Text(
                        DistanceFormatter.formatDistanceCompact(artist.distance, artist.distanceUnit, context),
                        style: TextStyleTheme.copyWith(
                          fontSize: 12,
                          color: Colors.white.withValues(alpha: 0.8),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        // Calificación con estrellas si está disponible y es mayor a 4
        if (artist.rating != null && double.parse(artist.rating!) > 4)
          Row(
            children: [
              ...List.generate(5, (index) {
                return Icon(
                  index < (double.parse(artist.rating!).round())
                      ? Icons.star
                      : Icons.star_border,
                  color: Theme.of(context).colorScheme.secondary,
                  size: 14,
                );
              }),
              const SizedBox(width: 5),
              Text(
                artist.rating!,
                style: TextStyleTheme.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
      ],
    );
  }
}
