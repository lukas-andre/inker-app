part of 'notifications_bloc.dart';

enum AppState { foreground, background, terminated }

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState.initial() = _Initial;
  
  const factory NotificationsState.loading() = _Loading;
  
  const factory NotificationsState.loaded({
    required String fcmToken,
    @Default(false) bool permissionsGranted,
    NavigationInfo? pendingNavigation,
    RemoteMessage? lastMessage,
    AppState? lastMessageAppState,
  }) = _Loaded;
  
  const factory NotificationsState.error(String message) = _Error;
}


@freezed
class NavigationInfo with _$NavigationInfo {
  const factory NavigationInfo({
    required String route,
    Map<String, dynamic>? arguments,
  }) = _NavigationInfo;
}