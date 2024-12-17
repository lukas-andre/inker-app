import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_profile/artist_profile_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/draggable_artist_info_sheet/draggable_artist_info_sheet_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/draggable_artist_review_sheet_bloc/draggable_artist_review_sheet_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';
import 'package:inker_studio/ui/customer/explore/widgets/draggable_artist_info_sheet/draggable_artist_info_divider.dart';
import 'package:inker_studio/ui/customer/explore/widgets/draggable_artist_info_sheet/draggable_artist_rating_content.dart';
import 'package:inker_studio/ui/customer/explore/widgets/draggable_artist_info_sheet/dragging_sheet_handler.dart';
import 'package:inker_studio/ui/customer/artist_profile/artist_profile_page.dart';
import 'package:inker_studio/ui/shared/artist_work_section.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/bloc_navigator.dart';
import 'package:inker_studio/utils/constants.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class DraggableArtistInfoContent extends StatelessWidget {
  const DraggableArtistInfoContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapBloc, MapState>(
      builder: (context, state) {
        final mapBloc = context.read<MapBloc>();
        final draggableArtistInfoSheetBloc =
            context.read<DraggableArtistInfoSheetBloc>();
        final draggableArtistReviewSheetBloc =
            context.read<DraggableArtistReviewSheetBloc>();

        final selectedArtist = mapBloc.selectedArtist;
        if (selectedArtist != null) {
          context
              .read<ArtistProfileBloc>()
              .add(ArtistProfileEvent.setArtist(selectedArtist));
        }
        return Column(
          children: <Widget>[
            const SizedBox(height: 12),
            const DraggingSheetHandler(),
            const SizedBox(height: 16),
            const DraggableInfoBody(),
            const SizedBox(height: 16),
            const DraggableStatusRow(),
            const SizedBox(height: 24),
            const DraggableArtistInfoBottomDivider(),
            const DraggableArtistRatingContent(),
            const SizedBox(height: 16),
            const SizedBox(height: 16),
            selectedArtist?.review != null
                ? GestureDetector(
                    onTap: () {
                      draggableArtistInfoSheetBloc.add(
                          const DraggableArtistInfoSheetEvent.changeView(
                              DraggableArtistInfoSheetView.reviews));
                      draggableArtistReviewSheetBloc.add(
                          DraggableArtistReviewSheetEvent.loadReviews(
                              artistId: selectedArtist!.id!));
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 16),
                          Text(
                            'Ver Reseñas',
                            style: TextStyleTheme.copyWith(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w200),
                          ),
                        ]),
                  )
                : Container(),
            const SizedBox(height: 24),
            selectedArtist != null
                ? ArtistWorksSection(artistId: selectedArtist.id)
                : const SizedBox.shrink(),
            const SizedBox(height: 100),
          ],
        );
      },
    );
  }
}

class DraggableStatusRow extends StatelessWidget {
  const DraggableStatusRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Citas disponibles',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 12),
          Container(
            width: 4,
            height: 4,
            decoration: const BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 12),
          const Text(
            'Abierto',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

class DraggableInfoBody extends StatelessWidget {
  const DraggableInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapBloc, MapState>(
      builder: (context, state) {
        final mapBloc = context.read<MapBloc>();

        String artistUserName = 'No name';
        String shortDescription = 'No description';
        String profileImageLink = defaultProfileImageLink;

        if (mapBloc.selectedArtist != null) {
          artistUserName = mapBloc.selectedArtist!.username ?? artistUserName;
          shortDescription =
              mapBloc.selectedArtist!.shortDescription ?? shortDescription;
          profileImageLink =
              mapBloc.selectedArtist!.profileThumbnail ?? profileImageLink;
        }

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(artistUserName,
                      style: TextStyleTheme.instance
                          .copyWith(color: Colors.white)),
                  const SizedBox(height: 4),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Text(shortDescription,
                        maxLines: 2,
                        style: TextStyleTheme.copyWith(
                            color: tertiaryColor, fontSize: 14)),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  InkerNavigator.push(context,
                      ArtistProfilePage(artist: mapBloc.selectedArtist!));
                },
                child: CircleAvatar(
                  radius: 36,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 34,
                    backgroundImage: NetworkImage(profileImageLink),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

WidgetSpan buildCenteredTextSpan(
    {required String text, required TextStyle style}) {
  return WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: Text(text, style: style),
  );
}
