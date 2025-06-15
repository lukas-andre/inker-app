import 'package:flutter/material.dart';
import 'package:inker_studio/features/register/ui/register/widgets/close_register_button.dart'
    show CloseRegisterButton;
import 'package:inker_studio/features/register/ui/register/widgets/register_artist_button_responsive.dart';
import 'package:inker_studio/features/register/ui/register/widgets/register_customer_button_responsive.dart';
import 'package:inker_studio/features/register/ui/register/widgets/register_user_by_type_subtitle.dart'
    show RegisterUserByTypeSubTitle;
import 'package:inker_studio/features/register/ui/register/widgets/register_user_by_type_title.dart'
    show RegisterUserByTypeTitle;
import 'package:inker_studio/utils/layout/row_spacer.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';

class RegisterUserByTypeWebLayout extends StatelessWidget {
  const RegisterUserByTypeWebLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final contentWidth = screenWidth > 600 ? 600.0 : screenWidth * 0.9;
    
    return Center(
      child: Container(
        width: contentWidth,
        padding: EdgeInsets.symmetric(
          horizontal: Responsive.value(
            context,
            mobile: 16,
            tablet: 24,
            desktop: 32,
          ),
          vertical: Responsive.value(
            context,
            mobile: 20,
            tablet: 40,
            desktop: 60,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Close button aligned to the right
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CloseRegisterButton(index: 0),
              ],
            ),
            
            const RowSpacer(space: 40),
            
            // Title and subtitle centered
            const RegisterUserByTypeTitle(),
            const RowSpacer(space: 16),
            const RegisterUserByTypeSubTitle(),
            
            const RowSpacer(space: 60),
            
            // User type selection buttons in a responsive grid
            _buildUserTypeButtons(context),
          ],
        ),
      ),
    );
  }

  Widget _buildUserTypeButtons(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context) || Responsive.isDesktopLarge(context);
    
    if (isDesktop) {
      // Side by side layout for desktop
      return const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: RegisterArtistButtonResponsive(),
          ),
          SizedBox(width: 24),
          Expanded(
            child: RegisterCustomerButtonResponsive(),
          ),
        ],
      );
    } else {
      // Stacked layout for tablet
      return Column(
        children: [
          const RegisterArtistButtonResponsive(),
          const RowSpacer(space: 24),
          const RegisterCustomerButtonResponsive(),
        ],
      );
    }
  }
}