import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:inker_studio/domain/blocs/artist/artist_profile/artist_profile_bloc.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/customer/explore/widgets/draggable_artist_info_sheet/draggable_artist_info_content.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ArtistProfileRatingResume extends StatelessWidget {
  const ArtistProfileRatingResume({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArtistProfileBloc, ArtistProfileState>(
      builder: (context, state) {
        // final artistProfileBloc = context.read<ArtistProfileBloc>();
        final selectedArtist = state.artist;

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
                          ArtistProfileRatingDetailBars(reviewMap: reviewMap),
                        ],
                      )
                    : SizedBox(
                        child: Center(
                          child: Text(S.of(context).noReviews,
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
              child: Text('${review?.count ?? 0} ${S.of(context).reviewsTotal}',
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

class ArtistProfileRatingDetailBars extends StatelessWidget {
  const ArtistProfileRatingDetailBars({
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
                                  valueColor: const AlwaysStoppedAnimation<Color>(
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
          ArtistProfileRatingNumbers(
            review: review!,
          ),
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

class ArtistProfileRatingNumbers extends StatelessWidget {
  const ArtistProfileRatingNumbers({
    super.key,
    required Review review,
  })  : _review = review;

  final Review _review;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            // color: tertiaryColor,
            ),
        child: RichText(
          text: TextSpan(children: [
            buildCenteredTextSpan(
                text: _review.value!.toStringAsFixed(1),
                style: TextStyleTheme.copyWith(
                    fontFamily: 'Poppins', fontSize: 32, color: Colors.white)),
            WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 4),
                  child: Text(
                    S.of(context).of5,
                    style: TextStyleTheme.copyWith(color: Colors.white),
                  ),
                )),
          ]),
        ));
  }
}
