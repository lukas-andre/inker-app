import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/draggable_artist_info_sheet/draggable_artist_info_sheet_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/draggable_artist_review_sheet_bloc/draggable_artist_review_sheet_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';
import 'package:inker_studio/ui/customer/explore/widgets/draggable_artist_info_sheet/draggable_artist_info_bottom_bar.dart';
import 'package:inker_studio/ui/customer/explore/widgets/draggable_artist_info_sheet/draggable_artist_info_content.dart';
import 'package:inker_studio/ui/customer/explore/widgets/draggable_artist_review_sheet/draggable_artist_review_sheet.dart';

class DraggableArtistInfoSheet extends StatelessWidget {
  const DraggableArtistInfoSheet({
    super.key,
  });

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
                  BlocBuilder<DraggableArtistInfoSheetBloc,
                      DraggableArtistInfoSheetState>(
                    builder: (context, draggableArtistInfoSheetState) {
                      return BlocBuilder<DraggableArtistReviewSheetBloc,
                          DraggableArtistReviewSheetState>(
                        builder: (context, draggableArtistReviewSheetState) {
                          return NotificationListener<ScrollNotification>(
                            onNotification: (notification) {
                              draggableArtistInfoSheetState.whenOrNull(
                                reviewsView: () {
                                  if (notification
                                      is ScrollUpdateNotification) {
                                    final maxScroll =
                                        notification.metrics.maxScrollExtent;
                                    final currentScroll =
                                        notification.metrics.pixels;
                                    final delta = maxScroll - currentScroll;

                                    if (delta < 15) {
                                      context
                                          .read<
                                              DraggableArtistReviewSheetBloc>()
                                          .add(
                                              const DraggableArtistReviewSheetEvent
                                                  .draggableRefreshReviews());
                                    }
                                  }
                                },
                              );
                              return true;
                            },
                            child: SingleChildScrollView(
                              controller: scrollController,
                              child: const DraggableArtistInfoSheetLayout(),
                            ),
                          );
                        },
                      );
                    },
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
  const DraggableArtistInfoSheetLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      margin: const EdgeInsets.all(0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24), color: Theme.of(context).colorScheme.surface),
        child: const DraggableArtistInfoSheetInnerContent(),
      ),
    );
  }
}

class DraggableArtistInfoSheetInnerContent extends StatelessWidget {
  const DraggableArtistInfoSheetInnerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DraggableArtistInfoSheetBloc,
        DraggableArtistInfoSheetState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const DraggableArtistInfoContent(),
          reviewsView: () => const DraggableArtistReviewsContent(),
        );
      },
    );
  }
}
