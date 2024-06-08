import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:inker_studio/data/api/location/dtos/find_artist_by_location_response.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';
import 'package:inker_studio/ui/customer/explore/widgets/draggable_artist_info_sheet/draggable_artist_info_content.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class DraggableArtistRatingContent extends StatelessWidget {
  const DraggableArtistRatingContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapBloc, MapState>(
      builder: (context, state) {
        final mapBloc = context.read<MapBloc>();
        final selectedArtist = mapBloc.selectedArtist;
        final review = selectedArtist?.review;

        var reviewMap = <String, double>{
          '5': 0,
          '4': 0,
          '3': 0,
          '2': 0,
          '1': 0,
        };

        review?.detail?.forEach((element, value) {
          if (reviewMap.containsKey(element.toString())) {
            reviewMap[element.toString()] = value / review.count!.toDouble();
          }
        });

        print(reviewMap);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                height: 100,
                child: review != null
                    ? Row(
                        children: [
                          DraggableArtistRatingResume(review: review),
                          DraggableArtistRatingDetailBars(reviewMap: reviewMap),
                        ],
                      )
                    : SizedBox(
                        child: Center(
                          child: Text('No hay reseñas aun',
                              style: TextStyleTheme.instance.copyWith(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w200)),
                        ),
                      ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text('${review?.count ?? 0} reseñas en total',
                  style: TextStyleTheme.instance.copyWith(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w200)),
            ),
          ],
        );
      },
    );
  }
}

class DraggableArtistRatingDetailBars extends StatelessWidget {
  const DraggableArtistRatingDetailBars({
    super.key,
    required this.reviewMap,
  });

  final Map<String, double> reviewMap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.15,
          decoration: const BoxDecoration(
              // color: tertiaryColor,
              ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ...reviewMap.entries
                    .map((e) => Row(
                          children: [
                            SizedBox(
                              width: 25,
                              child: Center(
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      buildCenteredTextSpan(
                                          text: '${e.key} ',
                                          style: TextStyleTheme.copyWith(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w200)),
                                      const WidgetSpan(
                                        alignment: PlaceholderAlignment.middle,
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: LinearProgressIndicator(
                                  value: e.value,
                                  backgroundColor: greyColor,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      yellowColor)),
                            ),
                          ],
                        ))
                    ,
              ]),
        ));
  }
}

class DraggableArtistRatingResume extends StatelessWidget {
  const DraggableArtistRatingResume({
    super.key,
    required this.review,
  });

  final Review? review;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const DraggableRatingNumbers(),
          RatingBar.builder(
            ignoreGestures: true,
            initialRating: review != null ? review!.value! : 0,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 16,
            unratedColor: greyColor,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {},
          )
        ],
      ),
    );
  }
}

class DraggableRatingNumbers extends StatelessWidget {
  const DraggableRatingNumbers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapBloc, MapState>(
      builder: (context, state) {
        final mapBloc = context.read<MapBloc>();
        final selectedArtist = mapBloc.selectedArtist;
        final review = selectedArtist?.review;
        return Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                // color: tertiaryColor,
                ),
            child: RichText(
              text: TextSpan(children: [
                buildCenteredTextSpan(
                    text: review!.value!.toStringAsFixed(1),
                    style: TextStyleTheme.copyWith(
                        fontFamily: 'Poppins',
                        fontSize: 32,
                        color: Colors.white)),
                WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 4),
                      child: Text(
                        'de 5',
                        style: TextStyleTheme.copyWith(color: Colors.white),
                      ),
                    )),
              ]),
            ));
      },
    );
  }
}
