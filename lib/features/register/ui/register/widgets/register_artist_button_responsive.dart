import 'package:flutter/material.dart';
import 'package:inker_studio/features/register/ui/register/register_artist_responsive_page.dart';
import 'package:inker_studio/features/register/ui/register/widgets/register_artist_button.dart';
import 'package:inker_studio/features/register/ui/register/widgets/register_user_by_type_button.dart';
import 'package:inker_studio/test_utils/register_keys.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';

class RegisterArtistButtonResponsive extends StatelessWidget {
  const RegisterArtistButtonResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    final isWeb = Responsive.isTablet(context) || Responsive.isDesktop(context) || Responsive.isDesktopLarge(context);
    
    if (isWeb) {
      // For web, create a custom button that navigates using named routes
      return RegisterUserByTypeButton(
        key: registerKeys.artistRegistration.artistTypeButton,
        text: 'Soy artista',
        helper: 'Si eres barbero o tatuador',
        onTap: () {
          try {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const RegisterArtistResponsivePage();
                },
              ),
            );
          } catch (e) {
            // Handle navigation error silently
          }
        },
        iconPath: 'assets/icons/color_palette.png',
      );
    } else {
      // For mobile, use the existing button with modal sheet
      return const RegisterArtistButton();
    }
  }
}