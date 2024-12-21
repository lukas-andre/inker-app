import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:inker_studio/domain/blocs/notifications/notifications_bloc.dart';
import 'package:inker_studio/firebase_options.dart';

class FcmService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  late NotificationsBloc _notificationsBloc;

  void setBloc(NotificationsBloc bloc) {
    _notificationsBloc = bloc;
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
  }

  void _handleForegroundMessage(RemoteMessage message) {
    print('Mensaje recibido en primer plano: ${message.data}');
    print('AppState: ${AppState.foreground}');
    _notificationsBloc.add(NotificationsEvent.notificationReceived(
      message: message,
      appState: AppState.foreground,
    ));
    
  }

  void _handleMessageOpenedApp(RemoteMessage message) {
    print('Mensaje recibido en segundo plano: ${message.data}');
    print('AppState: ${AppState.background}');
    _notificationsBloc.add(NotificationsEvent.notificationReceived(
      message: message,
      appState: AppState.background,
    ));
  }

  void _handleInitialMessage(RemoteMessage message) {
    print('Mensaje recibido en terminado: ${message.data}');
    print('AppState: ${AppState.terminated}');
    _notificationsBloc.add(NotificationsEvent.notificationReceived(
      message: message,
      appState: AppState.terminated,
    ));
  }

  Future<String?> getToken() async {
    return await _firebaseMessaging.getToken();
  }

  Future<void> subscribeToTopic(String topic) async {
    await _firebaseMessaging.subscribeToTopic(topic);
  }

  Future<void> unsubscribeFromTopic(String topic) async {
    await _firebaseMessaging.unsubscribeFromTopic(topic);
  }
}

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(
    name: 'Inker',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  print('Mensaje recibido en segundo plano: ${message.data}');
}
