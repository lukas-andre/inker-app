import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';
import 'package:inker_studio/domain/blocs/delete_account/delete_account_bloc.dart';
import 'package:inker_studio/domain/blocs/settings/settings_bloc.dart';
import 'package:inker_studio/domain/models/settings/settings.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/localization_cubit.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/image/image_cache_settings.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:permission_handler/permission_handler.dart';

class SettingsPage extends StatelessWidget {
  static const String routeName = '/settings';

  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
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
            loaded: (settings) => _SettingsContent(settings: settings),
            error: (message) => Center(
              child: Text(
                '${S.of(context).error}: $message',
                style: TextStyleTheme.headline2,
              ),
            ),
          );
        },
      ),
    );
  }
}

class _SettingsContent extends StatelessWidget {
  final Settings settings;

  const _SettingsContent({required this.settings});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _ApplicationSettings(settings: settings),
        _AccountSettings(),
        _LegalSettings(),
      ],
    );
  }
}

class _ApplicationSettings extends StatelessWidget {
  final Settings settings;

  const _ApplicationSettings({required this.settings});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SettingsBloc>();
    final localizationCubit = context.read<LocalizationCubit>();

    return _SettingsSection(
      title: S.of(context).applicationSettings,
      children: [
        SwitchListTile(
          title: Text(S.of(context).notifications, style: TextStyleTheme.bodyText1),
          subtitle: Text(
            S.of(context).notificationsDescription,
            style: TextStyleTheme.caption.copyWith(color: Colors.grey),
          ),
          value: settings.notificationsEnabled,
          onChanged: (value) => _handleNotificationPermission(context, value, bloc),
          activeColor: secondaryColor,
        ),
        SwitchListTile(
          title: Text(S.of(context).locationServices, style: TextStyleTheme.bodyText1),
          subtitle: Text(
            S.of(context).locationServicesDescription,
            style: TextStyleTheme.caption.copyWith(color: Colors.grey),
          ),
          value: settings.locationServicesEnabled,
          onChanged: (value) => _handleLocationPermission(context, value, bloc),
          activeColor: secondaryColor,
        ),
        ListTile(
          leading: const Icon(Icons.language, color: Colors.white70),
          title: Text(S.of(context).language, style: TextStyleTheme.bodyText1),
          subtitle: Text(
            _getLanguageName(localizationCubit.state.languageCode),
            style: TextStyleTheme.caption.copyWith(color: Colors.grey),
          ),
          trailing: const Icon(Icons.chevron_right, color: Colors.white70),
          onTap: () => Navigator.of(context).pushNamed('/languageSettings'),
        ),
        ListTile(
          leading: const Icon(Icons.image, color: Colors.white70),
          title: Text("Caché de imágenes", style: TextStyleTheme.bodyText1),
          subtitle: Text(
            "Administra el almacenamiento de imágenes",
            style: TextStyleTheme.caption.copyWith(color: Colors.grey),
          ),
          trailing: const Icon(Icons.chevron_right, color: Colors.white70),
          onTap: () => _showImageCacheSettingsDialog(context),
        ),
      ],
    );
  }

  void _showImageCacheSettingsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: explorerSecondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Gestión de caché",
                    style: TextStyleTheme.headline3.copyWith(color: Colors.white),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.white70),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const ImageCacheSettings(),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () => Navigator.pop(context),
                style: TextButton.styleFrom(
                  backgroundColor: secondaryColor,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                child: Text("Cerrar"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _handleNotificationPermission(
    BuildContext context,
    bool value,
    SettingsBloc bloc,
  ) async {
    if (value) {
      final status = await Permission.notification.request();
      if (status.isGranted) {
        bloc.add(const SettingsEvent.toggleNotifications(true));
      } else {
        _showPermissionDeniedDialog(
          context,
          S.of(context).notificationsPermissionRequired,
        );
      }
    } else {
      bloc.add(const SettingsEvent.toggleNotifications(false));
    }
  }

  Future<void> _handleLocationPermission(
    BuildContext context,
    bool value,
    SettingsBloc bloc,
  ) async {
    if (value) {
      final status = await Permission.location.request();
      if (status.isGranted) {
        bloc.add(const SettingsEvent.toggleLocationServices(true));
      } else {
        _showPermissionDeniedDialog(
          context,
          S.of(context).locationPermissionRequired,
        );
      }
    } else {
      bloc.add(const SettingsEvent.toggleLocationServices(false));
    }
  }

  String _getLanguageName(String code) {
    switch (code) {
      case 'en':
        return 'English';
      case 'es':
        return 'Español';
      default:
        return 'English';
    }
  }
}

class _AccountSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _SettingsSection(
      title: S.of(context).accountSettings,
      children: [
        ListTile(
          leading: const Icon(Icons.lock_outline, color: Colors.white70),
          title: Text(S.of(context).changePassword, style: TextStyleTheme.bodyText1),
          trailing: const Icon(Icons.chevron_right, color: Colors.white70),
          // onTap: () => _showChangePasswordDialog(context),
          onTap: () => Navigator.of(context).pushNamed('/passwordRecovery'),
        ),
        ListTile(
          key: const Key('logoutButton'),
          leading: const Icon(Icons.logout, color: Colors.white70),
          title: Text(S.of(context).logOut, style: TextStyleTheme.bodyText1),
          onTap: () => _showLogoutDialog(context),
        ),
        ListTile(
          key: const Key('deleteAccountButton'),
          leading: const Icon(Icons.delete_forever, color: Colors.red),
          title: Text(
            S.of(context).deleteAccount,
            style: TextStyleTheme.bodyText1.copyWith(color: Colors.red),
          ),
          onTap: () => _showDeleteAccountDialog(context),
        ),
      ],
    );
  }

  void _showChangePasswordDialog(BuildContext context) {
    final currentPasswordController = TextEditingController();
    final newPasswordController = TextEditingController();
    final confirmPasswordController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: explorerSecondaryColor,
        title: Text(S.of(context).changePassword, style: TextStyleTheme.headline3),
        content: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _PasswordField(
                controller: currentPasswordController,
                labelText: S.of(context).currentPassword,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return S.of(context).required;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              _PasswordField(
                controller: newPasswordController,
                labelText: S.of(context).newPassword,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return S.of(context).required;
                  }
                  if (value!.length < 8) {
                    return S.of(context).passwordTooShort;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              _PasswordField(
                controller: confirmPasswordController,
                labelText: S.of(context).confirmNewPassword,
                validator: (value) {
                  if (value != newPasswordController.text) {
                    return S.of(context).passwordsDontMatch;
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            child: Text(S.of(context).cancel),
            onPressed: () => Navigator.pop(context),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: secondaryColor),
            child: Text(S.of(context).change),
            onPressed: () {
              if (formKey.currentState?.validate() ?? false) {
                // Add password change logic here
                Navigator.pop(context);
                _showSuccessSnackBar(
                  context,
                  S.of(context).passwordChangedSuccessfully,
                );
              }
            },
          ),
        ],
      ),
    );
  }

  void _showDeleteAccountDialog(BuildContext context) {
    final passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    showDialog(
      context: context,
      builder: (context) => BlocListener<DeleteAccountBloc, DeleteAccountState>(
        listener: (context, state) {
          state.maybeWhen(
            success: () {
              context.read<AuthBloc>().add(
                    AuthLogoutRequested(context.read<AuthBloc>().state.session),
                  );
              Navigator.of(context).pop();
            },
            failure: (error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(error)),
              );
            },
            orElse: () {},
          );
        },
        child: AlertDialog(
          backgroundColor: explorerSecondaryColor,
          title: Text(
            S.of(context).deleteAccount,
            style: TextStyleTheme.headline3.copyWith(color: Colors.red),
          ),
          content: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).deleteAccountWarning,
                  style: TextStyleTheme.bodyText2,
                ),
                const SizedBox(height: 24),
                _PasswordField(
                  controller: passwordController,
                  labelText: S.of(context).confirmPassword,
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return S.of(context).required;
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: Text(S.of(context).cancel),
              onPressed: () => Navigator.pop(context),
            ),
            BlocBuilder<DeleteAccountBloc, DeleteAccountState>(
              builder: (context, state) {
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: state.maybeWhen(
                    inProgress: () => null,
                    orElse: () {
                      return () {
                        if (formKey.currentState?.validate() ?? false) {
                          context.read<DeleteAccountBloc>().add(
                                DeleteAccountEvent.requested(passwordController.text),
                              );
                        }
                      };
                    },
                  ),
                  child: state.maybeWhen(
                    inProgress: () => const CircularProgressIndicator(color: Colors.white),
                    orElse: () => Text(S.of(context).deleteAccount),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: explorerSecondaryColor,
        title: Text(S.of(context).confirmLogout, style: TextStyleTheme.headline3),
        content: Text(S.of(context).areYouSureLogout, style: TextStyleTheme.bodyText1),
        actions: [
          TextButton(
            key: const Key('cancelLogoutButton'),
            child: Text(S.of(context).cancel),
            onPressed: () => Navigator.pop(context),
          ),
          ElevatedButton(
            key: const Key('confirmLogoutButton'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            child: Text(S.of(context).logOut),
            onPressed: () {
              Navigator.pop(context);
              context
                  .read<AuthBloc>()
                  .add(AuthLogoutRequested(context.read<AuthBloc>().state.session));
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}

class _LegalSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _SettingsSection(
      title: S.of(context).legal,
      children: [
        ListTile(
          leading: const Icon(Icons.privacy_tip, color: Colors.white70),
          title: Text(S.of(context).privacyPolicy, style: TextStyleTheme.bodyText1),
          trailing: const Icon(Icons.chevron_right, color: Colors.white70),
          onTap: () => Navigator.of(context).pushNamed('/privacyPolicy'),
        ),
        ListTile(
          leading: const Icon(Icons.description, color: Colors.white70),
          title: Text(S.of(context).termsAndConditions, style: TextStyleTheme.bodyText1),
          trailing: const Icon(Icons.chevron_right, color: Colors.white70),
          onTap: () => Navigator.of(context).pushNamed('/termsAndConditions'),
        ),
      ],
    );
  }
}

class _SettingsSection extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const _SettingsSection({
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
          child: Text(
            title,
            style: TextStyleTheme.subtitle1.copyWith(color: secondaryColor),
          ),
        ),
        ...children,
      ],
    );
  }
}

class _PasswordField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final String? Function(String?)? validator;

  const _PasswordField({
    required this.controller,
    required this.labelText,
    this.validator,
  });

  @override
  State<_PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<_PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: _obscureText,
      style: TextStyleTheme.bodyText1,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: TextStyleTheme.bodyText2,
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
            color: Colors.white70,
          ),
          onPressed: () => setState(() => _obscureText = !_obscureText),
        ),
        border: const OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade600),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: secondaryColor),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        errorStyle: const TextStyle(color: Colors.red),
      ),
      validator: widget.validator,
    );
  }
}

void _showPermissionDeniedDialog(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: explorerSecondaryColor,
      title: Text(
        S.of(context).permissionRequired,
        style: TextStyleTheme.headline3,
      ),
      content: Text(
        message,
        style: TextStyleTheme.bodyText1,
      ),
      actions: [
        TextButton(
          child: Text(S.of(context).cancel),
          onPressed: () => Navigator.pop(context),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: secondaryColor,
          ),
          child: Text(S.of(context).openSettings),
          onPressed: () {
            Navigator.pop(context);
            openAppSettings();
          },
        ),
      ],
    ),
  );
}

void _showSuccessSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(
        children: [
          const Icon(
            Icons.check_circle,
            color: Colors.white,
          ),
          const SizedBox(width: 8),
          Text(
            message,
            style: TextStyleTheme.bodyText2.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.green,
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      duration: const Duration(seconds: 3),
    ),
  );
}
