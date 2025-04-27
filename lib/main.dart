
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:inker_studio/data/firebase/remote_config_service.dart';
import 'package:inker_studio/dependencies/dependencies.dart';
import 'package:inker_studio/firebase_options.dart';
import 'package:inker_studio/ui/theme/overlay_style.dart';
import 'package:inker_studio/ui/views/app_view.dart';
import 'package:inker_studio/utils/dev.dart';
import 'package:intl/date_symbol_data_local.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await Firebase.initializeApp(
    name: 'Inker',
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    badge: true,
    sound: true,
    alert: true,
  );
  try {
    final token = await FirebaseMessaging.instance.getToken();
    dev.log(token ?? '', 'FirebaseMessaging');
  } catch (e) {
    dev.log(e.toString(), 'FirebaseMessaging');
  }

  final remoteConfig = await RemoteConfigService.getInstance();
  dev.log(remoteConfig.inkerApiUrl, 'RemoteConfigService');
  OverlayStyle.apply();

  initializeDateFormatting('es_CL');
  
  
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
