import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/api/location/dtos/find_artist_by_location_response.dart';
import 'package:inker_studio/domain/blocs/artist/artist_bio_cubit/artist_bio_cubit.dart';
import 'package:inker_studio/domain/blocs/artist/artist_profile/artist_profile_bloc.dart';
import 'package:inker_studio/ui/customer/artist_profile/artist_profiel_bio_info.dart';
import 'package:inker_studio/ui/customer/artist_profile/artist_profile_bio.dart';
import 'package:inker_studio/ui/customer/artist_profile/artist_profile_gallery.dart';
import 'package:inker_studio/ui/customer/quotation/create/create_quotation_page.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/constants.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ArtistProfilePage extends StatefulWidget {
  const ArtistProfilePage({super.key, required Artist artist})
      : _artist = artist;

  final Artist _artist;

  static Route route(Artist artist) {
    return MaterialPageRoute<void>(
        settings: const RouteSettings(name: '/artist-profile'),
        builder: (_) => ArtistProfilePage(
              artist: artist,
            ));
  }

  @override
  State<ArtistProfilePage> createState() => _ArtistProfilePageState();
}

class _ArtistProfilePageState extends State<ArtistProfilePage> {
  @override
  void initState() {
    context
        .read<ArtistProfileBloc>()
        .add(ArtistProfileEvent.setArtist(widget._artist));

    super.initState();
  }

  void _onToggleDescription(double descriptionHeight) {
    double bioHeight =
        descriptionHeight + 150; // Add additional height for other contents
    double expandedHeight =
        max(360, bioHeight); // Ensuring a minimum height of 400
    context.read<ArtistBioCubitCubit>().updateExpandedHeight(expandedHeight);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: _buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: CustomScrollView(
          slivers: [
            _buildSliverAppBar(context),
            _buildSliverContent(context),
          ],
        ),
      ),
    );
  }

  SliverAppBar _buildSliverAppBar(BuildContext context) {
    double expandedHeight = context.watch<ArtistBioCubitCubit>().state;

    return SliverAppBar(
      automaticallyImplyLeading: false,
      pinned: true,
      floating: false,
      snap: false,
      backgroundColor: primaryColor,
      expandedHeight: expandedHeight,
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          children: [
            const SizedBox(height: 12),
            _buildAvatar(),
            const SizedBox(height: 12),
            ArtistProfileBio(
                artist: widget._artist,
                onToggleDescription: _onToggleDescription),
            const SizedBox(height: 12),
            // _buildBioInfoRow(context),
            // const SizedBox(height: 12),
          ],
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(
          color: primaryColor,
          child: _buildActions(context),
        ),
      ),
    );
  }

  SliverList _buildSliverContent(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          BlocBuilder<ArtistProfileBloc, ArtistProfileState>(
            builder: (context, state) {
              return Column(
                children: [
                  Divider(color: tertiaryColor),
                  const SizedBox(height: 12),
                  state is ArtistProfileStateLoadingWorks
                      ? const InkerProgressIndicator()
                      : ArtistGallery(
                          works: state.works?.items ?? [],
                        ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        icon: SizedBox(
          height: 24.0,
          width: 24.0,
          child: Image.asset('assets/icons/back.png'),
        ),
        onPressed: () {
          Navigator.of(context).pop();
          context
              .read<ArtistProfileBloc>()
              .add(const ArtistProfileEvent.started());
        },
      ),
      backgroundColor: primaryColor,
      title: Text(widget._artist.username!,
          style: TextStyleTheme.copyWith(color: Colors.white)),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_border),
        ),
      ],
    );
  }

  Widget _buildAvatar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch, // Añadido
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft, // Añadido
              child: Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        widget._artist.profileThumbnail ??
                            defaultProfileImageLink),
                    radius: 50,
                  ),
                  _buildReviewAvatar(),
                ],
              ),
            ),
            const ArtistProfileBioInfoRow(),
          ],
        ),
      ],
    );
  }

  Widget _buildReviewAvatar() {
    return Positioned(
      top: 0,
      right: 0,
      child: Visibility(
        visible: widget._artist.review?.value != null,
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
          ),
          child: CircleAvatar(
            backgroundColor: secondaryColor,
            radius: 12,
            child: Text(
              widget._artist.review?.value?.toString() ?? '',
              style: TextStyleTheme.copyWith(color: Colors.white, fontSize: 12),
            ),
          ),
        ),
      ),
    );
  }

  // Widget _buildBioInfoRow(BuildContext context) {
  //   return BlocBuilder<ArtistProfileBloc, ArtistProfileState>(
  //     buildWhen: (previous, current) => current is! ArtistProfileStateInitial,
  //     builder: (context, state) {
  //       final followersText =
  //           state.artist?.followers == 1 ? ' seguidor' : ' seguidores';
  //       final followers = state.artist?.followers ?? '0';
  //       return Padding(
  //         padding: const EdgeInsets.symmetric(horizontal: 16),
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             Text(
  //               followers.toString() + followersText,
  //               style: TextStyleTheme.copyWith(
  //                 fontSize: 16,
  //                 color: Colors.white,
  //               ),
  //             ),
  //             const SizedBox(height: 5),
  //             // Text(
  //             //   // '${_artist.following} seguidos',
  //             //   '0 seguidos',
  //             //   style: TextStyleTheme.copyWith(
  //             //     fontSize: 16,
  //             //     color: Colors.white,
  //             //   ),
  //             // ),
  //             TextButton(
  //               onPressed: () {
  //                 InkerNavigator.push(
  //                     context,
  //                     ArtistProfileReviewsPage(
  //                       artistId: widget._artist.id!,
  //                     ));
  //               },
  //               child: Text('Opiniones',
  //                   style: TextStyleTheme.copyWith(
  //                       fontSize: 16, color: Colors.white)),
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }

  Widget _buildActions(BuildContext context) {
    final artist = context.watch<ArtistProfileBloc>().state.artist;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 3,
          child: artist == null
              ? Container()
              : ElevatedButton(
                  onPressed: () {
                    artist.isFollowedByUser!
                        ? context
                            .read<ArtistProfileBloc>()
                            .add(const ArtistProfileEvent.unFollow())
                        : context
                            .read<ArtistProfileBloc>()
                            .add(const ArtistProfileEvent.follow());
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: const Color(0x00131527),
                  ),
                  child: Text(
                    artist.isFollowedByUser! ? 'Siguiendo' : 'Seguir',
                    style: TextStyleTheme.copyWith(
                        color: Colors.white, fontSize: 13),
                  ),
                ),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 4,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              backgroundColor: const Color(0x00131527),
            ),
            child: Text('Enviar Mensaje',
                style:
                    TextStyleTheme.copyWith(color: Colors.white, fontSize: 13)),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 3,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                CreateQuotationPage.route(artistId: widget._artist.id!),
              );
            },
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              backgroundColor: secondaryColor,
            ),
            child: Text(
              'Agendar',
              style: TextStyleTheme.copyWith(color: Colors.white, fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }
}
