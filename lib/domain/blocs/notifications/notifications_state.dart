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
    
    // New properties for notification page
    List<InkerNotification>? notifications,
    @Default(false) bool isLoading,
    @Default(false) bool isRefreshing,
    @Default(false) bool hasError,
    String? errorMessage,
    @Default(1) int currentPage,
    @Default(1) int totalPages,
    @Default(0) int unreadCount,
  }) = _Loaded;
  
  const factory NotificationsState.error(String message) = _Error;
}


@freezed
class NavigationInfo with _$NavigationInfo {
  const factory NavigationInfo({
    required String route,
    dynamic arguments,
  }) = _NavigationInfo;
}