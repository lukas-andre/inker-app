import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';
import 'package:inker_studio/ui/customer/explore/widgets/explorer_contact_button.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/constants.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class DraggableInfoSheet extends StatelessWidget {
  const DraggableInfoSheet({
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
        initialChildSize: mapBloc.snapSizes.first,
        minChildSize: 0.0,
        builder: (BuildContext context, ScrollController scrollController) {
          return BlocBuilder<MapBloc, MapState>(
            builder: (context, state) {
              // return CustomScrollView(
              //   controller: scrollController,
              //   slivers: [
              //     SliverFillRemaining(
              //       // hasScrollBody: false,
              //       child: Column(
              //         children: const [
              //           DraggableInfoSheetLayout(),
              //           // Spacer(
              //           //   flex: 1,
              //           // ),
              //           Text('DraggableInfoSheetFooter'),
              //         ],
              //       ),
              //     )
              //   ],
              // );
              // return SingleChildScrollView(
              //   controller: scrollController,
              //   child: const DraggableInfoSheetLayout(),
              // );
              return Scaffold(
                body: SingleChildScrollView(
                  controller: scrollController,
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: const DraggableInfoSheetLayout()),
                ),
                // bottomNavigationBar: const DraggableInfoBottomBar(),
                floatingActionButton: const DraggableInfoBottomBar(),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerDocked,
              );
            },
          );
        },
      ),
    );
  }
}

class DraggableInfoBottomBar extends StatelessWidget {
  const DraggableInfoBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkerStadiumButton(
              onTap: () {},
              width: MediaQuery.of(context).size.width * 0.45,
              height: 40,
              text: 'Indicaciones',
              backgroundColor: tertiaryColor,
              textStyle: TextStyleTheme.copyWith(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w200),
            ),
            InkerStadiumButton(
              onTap: () {},
              width: MediaQuery.of(context).size.width * 0.45,
              height: 40,
              text: 'Reservar cita',
              backgroundColor: secondaryColor,
              textStyle: TextStyleTheme.copyWith(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w200),
            ),
          ],
        ),
      ),
    );
  }
}

class DraggableInfoSheetLayout extends StatelessWidget {
  const DraggableInfoSheetLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      margin: const EdgeInsets.all(0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24), color: primaryColor),
        child: const DraggableInfoSheetInnerContent(),
      ),
    );
  }
}

class DraggableInfoSheetInnerContent extends StatelessWidget {
  const DraggableInfoSheetInnerContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: const <Widget>[
            SizedBox(height: 12),
            DraggingHandle(),
            SizedBox(height: 16),
            DraggableInfoBody(),
            SizedBox(height: 16),
            DraggableStatusRow(),
            SizedBox(height: 16),
            // DraggableInfoStatus(),
            CustomHorizontallyScrollingRestaurants(),
            SizedBox(height: 24),
            CustomFeaturedListsText(),
            SizedBox(height: 16),
            CustomFeaturedItemsGrid(),
            SizedBox(height: 24),
            CustomRecentPhotosText(),
            SizedBox(height: 16),
            CustomRecentPhotoLarge(),
            SizedBox(height: 12),
            CustomRecentPhotosSmall(),
            SizedBox(height: 16),
          ],
        ),
      ],
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

class DraggingHandle extends StatelessWidget {
  const DraggingHandle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 30,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(16)),
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

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      mapBloc.selectedArtist != null
                          ? '@${mapBloc.selectedArtist!.username!}'
                          : 'Berlin',
                      style: TextStyleTheme.instance
                          .copyWith(color: Colors.white)),
                  const SizedBox(height: 4),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Text(
                        mapBloc.selectedArtist != null
                            ? mapBloc.selectedArtist!.shortDescription ??
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed nisl euismod, aliquam nisl sed, aliquam nisl. Sed sed nisl euismod, aliquam nisl sed, aliquam nisl.'
                            : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed nisl euismod, aliquam nisl sed, aliquam nisl. Sed sed nisl euismod, aliquam nisl sed, aliquam nisl.',
                        maxLines: 2,
                        style: TextStyleTheme.copyWith(
                            color: tertiaryColor, fontSize: 14)),
                  ),
                ],
              ),

              const CircleAvatar(
                radius: 36,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 34,
                  backgroundImage: NetworkImage(defaultProfileImageLink),
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
        children: const <Widget>[
          Text('Featured Lists', style: TextStyle(fontSize: 14))
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
