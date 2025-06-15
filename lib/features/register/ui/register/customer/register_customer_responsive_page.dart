import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/features/register/bloc/register/customer/register_customer_bloc.dart';
import 'package:inker_studio/features/register/ui/register/customer/register_customer_page_1.dart';
import 'package:inker_studio/features/register/ui/register/customer/register_customer_page_2.dart';
import 'package:inker_studio/features/register/ui/register/customer/register_customer_page_3.dart';
import 'package:inker_studio/features/register/ui/register/web/register_customer_web_page.dart';
import 'package:inker_studio/utils/responsive/responsive_builder.dart';

class RegisterCustomerResponsivePage extends StatelessWidget {
  const RegisterCustomerResponsivePage({super.key});

  static Route route() {
    return MaterialPageRoute<void>(
        builder: (_) => const RegisterCustomerResponsivePage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCustomerBloc, RegisterCustomerState>(
      buildWhen: (previous, current) => previous.pageIndex != current.pageIndex,
      builder: (context, state) {
        return ResponsiveBuilder(
          mobile: _getMobilePage(state.pageIndex),
          tablet: const RegisterCustomerWebPage(),
          desktop: const RegisterCustomerWebPage(),
        );
      },
    );
  }

  Widget _getMobilePage(int pageIndex) {
    switch (pageIndex) {
      case 1:
        return const RegisterCustomerPage1();
      case 2:
        return const RegisterCustomerPage2();
      case 3:
        return const RegisterCustomerPage3();
      default:
        return const RegisterCustomerPage1();
    }
  }
}