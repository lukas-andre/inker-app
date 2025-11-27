import 'package:flutter/material.dart';
import 'package:inker_studio/features/register/ui/register/widgets/register_action_button.dart';
import 'package:inker_studio/ui/shared/widgets/buttons.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';

class RegisterActionButtonResponsive extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool showBackButton;
  final VoidCallback? onBack;
  
  const RegisterActionButtonResponsive({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.showBackButton = false,
    this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    final isWeb = Responsive.isTablet(context) || Responsive.isDesktop(context);
    
    if (isWeb) {
      // Web version - inline buttons
      return Container(
        constraints: const BoxConstraints(maxWidth: 400),
        padding: EdgeInsets.only(
          top: Responsive.value(
            context,
            mobile: 20,
            tablet: 32,
            desktop: 40,
          ),
        ),
        child: Row(
          children: [
            if (showBackButton) ...[
              Expanded(
                child: SecondaryButton(
                  onPressed: onBack ?? () {},
                  text: 'Anterior',
                ),
              ),
              const SizedBox(width: 16),
            ],
            Expanded(
              child: PrimaryButton(
                onPressed: onPressed ?? () {},
                isLoading: isLoading,
                isDisabled: onPressed == null,
                text: text,
              ),
            ),
          ],
        ),
      );
    } else {
      // Mobile version - use existing component
      return RegisterActionButton(
        text: text,
        onPressed: onPressed,
        isLoading: isLoading,
      );
    }
  }
}