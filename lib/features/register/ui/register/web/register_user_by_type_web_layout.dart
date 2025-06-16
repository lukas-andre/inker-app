import 'package:flutter/material.dart';
import 'package:inker_studio/features/register/ui/register/widgets/close_register_button.dart'
    show CloseRegisterButton;
import 'package:inker_studio/features/register/ui/register/widgets/register_artist_button_responsive.dart';
import 'package:inker_studio/features/register/ui/register/widgets/register_customer_button_responsive.dart';
import 'package:inker_studio/features/register/ui/register/widgets/register_user_by_type_subtitle.dart'
    show RegisterUserByTypeSubTitle;
import 'package:inker_studio/features/register/ui/register/widgets/register_user_by_type_title.dart'
    show RegisterUserByTypeTitle;
import 'package:inker_studio/ui/theme/app_styles.dart';
import 'package:inker_studio/utils/layout/row_spacer.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';
import 'package:inker_studio/features/register/ui/register/widgets/web_register_button_wrapper.dart';

class RegisterUserByTypeWebLayout extends StatelessWidget {
  const RegisterUserByTypeWebLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isDesktop = Responsive.isDesktop(context) || Responsive.isDesktopLarge(context);
    final contentWidth = isDesktop ? 900.0 : (screenWidth > 600 ? 600.0 : screenWidth * 0.9);
    
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            primaryColor,
            primaryColor.withValues(alpha: 0.95),
            explorerSecondaryColor,
          ],
        ),
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
              vertical: screenHeight * 0.05,
            ),
            constraints: BoxConstraints(
              maxWidth: contentWidth,
              minHeight: screenHeight * 0.8,
            ),
            decoration: BoxDecoration(
              color: explorerSecondaryColor.withValues(alpha: 0.4),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: Colors.white.withValues(alpha: 0.05),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.2),
                  blurRadius: 40,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Header with close button
                Container(
                  padding: EdgeInsets.all(
                    Responsive.value(
                      context,
                      mobile: 16,
                      tablet: 24,
                      desktop: 32,
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CloseRegisterButton(index: 0),
                    ],
                  ),
                ),
                
                // Main content
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Responsive.value(
                      context,
                      mobile: 24,
                      tablet: 48,
                      desktop: 80,
                    ),
                  ),
                  child: Column(
                    children: [
                      // Title and subtitle with enhanced styling
                      _buildHeader(context),
                      
                      RowSpacer(
                        space: Responsive.value(
                          context,
                          mobile: 40,
                          tablet: 60,
                          desktop: 80,
                        ),
                      ),
                      
                      // User type selection buttons
                      _buildUserTypeButtons(context),
                      
                      const RowSpacer(space: 60),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
  Widget _buildHeader(BuildContext context) {
    return Column(
      children: [
        // Title with gradient effect
        ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: [
              Colors.white,
              Colors.white.withValues(alpha: 0.9),
            ],
          ).createShader(bounds),
          child: const RegisterUserByTypeTitle(),
        ),
        
        const RowSpacer(space: 20),
        
        // Subtitle with better opacity
        const Opacity(
          opacity: 0.8,
          child: RegisterUserByTypeSubTitle(),
        ),
      ],
    );
  }

  Widget _buildUserTypeButtons(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context) || Responsive.isDesktopLarge(context);
    
    if (isDesktop) {
      // Side by side layout for desktop with enhanced styling
      return const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: WebRegisterButtonWrapper(
              child: RegisterArtistButtonResponsive(),
            ),
          ),
          SizedBox(width: 32),
          Expanded(
            child: WebRegisterButtonWrapper(
              child: RegisterCustomerButtonResponsive(),
            ),
          ),
        ],
      );
    } else {
      // Stacked layout for tablet with enhanced styling
      return const Column(
        children: [
          WebRegisterButtonWrapper(
            height: 180,
            child: RegisterArtistButtonResponsive(),
          ),
          RowSpacer(space: 24),
          WebRegisterButtonWrapper(
            height: 180,
            child: RegisterCustomerButtonResponsive(),
          ),
        ],
      );
    }
  }
}