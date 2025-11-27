import 'package:flutter/material.dart';
import 'package:inker_studio/features/register/ui/register/register_customer_responsive_page.dart';
import 'package:inker_studio/features/register/ui/register/widgets/register_customer_button.dart';
import 'package:inker_studio/features/register/ui/register/widgets/register_user_by_type_button.dart';
import 'package:inker_studio/test_utils/register_keys.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';

class RegisterCustomerButtonResponsive extends StatelessWidget {
  const RegisterCustomerButtonResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    final isWeb = Responsive.isTablet(context) || Responsive.isDesktop(context) || Responsive.isDesktopLarge(context);
    
    if (isWeb) {
      // For web, create a custom button that navigates using named routes
      return RegisterUserByTypeButton(
        key: registerKeys.customerRegistration.customerTypeButton,
        text: 'Soy espectador',
        helper: 'Si eres cliente o quieres buscar negocios',
        onTap: () {
          try {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return const RegisterCustomerResponsivePage();
                },
              ),
            );
          } catch (e) {
            // Handle navigation error silently
          }
        },
        iconPath: 'assets/icons/message-perspective-matte.png',
      );
    } else {
      // For mobile, use the existing button with modal sheet
      return const RegisterCustomerButton();
    }
  }
}