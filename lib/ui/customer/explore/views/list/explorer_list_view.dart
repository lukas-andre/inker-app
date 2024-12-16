import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/api/location/dtos/find_artist_by_location_response.dart';
import 'package:inker_studio/domain/blocs/artist/artists_list/artists_list_bloc.dart';
import 'package:inker_studio/domain/blocs/search_artist/search_artists_bloc.dart';
import 'package:inker_studio/domain/services/artist/artist_service.dart';
import 'package:inker_studio/ui/customer/artist_profile/artist_profile_page.dart';
import 'package:inker_studio/ui/customer/explore/views/list/widgets/explorer_list_view_title.dart';
import 'package:inker_studio/ui/customer/explore/views/list/widgets/explorer_search_bar.dart';
import 'package:inker_studio/ui/customer/explore/views/search/search_artist_view.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/bloc_navigator.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/layout/row_spacer.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ExplorerListView extends StatelessWidget {
  const ExplorerListView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(color: primaryColor),
          width: size.width,
          child: SafeArea(
            child: Column(
              children: [
                const ExplorerListViewTitle(),
                ExplorerSearchBar(
                  onSearch: (query) {
                    // Navegar a la vista de búsqueda cuando el usuario escriba
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => BlocProvider(
                          create: (context) => SearchArtistsBloc(
                            artistService: context.read<ArtistService>(),
                          )..add(SearchArtistsEvent.search(query: query)),
                          child: const SearchArtistView(),
                        ),
                      ),
                    );
                  },
                ),
                const RowSpacer(space: 20),
                ExplorerResultList(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ExplorerResultList extends StatelessWidget {
  ExplorerResultList({super.key});
  final List<String> defaultImages = [
    'https://cdn.pixabay.com/photo/2019/03/15/09/49/girl-4056684_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/15/16/25/clock-5834193__340.jpg',
    'https://cdn.pixabay.com/photo/2020/09/18/19/31/laptop-5582775_960_720.jpg',
    'https://media.istockphoto.com/photos/woman-kayaking-in-fjord-in-norway-picture-id1059380230?b=1&k=6&m=1059380230&s=170667a&w=0&h=kA_A_XrhZJjw2bo5jIJ7089-VktFK0h0I4OWDqaac0c=',
    'https://cdn.pixabay.com/photo/2019/11/05/00/53/cellular-4602489_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/02/12/10/29/christmas-2059698_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/01/29/17/09/snowboard-4803050_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/02/06/20/01/university-library-4825366_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/11/22/17/28/cat-5767334_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/13/16/22/snow-5828736_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/09/09/27/women-5816861_960_720.jpg',
  ];
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
            padding: const EdgeInsets.all(10),
            childAspectRatio: 0.65,
            crossAxisSpacing: 15,
            mainAxisSpacing: 10,
            children: List.generate(
              state.artists.length,
              (index) => _ArtistGridItem(
                key: Key('artistItem$index'),
                artist: state.artists[index],
                defaultImage: defaultImages[index % defaultImages.length],
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
    required this.defaultImage,
  });

  final Artist artist;
  final String defaultImage;

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
                imageUrl: artist.studioPhoto ?? defaultImage,
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
                '@${artist.username!}',
                style: TextStyleTheme.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                '${(artist.distance! * 1000).toInt()} mt',
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
