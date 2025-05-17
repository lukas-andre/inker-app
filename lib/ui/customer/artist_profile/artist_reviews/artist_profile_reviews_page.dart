import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:inker_studio/data/api/review/dtos/get_reviews_response.dart';
import 'package:inker_studio/domain/blocs/artist/artist_reviews/artist_reviews_bloc.dart';
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/customer/artist_profile/artist_reviews/artist_profile_rating_resume.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/date_time_formatter.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ArtistProfileReviewsPage extends StatefulWidget {
  const ArtistProfileReviewsPage({super.key, required String artistId})
      : _artistId = artistId;

  final String _artistId;

  static Route route(String artistId) {
    return MaterialPageRoute<void>(
        settings: const RouteSettings(name: '/artist-profile-reviews'),
        builder: (_) => ArtistProfileReviewsPage(
              artistId: artistId,
            ));
  }

  @override
  State<ArtistProfileReviewsPage> createState() =>
      _ArtistProfileReviewsPageState();
}

class _ArtistProfileReviewsPageState extends State<ArtistProfileReviewsPage> {
  @override
  void initState() {
    context
        .read<ArtistReviewsBloc>()
        .add(ArtistReviewsEvent.loadReviews(widget._artistId));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: _buildAppBar(context),
      body: BlocBuilder<ArtistReviewsBloc, ArtistReviewsState>(
        builder: (context, state) {
          return Column(
            children: [
              const SizedBox(height: 30),
              const ArtistProfileRatingResume(),
              const SizedBox(height: 12),
              const ArtistProfileDivider(),
              const SizedBox(height: 12),
              _buildReviews(),
              state is ArtistReviewsLoading && state.reviews.isNotEmpty
                  ? const InkerProgressIndicator(radius: 20)
                  : const SizedBox(height: 40),
              Platform.isIOS
                  ? const SizedBox(height: 40)
                  : const SizedBox(
                      height: 20,
                    ),
            ],
          );
        },
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
              .read<ArtistReviewsBloc>()
              .add(const ArtistReviewsEvent.initial());
        },
      ),
      title: Text(
        S.of(context).reviews,
        style: TextStyleTheme.copyWith(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
      backgroundColor: primaryColor,
    );
  }

  Widget _buildReviews() {
    return BlocBuilder<ArtistReviewsBloc, ArtistReviewsState>(
      builder: (context, state) {
        final reviewsBloc = context.read<ArtistReviewsBloc>();
        return Expanded(
          child: state is ArtistReviewsLoading && state.reviews.isEmpty
              ? const Center(
                  child: InkerProgressIndicator(),
                )
              : ListView.separated(
                  controller: reviewsBloc.scrollController,
                  padding: const EdgeInsets.only(top: 0),
                  separatorBuilder: (context, index) =>
                      const ArtistProfileDivider(),
                  itemCount: state.reviews.length,
                  itemBuilder: (context, index) {
                    final review = state.reviews[index];
                    return ArtistProfileReviewItem(review: review);
                  },
                ),
        );
      },
    );
  }
}

class ArtistProfileReviewItem extends StatelessWidget {
  const ArtistProfileReviewItem({super.key, required this.review});

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
                      unratedColor: greyColor,
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
                          color: greyColor,
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
                BlocBuilder<ArtistReviewsBloc, ArtistReviewsState>(
                  builder: (context, state) {
                    final reviewBloc = context.read<ArtistReviewsBloc>();

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
                              reviewBloc.add(
                                  ArtistReviewsEvent.switchReviewReaction(
                                      disliked: false,
                                      liked: true,
                                      reviewId: review.id!,
                                      customerId: customerId));
                              return;
                            }

                            if (liked) {
                              reviewBloc.add(
                                  ArtistReviewsEvent.reviewLikeRemoved(
                                      reviewId: review.id!,
                                      customerId: customerId));
                              return;
                            } else {
                              reviewBloc.add(ArtistReviewsEvent.reviewLiked(
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
                              reviewBloc.add(
                                  ArtistReviewsEvent.switchReviewReaction(
                                      disliked: true,
                                      liked: false,
                                      reviewId: review.id!,
                                      customerId: customerId));
                              return;
                            }

                            if (disliked) {
                              reviewBloc.add(
                                  ArtistReviewsEvent.reviewDislikedRemoved(
                                      reviewId: review.id!,
                                      customerId: customerId));

                              return;
                            } else {
                              reviewBloc.add(ArtistReviewsEvent.reviewDisliked(
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

class ArtistProfileDivider extends StatelessWidget {
  const ArtistProfileDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      endIndent: 16,
      indent: 16,
      color: greyColor,
      thickness: 1,
    );
  }
}
