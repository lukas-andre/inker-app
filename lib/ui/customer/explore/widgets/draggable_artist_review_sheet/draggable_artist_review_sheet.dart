import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:inker_studio/data/api/review/dtos/get_reviews_response.dart';
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/draggable_artist_info_sheet/draggable_artist_info_sheet_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/draggable_artist_review_sheet_bloc/draggable_artist_review_sheet_bloc.dart';
import 'package:inker_studio/ui/customer/explore/widgets/draggable_artist_info_sheet/draggable_artist_info_bottom_bar.dart';
import 'package:inker_studio/ui/customer/explore/widgets/draggable_artist_info_sheet/draggable_artist_info_divider.dart';
import 'package:inker_studio/ui/customer/explore/widgets/draggable_artist_info_sheet/draggable_artist_rating_content.dart';
import 'package:inker_studio/ui/customer/explore/widgets/draggable_artist_info_sheet/dragging_sheet_handler.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/date_time_formatter.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';

class DraggableArtistReviewsContent extends StatelessWidget {
  const DraggableArtistReviewsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 12),
        DraggingSheetHandler(),
        SizedBox(height: 16),
        DraggableReviewsBody(),
        SizedBox(height: 16),
        SizedBox(height: 24),
      ],
    );
  }
}

class DraggableReviewsBody extends StatelessWidget {
  const DraggableReviewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final draggableArtistInfoSheetBloc =
        context.read<DraggableArtistInfoSheetBloc>();
    final draggableArtistReviewSheetBloc =
        context.read<DraggableArtistReviewSheetBloc>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  draggableArtistInfoSheetBloc.add(
                      const DraggableArtistInfoSheetEvent.changeView(
                          DraggableArtistInfoSheetView.info));

                  draggableArtistReviewSheetBloc.add(
                      const DraggableArtistReviewSheetEvent
                          .draggableClearReviews());
                },
                child: Container(
                  padding: const EdgeInsets.only(right: 16, bottom: 8, top: 8),
                  child: Image.asset(
                    'assets/icons/back.png',
                    height: 22,
                    width: 24,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Text(
                'Opiniones y reseñas',
                style: TextStyleTheme.copyWith(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w200),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        const DraggableArtistRatingContent(),
        const SizedBox(height: 16),
        const DraggableArtistInfoBottomDivider(),
        const DraggableReviewsList(),
        const SizedBox(height: bottomBarHeight + 16),
      ],
    );
  }
}

class DraggableReviewsList extends StatelessWidget {
  const DraggableReviewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DraggableArtistReviewSheetBloc,
        DraggableArtistReviewSheetState>(
      builder: (context, state) {
        if (state.reviews.isEmpty) {
          if (state is ReviewsLoading) {
            return const Center(child: InkerProgressIndicator());
          } else {
            return const Center(
              child: Text('No hay reseñas'),
            );
          }
        }

        return Column(children: [
          ListView.separated(
            padding: const EdgeInsets.only(top: 0),
            separatorBuilder: (context, index) =>
                const DraggableArtistInfoBottomDivider(),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.reviews.length,
            itemBuilder: (context, index) {
              final review = state.reviews[index];
              return DraggableReviewItem(review: review);
            },
          ),
          if (state is ReviewsLoading)
            const Center(child: InkerProgressIndicator())
        ]);
      },
    );
  }
}

class DraggableReviewItem extends StatelessWidget {
  const DraggableReviewItem({super.key, required this.review});

  final ReviewItem review;

  @override
  Widget build(BuildContext context) {
    AuthBloc authBloc = context.read<AuthBloc>();
    final customerId = authBloc.state.session.user?.userTypeId ?? '';

    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RatingBar.builder(
                      ignoreGestures: true,
                      initialRating: review.value!.toDouble(),
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 14,
                      unratedColor: Theme.of(context).colorScheme.tertiary,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                    Text(
                      DateTimeFormatter.formatForReviewElement(
                          review.createdAt!),
                      style: TextStyleTheme.copyWith(
                          color: Theme.of(context).colorScheme.tertiary,
                          fontSize: 14,
                          fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
                Text(
                  review.displayName!,
                  style: TextStyleTheme.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w200),
                ),
                const SizedBox(height: 4),
                Text(
                  review.content!,
                  style: TextStyleTheme.copyWith(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w200),
                ),
                const SizedBox(height: 4),
                BlocBuilder<DraggableArtistReviewSheetBloc,
                    DraggableArtistReviewSheetState>(
                  builder: (context, state) {
                    final reviewBloc =
                        context.read<DraggableArtistReviewSheetBloc>();
                    final likes = state.reviewReactions[review.id]?.likes ?? 0;
                    final dislikes =
                        state.reviewReactions[review.id]?.dislikes ?? 0;

                    final liked =
                        state.customerReactions[review.id]?.liked ?? false;
                    final disliked =
                        state.customerReactions[review.id]?.disliked ?? false;

                    return Row(
                      children: [
                        Text(
                          likes.toString(),
                          style: TextStyleTheme.copyWith(
                              color: liked ? Colors.blue : Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w200),
                        ),
                        const SizedBox(width: 4),
                        GestureDetector(
                          onTap: () {
                            if (disliked) {
                              reviewBloc.add(DraggableArtistReviewSheetEvent
                                  .draggableSwitchReviewReaction(
                                      disliked: false,
                                      liked: true,
                                      reviewId: review.id!,
                                      customerId: customerId));
                              return;
                            }

                            if (liked) {
                              reviewBloc.add(DraggableArtistReviewSheetEvent
                                  .draggableReviewLikeRemoved(
                                      reviewId: review.id!,
                                      customerId: customerId));
                              return;
                            } else {
                              reviewBloc.add(DraggableArtistReviewSheetEvent
                                  .draggableReviewLiked(
                                      reviewId: review.id!,
                                      customerId: customerId));
                            }
                          },
                          child: Icon(
                            Icons.thumb_up,
                            color: liked ? Colors.blue : Colors.white,
                            size: 16,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          dislikes.toString(),
                          style: TextStyleTheme.copyWith(
                              color: disliked ? Colors.red : Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w200),
                        ),
                        const SizedBox(width: 4),
                        GestureDetector(
                          onTap: (() {
                            if (liked) {
                              reviewBloc.add(DraggableArtistReviewSheetEvent
                                  .draggableSwitchReviewReaction(
                                      disliked: true,
                                      liked: false,
                                      reviewId: review.id!,
                                      customerId: customerId));
                              return;
                            }

                            if (disliked) {
                              reviewBloc.add(DraggableArtistReviewSheetEvent
                                  .reviewDislikedRemoved(
                                      reviewId: review.id!,
                                      customerId: customerId));

                              return;
                            } else {
                              reviewBloc.add(DraggableArtistReviewSheetEvent
                                  .draggableReviewDisliked(
                                      reviewId: review.id!,
                                      customerId: customerId));
                              return;
                            }
                          }),
                          child: Icon(
                            Icons.thumb_down,
                            color: disliked ? Colors.red : Colors.white,
                            size: 16,
                          ),
                        ),
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
