import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:inker_studio/data/api/location/dtos/find_artist_by_location_response.dart';
import 'package:inker_studio/domain/blocs/explorer/draggable_artist_info_sheet/draggable_artist_info_sheet_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';
import 'package:inker_studio/ui/customer/explore/widgets/draggable_artist_info_sheet/draggable_artist_info_bottom_bar.dart';
import 'package:inker_studio/ui/customer/explore/widgets/draggable_artist_info_sheet/draggable_artist_info_content.dart';
import 'package:inker_studio/ui/customer/explore/widgets/draggable_artist_info_sheet/draggable_artist_info_divider.dart';
import 'package:inker_studio/ui/customer/explore/widgets/draggable_artist_info_sheet/draggable_artist_rating_content.dart';
import 'package:inker_studio/ui/customer/explore/widgets/draggable_artist_info_sheet/draggin_sheet_handler.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/date_time_formatter.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class DraggableArtistInfoSheet extends StatelessWidget {
  const DraggableArtistInfoSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mapBloc = context.read<MapBloc>();
    return NotificationListener<DraggableScrollableNotification>(
      onNotification: (notification) {
        mapBloc.add(MapDraggableScrollableNotificationEvent(notification));

        return true;
      },
      child: DraggableScrollableSheet(
        snap: true,
        controller: mapBloc.draggableScrollableController,
        snapSizes: mapBloc.snapSizes,
        maxChildSize: mapBloc.snapSizes.last,
        initialChildSize:
            mapBloc.snapSizes.first, // TODO: ONLY WHILE CREATING THE LAYOUT
        minChildSize: 0.0,
        builder: (BuildContext context, ScrollController scrollController) {
          return BlocBuilder<MapBloc, MapState>(
            builder: (context, state) {
              return Stack(
                children: [
                  SingleChildScrollView(
                    controller: scrollController,
                    child: const DraggableArtistInfoSheetLayout(),
                  ),
                  const DraggableArtistInfoBottomBar()
                ],
              );
            },
          );
        },
      ),
    );
  }
}

class DraggableArtistInfoSheetLayout extends StatelessWidget {
  const DraggableArtistInfoSheetLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      margin: const EdgeInsets.all(0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24), color: primaryColor),
        child: const DraggableArtistInfoSheetInnerContent(),
      ),
    );
  }
}

class DraggableArtistInfoSheetInnerContent extends StatelessWidget {
  const DraggableArtistInfoSheetInnerContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DraggableArtistInfoSheetBloc,
        DraggableArtistInfoSheetState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const DraggableArtistInfoContent(),
          reviewsView: () => const DraggableArtistReviewsContent(),
        );
        // return const DraggableArtistReviewsContent();
      },
    );
  }
}

class DraggableArtistReviewsContent extends StatelessWidget {
  const DraggableArtistReviewsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
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
  const DraggableReviewsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (() => context.read<DraggableArtistInfoSheetBloc>().add(
                    const DraggableArtistInfoSheetEvent.changeView(
                        DraggableArtistInfoSheetView.info))),
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
  const DraggableReviewsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapBloc, MapState>(
      builder: (context, state) {
        final mapBloc = context.read<MapBloc>();
        final reviews = mapBloc.selectedArtist?.reviews ?? [];

        if (reviews.isEmpty) {
          return const Center(
            child: Text('No hay reseñas'),
          );
        }

        return ListView.separated(
          padding: const EdgeInsets.only(top: 0),
          separatorBuilder: (context, index) =>
              const DraggableArtistInfoBottomDivider(),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: reviews.length,
          itemBuilder: (context, index) {
            final review = reviews[index];
            return DraggableReviewItem(review: review);
          },
        );
      },
    );
  }
}

class DraggableReviewItem extends StatelessWidget {
  const DraggableReviewItem({Key? key, required this.review}) : super(key: key);

  final ReviewElement review;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      // decoration: BoxDecoration(
      //     color: Colors.white, borderRadius: BorderRadius.circular(12)),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
