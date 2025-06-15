import 'package:flutter/material.dart';
import 'package:inker_studio/features/register/ui/register/customer/register_customer_page_1.dart';
import 'package:inker_studio/features/register/ui/register/web/register_customer_simple_page.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';

class RegisterCustomerResponsivePage extends StatelessWidget {
  const RegisterCustomerResponsivePage({super.key});

  static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => const RegisterCustomerResponsivePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isWeb = Responsive.isTablet(context) || Responsive.isDesktop(context) || Responsive.isDesktopLarge(context);
    
    if (isWeb) {
      return const RegisterCustomerSimplePage();
    } else {
      return const RegisterCustomerPage1();
    }
  }
}