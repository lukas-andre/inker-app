import 'package:flutter/material.dart';
import 'package:inker_studio/features/register/ui/register/artist/register_artist_page_1.dart';
import 'package:inker_studio/features/register/ui/register/web/register_artist_simple_page.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';

class RegisterArtistResponsivePage extends StatelessWidget {
  const RegisterArtistResponsivePage({super.key});

  static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => const RegisterArtistResponsivePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isWeb = Responsive.isTablet(context) || Responsive.isDesktop(context) || Responsive.isDesktopLarge(context);
    
    if (isWeb) {
      return const RegisterArtistSimplePage();
    } else {
      return const RegisterArtistPage1();
    }
  }
}