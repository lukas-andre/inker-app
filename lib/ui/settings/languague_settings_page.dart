import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/localization_cubit.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class LanguageSettingsPage extends StatelessWidget {
  static const String routeName = '/languageSettings';

  const LanguageSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentLocale = context.watch<LocalizationCubit>().state;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(S.of(context).language, style: TextStyleTheme.headline1),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView(
        children: [
          _buildLanguageTile(
            context,
            languageCode: 'en',
            languageName: 'English',
            isSelected: currentLocale.languageCode == 'en',
          ),
          _buildLanguageTile(
            context,
            languageCode: 'es',
            languageName: 'Español',
            isSelected: currentLocale.languageCode == 'es',
          ),
          // Add more languages here if needed
        ],
      ),
    );
  }

  Widget _buildLanguageTile(
    BuildContext context, {
    required String languageCode,
    required String languageName,
    required bool isSelected,
  }) {
    return ListTile(
      title: Text(languageName, style: TextStyleTheme.bodyText1),
      trailing: isSelected ? const Icon(Icons.check) : null,
      onTap: () {
        _changeLanguage(context, languageCode);
      },
    );
  }

  void _changeLanguage(BuildContext context, String languageCode) {
    final locale = Locale(languageCode);
    context.read<LocalizationCubit>().changeLocale(locale);
  }
}
