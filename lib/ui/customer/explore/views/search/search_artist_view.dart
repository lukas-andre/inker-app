import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/search_artist/search_artists_bloc.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/ui/customer/explore/views/list/widgets/explorer_search_bar.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class SearchArtistView extends StatelessWidget {
  const SearchArtistView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Material(
      // Agregamos el widget Material aquí
      type: MaterialType.transparency,
      child: Container(
        decoration: BoxDecoration(color: primaryColor),
        width: size.width,
        child: SafeArea(
          child: Column(
            children: [
              ExplorerSearchBar(
                onSearch: (query) {
                  context.read<SearchArtistsBloc>().add(
                        SearchArtistsEvent.search(query: query),
                      );
                },
              ),
              Expanded(
                child: BlocBuilder<SearchArtistsBloc, SearchArtistsState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => const Center(
                        child: Text(
                          'Busca artistas por nombre o estilo',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      success: (artists, metadata, query) => GridView.count(
                        crossAxisCount: 2,
                        padding: const EdgeInsets.all(10),
                        childAspectRatio: 0.65,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 10,
                        children: List.generate(
                          artists.length,
                          (index) => _ArtistGridItem(
                            key: Key('searchArtistItem$index'),
                            artist: artists[index],
                          ),
                        ),
                      ),
                      error: (message) => Center(
                        child: Text(
                          'Error: $message',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SearchResultGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<SearchArtistsBloc, SearchArtistsState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(
              child: Text(
                'Busca artistas por nombre o estilo',
                style: TextStyleTheme.instance,
              ),
            ),
            loading: () => const Center(
              child: InkerProgressIndicator(),
            ),
            success: (artists, metadata, query) => GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(10),
              childAspectRatio: 0.65,
              crossAxisSpacing: 15,
              mainAxisSpacing: 10,
              children: List.generate(
                artists.length,
                (index) => _ArtistGridItem(
                  key: Key('searchArtistItem$index'),
                  artist: artists[index],
                ),
              ),
            ),
            error: (message) => Center(
              child: Text(
                'Error: $message',
                style: TextStyleTheme.instance,
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
      // onTap: () => InkerNavigator.push(
      //   context,
      //   const ArtistProfilePage(artist: null),
      // ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: _StudioImage(
                imageUrl: artist.studioPhoto ??
                    'https://d1riey1i0e5tx2.cloudfront.net/artist/default_studio.jpeg',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _ArtistInfo(artist: artist),
            ),
          ],
        ),
      ),
    );
  }
}

class _StudioImage extends StatelessWidget {
  const _StudioImage({
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(25)),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        width: double.infinity,
        placeholder: (context, url) => const Center(
          child: InkerProgressIndicator(radius: 10),
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
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
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(
            artist.profileThumbnail ??
                'https://d1riey1i0e5tx2.cloudfront.net/artist/default_profile.jpeg',
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '@${artist.username}',
                style: TextStyleTheme.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              if (artist.rating != null)
                Text(
                  'Rating: ${artist.rating}',
                  style: TextStyleTheme.copyWith(
                    fontSize: 12,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
