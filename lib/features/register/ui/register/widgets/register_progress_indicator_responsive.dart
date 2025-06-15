import 'package:flutter/material.dart';
import 'package:inker_studio/features/register/ui/register/widgets/register_progress_indicator.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';

class RegisterProgressIndicatorResponsive extends StatelessWidget {
  final double progress;
  
  const RegisterProgressIndicatorResponsive({
    super.key,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    final isWeb = Responsive.isTablet(context) || Responsive.isDesktop(context);
    
    if (isWeb) {
      // Web version with max width
      return Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          padding: EdgeInsets.symmetric(
            vertical: Responsive.value(
              context,
              mobile: 20,
              tablet: 24,
              desktop: 32,
            ),
          ),
          child: LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.white,
            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xff7450ff)),
            minHeight: 8,
          ),
        ),
      );
    } else {
      // Mobile version - use existing component
      return RegisterProgressIndicator(progress: progress);
    }
  }
}