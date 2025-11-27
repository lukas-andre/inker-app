import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:inker_studio/data/api/fcm/api_fcm_service.dart';
import 'package:inker_studio/domain/blocs/notifications/notifications_bloc.dart';
import 'package:inker_studio/domain/blocs/quoation/quotation_list/quotation_list_bloc.dart';
import 'package:inker_studio/firebase_options.dart';
import 'package:inker_studio/utils/dev.dart';

class FcmService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  late NotificationsBloc _notificationsBloc;
  late QuotationListBloc _quotationListBloc;
  ApiFcmService? _apiFcmService;
  String? _authToken;

  void setBloc(NotificationsBloc bloc) {
    _notificationsBloc = bloc;
  }

  void setQuotationListBloc(QuotationListBloc bloc) {
    _quotationListBloc = bloc;
  }

  void setApiFcmService(ApiFcmService apiFcmService) {
    _apiFcmService = apiFcmService;
  }

  void setAuthToken(String? token) {
    _authToken = token;
  }

  Future<void> initialize() async {
    final settings = await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    _notificationsBloc.add(NotificationsEvent.permissionUpdated(
      settings.authorizationStatus == AuthorizationStatus.authorized,
    ));

    final initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      _handleInitialMessage(initialMessage);
    }

    FirebaseMessaging.onMessage.listen(_handleForegroundMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessageOpenedApp);
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    
    // Setup token refresh listener
    _setupTokenRefreshListener();
  }

  void _handleForegroundMessage(RemoteMessage message) {
    dev.log('Mensaje recibido en primer plano: ${message.data}', 'FCM');
    dev.log('AppState: ${AppState.foreground}', 'FCM');

    _notificationsBloc.add(NotificationsEvent.notificationReceived(
      message: message,
      appState: AppState.foreground,
    ));
  }

  void _handleMessageOpenedApp(RemoteMessage message) {
    dev.log('Mensaje recibido en segundo plano: ${message.data}', 'FCM');
    dev.log('AppState: ${AppState.background}', 'FCM');
    _notificationsBloc.add(NotificationsEvent.notificationReceived(
      message: message,
      appState: AppState.background,
    ));
  }

  void _handleInitialMessage(RemoteMessage message) {
    dev.log('Mensaje recibido en terminado: ${message.data}', 'FCM');
    dev.log('AppState: ${AppState.terminated}', 'FCM');
    _notificationsBloc.add(NotificationsEvent.notificationReceived(
      message: message,
      appState: AppState.terminated,
    ));
  }

  Future<String?> getToken() async {
    // For web platform, we need to pass the VAPID key
    if (kIsWeb) {
      return await _firebaseMessaging.getToken(
        vapidKey: 'BAWvUcg-8MmkRLzdK3PWcBfCOdB9ucbm7l_qsyZpYqZB8AD5R9AfvkA1t_P_rA7Ett-ELeOJIbGcrUxml9m9MgM',
      );
    }
    return await _firebaseMessaging.getToken();
  }

  Future<void> subscribeToTopic(String topic) async {
    await _firebaseMessaging.subscribeToTopic(topic);
  }

  Future<void> unsubscribeFromTopic(String topic) async {
    await _firebaseMessaging.unsubscribeFromTopic(topic);
  }

  void _setupTokenRefreshListener() {
    FirebaseMessaging.instance.onTokenRefresh.listen((newToken) async {
      dev.log('FCM token refreshed: $newToken', 'FCM');
      
      // Register the new token with backend if authenticated
      if (_authToken != null && _apiFcmService != null) {
        try {
          final deviceType = kIsWeb 
            ? DeviceType.web 
            : defaultTargetPlatform == TargetPlatform.iOS 
              ? DeviceType.ios 
              : DeviceType.android;
              
          await _apiFcmService!.registerToken(
            token: newToken,
            deviceType: deviceType,
            authToken: _authToken!,
          );
          
          dev.log('Token registered successfully with backend', 'FCM');
        } catch (e) {
          dev.log('Error registering token with backend: $e', 'FCM');
        }
      }
    });
  }

  Future<void> registerTokenWithBackend(String fcmToken) async {
    if (_authToken != null && _apiFcmService != null) {
      try {
        final deviceType = kIsWeb 
          ? DeviceType.web 
          : defaultTargetPlatform == TargetPlatform.iOS 
            ? DeviceType.ios 
            : DeviceType.android;
            
        await _apiFcmService!.registerToken(
          token: fcmToken,
          deviceType: deviceType,
          authToken: _authToken!,
        );
        
        dev.log('FCM token registered with backend', 'FCM');
      } catch (e) {
        dev.log('Error registering FCM token: $e', 'FCM');
      }
    }
  }
}

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(
    name: 'Inker',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // Using print here as dev.log may not be available in background isolate
  print('Mensaje recibido en segundo plano: ${message.data}');
}
