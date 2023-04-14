import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/api/location/dtos/find_artist_by_location_response.dart';
import 'package:inker_studio/domain/blocs/artist/artist_profile/artist_profile_bloc.dart';
import 'package:inker_studio/ui/customer/artist_profile/artist_profile_bio.dart';
import 'package:inker_studio/ui/customer/artist_profile/artist_profile_gallery.dart';
import 'package:inker_studio/ui/customer/artist_profile/artist_reviews/artist_profile_reviews_page.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/bloc_navigator.dart';
import 'package:inker_studio/utils/constants.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ArtistProfilePage extends StatefulWidget {
  const ArtistProfilePage({Key? key, required Artist artist})
      : _artist = artist,
        super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              _buildAvatar(),
              const SizedBox(height: 12),
              ArtistProfileBio(artist: widget._artist),
              const SizedBox(height: 12),
              _buildBioInfoRow(context),
              const SizedBox(height: 12),
              _buildActions(),
              const SizedBox(height: 12),
              Divider(color: tertiaryColor),
              const SizedBox(height: 12),
              ArtistGallery(
                works: widget._artist.recentWorks ?? [],
              )
            ],
          ),
        ),
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
        Align(
          alignment: Alignment.centerLeft, // Añadido
          child: Stack(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    widget._artist.profileThumbnail ?? defaultProfileImageLink),
                radius: 50,
              ),
              _buildReviewAvatar(),
            ],
          ),
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

  Widget _buildBioInfoRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          // '${_artist.followers} seguidores',
          '0 seguidores',
          style: TextStyleTheme.copyWith(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          // '${_artist.following} seguidos',
          '0 seguidos',
          style: TextStyleTheme.copyWith(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        TextButton(
          onPressed: () {
            InkerNavigator.push(
                context,
                ArtistProfileReviewsPage(
                  artistId: widget._artist.id!,
                ));
          },
          child: Text('Opiniones',
              style:
                  TextStyleTheme.copyWith(fontSize: 16, color: Colors.white)),
        ),
      ],
    );
  }

  Widget _buildActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 3,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Seguir',
              style: TextStyleTheme.copyWith(color: Colors.white, fontSize: 13),
            ),
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              primary: const Color(0x00131527),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 4,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Enviar Mensaje',
                style:
                    TextStyleTheme.copyWith(color: Colors.white, fontSize: 13)),
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              primary: const Color(0x00131527),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 3,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Agendar',
              style: TextStyleTheme.copyWith(color: Colors.white, fontSize: 14),
            ),
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              primary: secondaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
