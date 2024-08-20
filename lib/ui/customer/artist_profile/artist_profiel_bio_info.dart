import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_profile/artist_profile_bloc.dart';
import 'package:inker_studio/ui/customer/artist_profile/artist_reviews/artist_profile_reviews_page.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/bloc_navigator.dart';

class ArtistProfileBioInfoRow extends StatelessWidget {
  const ArtistProfileBioInfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ArtistProfileBloc, ArtistProfileState>(
      buildWhen: (previous, current) => current is! ArtistProfileStateInitial,
      builder: (context, state) {
        final followersText =
            state.artist?.followers == 1 ? ' seguidor' : ' seguidores';
        final followers = state.artist?.followers ?? '0';
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    followers.toString(),
                    style: TextStyleTheme.copyWith(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    followersText,
                    style: TextStyleTheme.copyWith(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              TextButton(
                onPressed: () {
                  InkerNavigator.push(
                      context,
                      ArtistProfileReviewsPage(
                        artistId: state.artist!.id!,
                      ));
                },
                child: Text('Opiniones  👉',
                    style: TextStyleTheme.copyWith(
                        fontSize: 16, color: Colors.white)),
              ),
            ],
          ),
        );
      },
    );
  }
}
