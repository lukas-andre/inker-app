import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';
import 'package:inker_studio/domain/blocs/settings/settings_bloc.dart';
import 'package:inker_studio/domain/models/settings/settings.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/localization_cubit.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:permission_handler/permission_handler.dart';

// ignore: must_be_immutable
class SettingsPage extends StatelessWidget {
  static const String routeName = '/settings';

  SettingsPage({super.key});

  late LocalizationCubit localizationCubit;

  @override
  Widget build(BuildContext context) {
    localizationCubit = context.read<LocalizationCubit>();
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(S.of(context).settings, style: TextStyleTheme.headline1),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: InkerProgressIndicator()),
            loading: () => const Center(child: InkerProgressIndicator()),
            loaded: (settings) => _buildSettingsContent(context, settings),
            error: (message) => Center(
              child: Text('${S.of(context).error}: $message',
                  style: TextStyleTheme.headline2),
            ),
          );
        },
      ),
    );
  }

  Widget _buildSettingsContent(BuildContext context, Settings settings) {
    final bloc = BlocProvider.of<SettingsBloc>(context);

    return ListView(
      children: [
        SwitchListTile(
          title: Text(S.of(context).notifications,
              style: TextStyleTheme.bodyText1),
          value: settings.notificationsEnabled,
          onChanged: (value) async {
            if (value) {
              // Solicitar permisos de notificaciones
              final status = await Permission.notification.request();
              if (status.isGranted) {
                bloc.add(const SettingsEvent.toggleNotifications(true));
              }
            } else {
              // Desactivar notificaciones
              bloc.add(const SettingsEvent.toggleNotifications(false));
              // Opcionalmente abrir configuración del sistema
              openAppSettings();
            }
          },
        ),
        SwitchListTile(
          title: Text(S.of(context).locationServices,
              style: TextStyleTheme.bodyText1),
          value: settings.locationServicesEnabled,
          onChanged: (value) async {
            if (value) {
              // Solicitar permisos de ubicación
              final status = await Permission.location.request();
              if (status.isGranted) {
                bloc.add(const SettingsEvent.toggleLocationServices(true));
              }
            } else {
              // Desactivar ubicación
              bloc.add(const SettingsEvent.toggleLocationServices(false));
              // Opcionalmente abrir configuración del sistema
              openAppSettings();
            }
          },
        ),
        ListTile(
          leading: const Icon(Icons.language),
          title: Text(S.of(context).language, style: TextStyleTheme.bodyText1),
          subtitle: Text(
            _getCurrentLanguageName(context),
            style: TextStyleTheme.caption.copyWith(color: Colors.grey),
          ),
          trailing: const Icon(Icons.chevron_right),
          onTap: () => _navigateToLanguageSettings(context),
        ),
        ListTile(
          leading: const Icon(Icons.privacy_tip),
          title: Text(S.of(context).privacyPolicy,
              style: TextStyleTheme.bodyText1),
          trailing: const Icon(Icons.chevron_right),
          onTap: () => _navigateToPrivacyPolicy(context),
        ),
        ListTile(
          leading: const Icon(Icons.description),
          title: Text(S.of(context).termsAndConditions,
              style: TextStyleTheme.bodyText1),
          trailing: const Icon(Icons.chevron_right),
          onTap: () => _navigateToTermsAndConditions(context),
        ),
        ListTile(
          key: const Key('logoutButton'),
          leading: const Icon(Icons.logout),
          title: Text(S.of(context).logOut, style: TextStyleTheme.bodyText1),
          onTap: () => _confirmLogout(context),
        ),
      ],
    );
  }

  String _getCurrentLanguageName(BuildContext context) {
    final locale = localizationCubit.state.languageCode;
    switch (locale) {
      case 'en':
        return 'English';
      case 'es':
        return 'Español';
      default:
        return 'English';
    }
  }

  void _navigateToLanguageSettings(BuildContext context) {
    Navigator.of(context).pushNamed('/languageSettings');
  }

  void _navigateToPrivacyPolicy(BuildContext context) {
    Navigator.of(context).pushNamed('/privacyPolicy');
  }

  void _navigateToTermsAndConditions(BuildContext context) {
    Navigator.of(context).pushNamed('/termsAndConditions');
  }

  void _confirmLogout(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text(S.of(context).confirmLogout),
          content: Text(S.of(context).areYouSureLogout),
          actions: [
            TextButton(
              key: const Key('cancelLogoutButton'),
              child: Text(S.of(context).cancel),
              onPressed: () => Navigator.of(dialogContext).pop(),
            ),
            TextButton(
              key: const Key('confirmLogoutButton'),
              child: Text(S.of(context).logOut),
              onPressed: () {
                Navigator.of(dialogContext).pop();
                context.read<AuthBloc>().add(AuthLogoutRequested(
                    context.read<AuthBloc>().state.session));
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
