import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/firebase/remote_config_service.dart';
import 'package:inker_studio/dependencies/dependencies.dart';
import 'package:inker_studio/domain/services/notifications/fcm_token_service.dart';
import 'package:inker_studio/firebase_options.dart';
import 'package:inker_studio/ui/theme/overlay_style.dart';
import 'package:inker_studio/ui/views/app_view.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:inker_studio/utils/date_time_formatter.dart';
import 'package:intl/date_symbol_data_local.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    // Initialize Firebase with proper configuration
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    // Configure Firebase Messaging
    FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      badge: true,
      sound: true,
      alert: true,
    );
    
    // Initialize FCM token service asynchronously
    // This won't block app startup - token will be available later
    FcmTokenService.instance.initialize();

    // Initialize RemoteConfig with timeout
    try {
      final remoteConfig = await RemoteConfigService.getInstance()
          .timeout(const Duration(seconds: 5), onTimeout: () {
        dev.log('RemoteConfig timeout - using defaults', 'RemoteConfigService');
        return RemoteConfigService.getInstance();
      });
      dev.log(remoteConfig.inkerApiUrl, 'RemoteConfigService');
    } catch (e) {
      dev.log('RemoteConfig error: $e', 'RemoteConfigService');
    }
  } catch (e) {
    dev.log('Firebase initialization error: $e', 'Firebase');
    // Continue with app initialization even if Firebase fails
  }

  OverlayStyle.apply();

  initializeDateFormatting('es_CL');
  DateTimeFormatter.initialize();

  final providers = await buildProviders();

  runApp(MyApp(providers: providers));
}

class MyApp extends StatelessWidget {
  final List<RepositoryProvider> providers;

  const MyApp({super.key, required this.providers});

  @override
  Widget build(BuildContext context) {
    // Verify that all required providers are available
    dev.log('Providers count: ${providers.length}', 'MyApp');

    // Just log that we're initializing the app
    dev.log('Initializing app with repository providers', 'MyApp');

    return MultiRepositoryProvider(
      providers: providers,
      child: const AppView(),
    );
  }
}
