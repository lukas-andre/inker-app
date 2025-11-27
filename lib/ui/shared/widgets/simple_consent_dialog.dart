import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class SimpleConsentDialog extends StatefulWidget {
  final VoidCallback onConsentGiven;

  const SimpleConsentDialog({
    super.key,
    required this.onConsentGiven,
  });

  @override
  State<SimpleConsentDialog> createState() => _SimpleConsentDialogState();
}

class _SimpleConsentDialogState extends State<SimpleConsentDialog> {
  bool _isAccepted = false;

  @override
  Widget build(BuildContext context) {
    // TODO: Replace with localized text from .arb files
    const String consentTitle = 'Artist\'s Consent';
    const String consentText =
        'I, the undersigned, hereby grant permission to the tattoo artist to perform the tattoo procedure. I have been informed of the risks, aftercare instructions, and potential complications. I release the artist and the studio from any liability, known or unknown, that may arise from this procedure. I confirm that I am over 18 years of age and am not under the influence of alcohol or drugs.';
    const String acceptText =
        'I have read and accept the artist\'s consent terms.';

    return AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.surface,
      title: Text(consentTitle, style: TextStyleTheme.headline3),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              consentText,
              style: TextStyleTheme.bodyText2.copyWith(color: Colors.white70),
            ),
            const SizedBox(height: 24),
            CheckboxListTile(
              title: Text(
                acceptText,
                style: TextStyleTheme.caption.copyWith(color: Colors.white),
              ),
              value: _isAccepted,
              onChanged: (bool? value) {
                setState(() {
                  _isAccepted = value ?? false;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
              contentPadding: EdgeInsets.zero,
              activeColor: Theme.of(context).colorScheme.secondary,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false), // User cancelled
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: _isAccepted
              ? () {
                  widget.onConsentGiven();
                  Navigator.of(context).pop(true); // Consent given
                }
              : null, // Disabled if not accepted
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.secondary,
            disabledBackgroundColor: Colors.grey.withOpacity(0.5),
          ),
          child: const Text('Confirm Booking'),
        ),
      ],
    );
  }
} 