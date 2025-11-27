import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/customer/artist_profile/artist_reviews/artist_profile_rating_resume.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';



class DraggableArtistRatingContent extends StatelessWidget {
  const DraggableArtistRatingContent({super.key});

  Map<String, double> calculateReviewPercentages(Review? review) {
    var reviewMap = <String, double>{
      '5': 0.0,
      '4': 0.0,
      '3': 0.0,
      '2': 0.0,
      '1': 0.0,
    };

    if (review?.detail != null && review!.count != null && review.count! > 0) {
      review.detail!.forEach((element, value) {
        final key = element.toString();
        if (reviewMap.containsKey(key)) {
          reviewMap[key] = value / review.count!.toDouble();
        }
      });
    }

    return reviewMap;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapBloc, MapState>(
      builder: (context, state) {
        final mapBloc = context.read<MapBloc>();
        final selectedArtist = mapBloc.selectedArtist;
        final review = selectedArtist?.review;
        final reviewMap = calculateReviewPercentages(review);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  minHeight: 100,
                  maxHeight: 150,
                ),
                child: review != null
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 2,
                            child: DraggableArtistRatingResume(review: review),
                          ),
                          Expanded(
                            flex: 3,
                            child: DraggableArtistRatingDetailBars(
                              reviewMap: reviewMap,
                            ),
                          ),
                        ],
                      )
                    : const _NoReviewsWidget(),
              ),
            ),
            const SizedBox(height: 8),
            _ReviewCountText(count: review?.count ?? 0),
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
    return LayoutBuilder(
      builder: (context, constraints) {
        final barWidth = constraints.maxWidth * 0.7;
        
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...reviewMap.entries.map((entry) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    children: [
                      SizedBox(
                        width: constraints.maxWidth * 0.2,
                        child: _RatingLabel(rating: entry.key),
                      ),
                      SizedBox(
                        width: barWidth,
                        child: _RatingProgressBar(
                          value: entry.value,
                          constraints: constraints,
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        );
      },
    );
  }
}

class _RatingLabel extends StatelessWidget {
  const _RatingLabel({required this.rating});
  
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          rating,
          style: TextStyleTheme.instance.copyWith(
            color: Colors.white,
            fontSize: 10,
            fontWeight: FontWeight.w200,
          ),
        ),
        const SizedBox(width: 2),
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 10,
        ),
      ],
    );
  }
}

class _RatingProgressBar extends StatelessWidget {
  const _RatingProgressBar({
    required this.value,
    required this.constraints,
  });

  final double value;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(2),
        child: LinearProgressIndicator(
          value: value,
          backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0.3),
          valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).colorScheme.secondary),
        ),
      ),
    );
  }
}

class _NoReviewsWidget extends StatelessWidget {
  const _NoReviewsWidget();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        S.of(context).noReviewsYet,
        style: TextStyleTheme.instance.copyWith(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w200,
        ),
      ),
    );
  }
}

class _ReviewCountText extends StatelessWidget {
  const _ReviewCountText({required this.count});
  
  final int count;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        S.of(context).totalReviews(count),
        style: TextStyleTheme.instance.copyWith(
          color: Colors.grey,
          fontSize: 14,
          fontWeight: FontWeight.w200,
        ),
      ),
    );
  }
}