import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';

class GoogleMapsClonePage extends StatelessWidget {
  const GoogleMapsClonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const CustomGoogleMap(),
          const CustomHeader(),
          DraggableScrollableSheet(
            initialChildSize: 0.30,
            minChildSize: 0.15,
            builder: (BuildContext context, ScrollController scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: const CustomScrollViewContent(),
              );
            },
          ),
        ],
      ),
    );
  }
}

/// Google Map in the background
class CustomGoogleMap extends StatelessWidget {
  const CustomGoogleMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[50],
      child: const Center(child: Text('Google Map here')),
    );
  }
}

/// Search text field plus the horizontally scrolling categories below the text field
class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        CustomSearchContainer(),
        CustomSearchCategories(),
      ],
    );
  }
}

class CustomSearchContainer extends StatelessWidget {
  const CustomSearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
          16, 40, 16, 8), //adjust "40" according to the status bar size
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(6)),
        child: const Row(
          children: <Widget>[
            CustomTextField(),
            Icon(Icons.mic),
            SizedBox(width: 16),
            CustomUserAvatar(),
            SizedBox(width: 16),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        maxLines: 1,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(16),
          hintText: 'Search here',
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class CustomUserAvatar extends StatelessWidget {
  const CustomUserAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
          color: Colors.grey[500], borderRadius: BorderRadius.circular(16)),
    );
  }
}

class CustomSearchCategories extends StatelessWidget {
  const CustomSearchCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          SizedBox(width: 16),
          CustomCategoryChip(Icons.fastfood, 'Takeout'),
          SizedBox(width: 12),
          CustomCategoryChip(Icons.directions_bike, 'Delivery'),
          SizedBox(width: 12),
          CustomCategoryChip(Icons.local_gas_station, 'Gas'),
          SizedBox(width: 12),
          CustomCategoryChip(Icons.shopping_cart, 'Groceries'),
          SizedBox(width: 12),
          CustomCategoryChip(Icons.local_pharmacy, 'Pharmacies'),
          SizedBox(width: 12),
        ],
      ),
    );
  }
}

class CustomCategoryChip extends StatelessWidget {
  final IconData iconData;
  final String title;

  const CustomCategoryChip(this.iconData, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Row(
        children: <Widget>[
          Icon(iconData, size: 16),
          const SizedBox(width: 8),
          Text(title)
        ],
      ),
      backgroundColor: Colors.grey[50],
    );
  }
}

/// Content of the DraggableBottomSheet's child SingleChildScrollView
class CustomScrollViewContent extends StatelessWidget {
  const CustomScrollViewContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      margin: const EdgeInsets.all(0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
        ),
        child: const CustomInnerContent(),
      ),
    );
  }
}

class CustomInnerContent extends StatelessWidget {
  const CustomInnerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        SizedBox(height: 12),
        CustomDraggingHandle(),
        SizedBox(height: 16),
        CustomExploreBerlin(),
        SizedBox(height: 16),
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
    );
  }
}

class CustomDraggingHandle extends StatelessWidget {
  const CustomDraggingHandle({super.key});

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

class CustomExploreBerlin extends StatelessWidget {
  const CustomExploreBerlin({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapBloc, MapState>(
      builder: (context, state) {
        final mapBloc = context.read<MapBloc>();
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                mapBloc.selectedArtist != null
                    ? mapBloc.selectedArtist!.username!
                    : 'Berlin',
                style: const TextStyle(fontSize: 22, color: Colors.black45)),
            const SizedBox(width: 8),
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(16)),
              child: const Icon(Icons.arrow_forward_ios,
                  size: 12, color: Colors.black54),
            ),
          ],
        );
      },
    );
  }
}

class CustomHorizontallyScrollingRestaurants extends StatelessWidget {
  const CustomHorizontallyScrollingRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
  const CustomFeaturedListsText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16),
      //only to left align the text
      child: Row(
        children: <Widget>[
          Text('Featured Lists', style: TextStyle(fontSize: 14))
        ],
      ),
    );
  }
}

class CustomFeaturedItemsGrid extends StatelessWidget {
  const CustomFeaturedItemsGrid({super.key});

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
  const CustomRecentPhotosText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16),
      child: Row(
        children: <Widget>[
          Text('Recent Photos', style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}

class CustomRecentPhotoLarge extends StatelessWidget {
  const CustomRecentPhotoLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomFeaturedItem(),
    );
  }
}

class CustomRecentPhotosSmall extends StatelessWidget {
  const CustomRecentPhotosSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomFeaturedItemsGrid();
  }
}

class CustomRestaurantCategory extends StatelessWidget {
  const CustomRestaurantCategory({super.key});

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
  const CustomFeaturedItem({super.key});

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
