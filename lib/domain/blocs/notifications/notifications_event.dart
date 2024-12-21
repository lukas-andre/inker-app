part of 'notifications_bloc.dart';

@freezed
class NotificationsEvent with _$NotificationsEvent {
  const factory NotificationsEvent.initialize() = _Initialize;
  
  const factory NotificationsEvent.notificationReceived({
    required RemoteMessage message,
    required AppState appState,
  }) = _NotificationReceived;
  
  const factory NotificationsEvent.permissionUpdated(bool granted) = _PermissionUpdated;
  
  const factory NotificationsEvent.notificationHandled() = _NotificationHandled;
}