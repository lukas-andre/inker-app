import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/explorer_page/explorer_page_bloc.dart';
import 'package:inker_studio/ui/customer/artist_profile/artist_profile_page.dart';
import 'package:inker_studio/ui/customer/explore/views/list/widgets/explorer_list_view_title.dart';
import 'package:inker_studio/ui/customer/explore/views/list/widgets/explorer_search_bar.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/bloc_navigator.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/layout/row_spacer.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ExplorerListView extends StatelessWidget {
  const ExplorerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(color: primaryColor),
          width: size.width,
          child: SafeArea(
            child: Column(
              children: [
                const ExplorerListViewTitle(),
                const ExplorerSearchBar(),
                const RowSpacer(space: 20),
                ExplorerResultList(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ExplorerResultList extends StatelessWidget {
  ExplorerResultList({Key? key}) : super(key: key);
  final List<String> imageList = [
    'https://cdn.pixabay.com/photo/2019/03/15/09/49/girl-4056684_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/15/16/25/clock-5834193__340.jpg',
    'https://cdn.pixabay.com/photo/2020/09/18/19/31/laptop-5582775_960_720.jpg',
    'https://media.istockphoto.com/photos/woman-kayaking-in-fjord-in-norway-picture-id1059380230?b=1&k=6&m=1059380230&s=170667a&w=0&h=kA_A_XrhZJjw2bo5jIJ7089-VktFK0h0I4OWDqaac0c=',
    'https://cdn.pixabay.com/photo/2019/11/05/00/53/cellular-4602489_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/02/12/10/29/christmas-2059698_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/01/29/17/09/snowboard-4803050_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/02/06/20/01/university-library-4825366_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/11/22/17/28/cat-5767334_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/13/16/22/snow-5828736_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/09/09/27/women-5816861_960_720.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(child: BlocBuilder<ExplorerPageBloc, ExplorerPageState>(
      builder: (context, state) {
        final size = MediaQuery.of(context).size;
        if (state.isLoading) {
          return const InkerProgressIndicator();
        }
        return GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(10),
          childAspectRatio: 0.65,
          crossAxisSpacing: 15,
          mainAxisSpacing: 10,
          children: List.generate(
              state.artistFounded.length,
              (index) => SizedBox(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Expanded(
                                flex: 6,
                                child: GestureDetector(
                                  onTap: () {
                                    InkerNavigator.push(
                                        context,
                                        ArtistProfilePage(
                                            artist: state
                                                .artistFounded[index].artist!));
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    // child: Image.network(
                                    //   state.artistFounded[index].artist!
                                    //           .studioPhoto ??
                                    //       imageList[index],
                                    //   fit: BoxFit.cover,
                                    //   width: size.width,
                                    // ),
                                    child: CachedNetworkImage(
                                      imageUrl: state.artistFounded[index]
                                              .artist!.studioPhoto ??
                                          imageList[index],
                                      fit: BoxFit.cover,
                                      width: size.width,
                                      placeholder: (context, url) =>
                                          const Center(
                                        child: InkerProgressIndicator(
                                          radius: 10,
                                        ),
                                      ),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                    ),
                                  ),
                                )),
                            Container(
                                padding: const EdgeInsets.only(top: 3),
                                width: size.width,
                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      minRadius: 15,
                                      backgroundImage: NetworkImage(state
                                              .artistFounded[index]
                                              .artist!
                                              .profileThumbnail ??
                                          'https://d1riey1i0e5tx2.cloudfront.net/artist/default_profile.jpeg'),
                                    ),
                                    const SizedBox(width: 10),
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              '@${state.artistFounded[index].artist!.username!}',
                                              style: TextStyleTheme.copyWith(
                                                  fontSize: 12,
                                                  color: Colors.white)),
                                          Text(
                                              '${(state.artistFounded[index].distance! * 1000).toInt()} mt',
                                              style: TextStyleTheme.copyWith(
                                                  fontSize: 12,
                                                  color: Colors.white)),
                                        ]),
                                  ],
                                )),
                          ],
                        )
                      ],
                    ),
                  )),
        );
      },
    ));
  }
}
