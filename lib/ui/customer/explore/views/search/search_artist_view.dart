import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/search_artist/search_artists_bloc.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/customer/artist_profile/artist_profile_page.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/bloc_navigator.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';

class SearchArtistView extends StatelessWidget {
  const SearchArtistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.primary,
      child: SafeArea(
        child: Column(
          children: [
            _SearchHeader(),
            Expanded(
              child: BlocBuilder<SearchArtistsBloc, SearchArtistsState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => Center(
                      child: Text(
                        S.of(context).searchArtistPlaceholder,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    loading: () => const Center(
                      child: InkerProgressIndicator(),
                    ),
                    success: (artists, metadata, query) => artists.isEmpty
                        ?  Center(
                            child: Text(
                              S.of(context).noResultsFound,
                              style: const TextStyle(color: Colors.white),
                            ),
                          )
                        : GridView.count(
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
    );
  }
}

class _SearchHeader extends StatefulWidget {
  @override
  State<_SearchHeader> createState() => _SearchHeaderState();
}

class _SearchHeaderState extends State<_SearchHeader> {
  bool _showFilters = false;
  double _minimumRating = 0.0;
  
  void _clearFilters() {
    setState(() {
      _minimumRating = 0.0;
    });
    final bloc = context.read<SearchArtistsBloc>();
    final currentState = bloc.state;
    currentState.whenOrNull(
      success: (_, __, query) {
        bloc.add(SearchArtistsEvent.search(query: query));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.black12,
            border: Border(
              bottom: BorderSide(
                color: Colors.white.withOpacity(0.1),
                width: 1,
              ),
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                  FocusScope.of(context).unfocus();
                },
              ),
              Expanded(
                child: TextField(
                  autofocus: true,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: '${S.of(context).search} ${S.of(context).artist.toLowerCase()}...',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  ),
                  onChanged: (query) {
                    context.read<SearchArtistsBloc>().add(
                          SearchArtistsEvent.search(
                            query: query,
                            minRating: _minimumRating > 0 ? _minimumRating : 0,
                          ),
                        );
                  },
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.tune,
                  color: _showFilters ? Colors.blue : Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    _showFilters = !_showFilters;
                  });
                },
              ),
            ],
          ),
        ),
        if (_showFilters)
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.black12,
              border: Border(
                bottom: BorderSide(
                  color: Colors.white.withOpacity(0.1),
                  width: 1,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      S.of(context).filters,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton.icon(
                      onPressed: _minimumRating > 0 ? _clearFilters : null,
                      icon: const Icon(Icons.clear_all),
                      label: Text(S.of(context).clear),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.blue,
                        disabledForegroundColor: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 20),
                    const SizedBox(width: 8),
                    Text(
                      S.of(context).minimumRating(
                        _minimumRating,
                      ),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Slider(
                        value: _minimumRating,
                        min: 0,
                        max: 5,
                        divisions: 10,
                        activeColor: Colors.amber,
                        inactiveColor: Colors.amber.withOpacity(0.3),
                        label: _minimumRating.toStringAsFixed(1),
                        onChanged: (value) {
                          setState(() {
                            _minimumRating = value;
                          });
                          final bloc = context.read<SearchArtistsBloc>();
                          final currentState = bloc.state;
                          currentState.whenOrNull(
                            success: (artists, metadata, query) {
                              bloc.add(SearchArtistsEvent.search(
                                query: query,
                                minRating: value,
                              ));
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        BlocBuilder<SearchArtistsBloc, SearchArtistsState>(
          builder: (context, state) {
            return state.maybeWhen(
              success: (artists, metadata, _) => Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  S.of(context).artistFound(metadata.total),
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 14,
                  ),
                ),
              ),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ],
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
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 16,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    artist.rating ?? '',
                    style: TextStyleTheme.copyWith(
                      fontSize: 12,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}