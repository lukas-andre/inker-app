import 'package:flutter/material.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class EmptyListIndicator extends StatelessWidget {
  final String title;
  final String message;
  final IconData icon;
  final Color? iconColor;
  final VoidCallback? onActionPressed;
  final String? actionText;

  const EmptyListIndicator({
    super.key,
    required this.title,
    required this.message,
    this.icon = Icons.inbox_outlined,
    this.iconColor,
    this.onActionPressed,
    this.actionText,
  });

  // Specific constructor for Open Quotations Empty State
  factory EmptyListIndicator.openQuotations(S l10n) {
    return EmptyListIndicator(
      icon: Icons.search_off_rounded,
      title: l10n.noOpenQuotationsFoundTitle, // Placeholder l10n.noOpenQuotationsFoundTitle
      message: l10n.noOpenQuotationsFoundBody, // Placeholder l10n.noOpenQuotationsFoundBody
      // No action button needed here
    );
  }

  // Specific constructor for Participating Quotations Empty State
  factory EmptyListIndicator.participatingQuotations(S l10n) {
    return EmptyListIndicator(
      icon: Icons.rate_review_outlined,
      iconColor: Colors.blue[300],
      title: l10n.noParticipatingQuotationsFoundTitle, // Placeholder l10n.noParticipatingQuotationsFoundTitle
      message: l10n.noParticipatingQuotationsFoundBody, // Placeholder l10n.noParticipatingQuotationsFoundBody
       // No action button needed here
    );
  }

    // Specific constructor for Direct Quotations Empty State (Artist)
    factory EmptyListIndicator.directArtist(S l10n) {
      return EmptyListIndicator(
        icon: Icons.mail_outline_rounded,
        iconColor: Colors.orange[300],
        title: l10n.noDirectArtistRequestsFoundTitle, // Placeholder l10n.noDirectArtistRequestsFoundTitle
        message: l10n.noDirectArtistRequestsFoundBody, // Placeholder l10n.noDirectArtistRequestsFoundBody
      );
    }

    // Specific constructor for Direct Quotations Empty State (Customer)
    factory EmptyListIndicator.directCustomer(S l10n) {
      return EmptyListIndicator(
        icon: Icons.receipt_long_outlined,
         iconColor: Colors.blue[300],
        title: l10n.noDirectCustomerQuotationsFoundTitle, // Placeholder l10n.noDirectCustomerQuotationsFoundTitle
        message: l10n.noDirectCustomerQuotationsFoundBody, // Placeholder l10n.noDirectCustomerQuotationsFoundBody
      );
    }

  @override
  Widget build(BuildContext context) {
     final effectiveIconColor = iconColor ?? Colors.grey[600];

    return Center(
      child: SingleChildScrollView( // Allow scrolling if content overflows
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min, // Take minimum space
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: effectiveIconColor!.withOpacity(0.1),
                  border: Border.all(
                     color: effectiveIconColor.withOpacity(0.3),
                     width: 1.5,
                   ),
                ),
                child: Icon(
                  icon,
                  size: 50, // Slightly smaller icon
                  color: effectiveIconColor,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                title,
                style: TextStyleTheme.headline3.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                message,
                style: TextStyleTheme.bodyText2.copyWith(
                  color: Colors.white70,
                ),
                textAlign: TextAlign.center,
              ),
              if (onActionPressed != null && actionText != null) ...[
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: onActionPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: effectiveIconColor, // Use icon color for button
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20),
                     ),
                  ),
                  child: Text(actionText!),
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
} 