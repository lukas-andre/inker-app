import 'package:flutter/material.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class PrivacyPolicyPage extends StatelessWidget {
  static const String routeName = '/privacyPolicy';

  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title:
            Text(S.of(context).privacyPolicy, style: TextStyleTheme.headline1),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          _privacyPolicyText(context),
          style: TextStyleTheme.bodyText1,
        ),
      ),
    );
  }

  String _privacyPolicyText(BuildContext context) {
    return '''
${S.of(context).privacyPolicyContent}
''';
  }
}
