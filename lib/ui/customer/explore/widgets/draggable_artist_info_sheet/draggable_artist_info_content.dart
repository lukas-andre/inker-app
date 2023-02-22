import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/draggable_artist_info_sheet/draggable_artist_info_sheet_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';
import 'package:inker_studio/ui/customer/explore/widgets/draggable_artist_info_sheet/draggable_artist_info_bottom_bar.dart';
import 'package:inker_studio/ui/customer/explore/widgets/draggable_artist_info_sheet/draggable_artist_info_divider.dart';
import 'package:inker_studio/ui/customer/explore/widgets/draggable_artist_info_sheet/draggable_artist_rating_content.dart';
import 'package:inker_studio/ui/customer/explore/widgets/draggable_artist_info_sheet/draggin_sheet_handler.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/constants.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class DraggableArtistInfoContent extends StatelessWidget {
  const DraggableArtistInfoContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapBloc, MapState>(
      builder: (context, state) {
        final mapBloc = context.read<MapBloc>();
        final selectedArtist = mapBloc.selectedArtist;
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
            const CustomHorizontallyScrollingRestaurants(),
            const SizedBox(height: 16),
            selectedArtist?.review != null
                ? GestureDetector(
                    onTap: () => {
                      context.read<DraggableArtistInfoSheetBloc>().add(
                          const DraggableArtistInfoSheetEvent.changeView(
                              DraggableArtistInfoSheetView.reviews))
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
            const CustomFeaturedListsText(),
            const SizedBox(height: 16),
            const CustomFeaturedItemsGrid(),
            const SizedBox(height: 24),
            const CustomRecentPhotosText(),
            const SizedBox(height: 16),
            const CustomRecentPhotoLarge(),
            const SizedBox(height: 12),
            const CustomRecentPhotosSmall(),
            const SizedBox(height: bottomBarHeight + 16),
          ],
        );
      },
    );
  }
}

class DraggableStatusRow extends StatelessWidget {
  const DraggableStatusRow({Key? key}) : super(key: key);

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
  const DraggableInfoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapBloc, MapState>(
      builder: (context, state) {
        final mapBloc = context.read<MapBloc>();

        String artistUserName = 'Berlin';
        String shortDescription =
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed nisl euismod, aliquam nisl sed, aliquam nisl. Sed sed nisl euismod, aliquam nisl sed, aliquam nisl.';
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
              CircleAvatar(
                radius: 36,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 34,
                  backgroundImage: NetworkImage(profileImageLink),
                ),
              ),
              // const SizedBox(width: 8),
              // Container(
              //   height: 24,
              //   width: 24,
              //   child: const Icon(Icons.arrow_forward_ios,
              //       size: 12, color: Colors.black54),
              //   decoration: BoxDecoration(
              //       color: Colors.grey[200],
              //       borderRadius: BorderRadius.circular(16)),
              // ),
            ],
          ),
        );
      },
    );
  }
}

class CustomHorizontallyScrollingRestaurants extends StatelessWidget {
  const CustomHorizontallyScrollingRestaurants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            CustomRestaurantCategory(),
            SizedBox(width: 12),
            CustomRestaurantCategory(),
            SizedBox(width: 12),
            CustomRestaurantCategory(),
            SizedBox(width: 12),
            CustomRestaurantCategory(),
            SizedBox(width: 12),
          ],
        ),
      ),
    );
  }
}

class CustomFeaturedListsText extends StatelessWidget {
  const CustomFeaturedListsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      //only to left align the text
      child: Row(
        children: [
          Text('Trabajos realizados',
              style: TextStyleTheme.copyWith(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}

class CustomFeaturedItemsGrid extends StatelessWidget {
  const CustomFeaturedItemsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.count(
        //to avoid scrolling conflict with the dragging sheet
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(0),
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        shrinkWrap: true,
        children: const <Widget>[
          CustomFeaturedItem(),
          CustomFeaturedItem(),
          CustomFeaturedItem(),
          CustomFeaturedItem(),
        ],
      ),
    );
  }
}

class CustomRecentPhotosText extends StatelessWidget {
  const CustomRecentPhotosText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: const <Widget>[
          Text('Recent Photos', style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}

class CustomRecentPhotoLarge extends StatelessWidget {
  const CustomRecentPhotoLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomFeaturedItem(),
    );
  }
}

class CustomRecentPhotosSmall extends StatelessWidget {
  const CustomRecentPhotosSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomFeaturedItemsGrid();
  }
}

class CustomRestaurantCategory extends StatelessWidget {
  const CustomRestaurantCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.grey[500],
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

class CustomFeaturedItem extends StatelessWidget {
  const CustomFeaturedItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey[500],
        borderRadius: BorderRadius.circular(8),
      ),
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
