import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/features/register/bloc/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/features/register/ui/register/artist/register_artist_page_1.dart';
import 'package:inker_studio/features/register/ui/register/artist/register_artist_page_2.dart';
import 'package:inker_studio/features/register/ui/register/artist/register_artist_page_3.dart';
import 'package:inker_studio/features/register/ui/register/artist/register_artist_page_4.dart';
import 'package:inker_studio/features/register/ui/register/web/register_artist_web_page.dart';
import 'package:inker_studio/utils/responsive/responsive_builder.dart';

class RegisterArtistResponsivePage extends StatelessWidget {
  const RegisterArtistResponsivePage({super.key});

  static Route route() {
    return MaterialPageRoute<void>(
        builder: (_) => const RegisterArtistResponsivePage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      buildWhen: (previous, current) => previous.pageIndex != current.pageIndex,
      builder: (context, state) {
        return ResponsiveBuilder(
          mobile: _getMobilePage(state.pageIndex),
          tablet: const RegisterArtistWebPage(),
          desktop: const RegisterArtistWebPage(),
        );
      },
    );
  }

  Widget _getMobilePage(int pageIndex) {
    switch (pageIndex) {
      case 1:
        return const RegisterArtistPage1();
      case 2:
        return const RegisterArtistPage2();
      case 3:
        return const RegisterArtistPage3();
      case 4:
        return const RegisterArtistPage4();
      default:
        return const RegisterArtistPage1();
    }
  }
}