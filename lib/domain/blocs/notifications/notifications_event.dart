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

  // New events for notification page
  const factory NotificationsEvent.getNotifications({
    @Default(1) int page,
    @Default(10) int limit,
  }) = _GetNotifications;

  const factory NotificationsEvent.markAsRead(String id) = _MarkAsRead;

  const factory NotificationsEvent.markAllAsRead() = _MarkAllAsRead;

  const factory NotificationsEvent.deleteNotification(String id) = _DeleteNotification;

  const factory NotificationsEvent.refreshNotifications() = _RefreshNotifications;
  
  // New event to clear quotation notifications after an action
  const factory NotificationsEvent.clearQuotationNotifications(String quotationId) = _ClearQuotationNotifications;
}