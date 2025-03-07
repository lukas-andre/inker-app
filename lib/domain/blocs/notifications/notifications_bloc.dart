import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/notifications/notification.dart';
import 'package:inker_studio/domain/services/notifications/fmc_service.dart';
import 'package:inker_studio/domain/services/notifications/notifications_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
part 'notifications_event.dart';
part 'notifications_state.dart';
part 'notifications_bloc.freezed.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  final FcmService _fcmService;
  final NotificationsService _notificationsService;
  final LocalSessionService _sessionService;

  NotificationsBloc(this._fcmService, this._notificationsService, this._sessionService)
      : super(const NotificationsState.initial()) {
    on<NotificationsEvent>((event, emit) async {
      await event.when(
        initialize: () => _onInitialize(emit),
        notificationReceived: (message, appState) =>
            _onNotificationReceived(emit, message, appState),
        permissionUpdated: (granted) => _onPermissionUpdated(emit, granted),
        notificationHandled: () => _onNotificationHandled(emit),
        getNotifications: (page, limit) => _getNotifications(emit, page, limit),
        markAsRead: (id) => _markAsRead(emit, id),
        markAllAsRead: () => _markAllAsRead(emit),
        deleteNotification: (id) => _deleteNotification(emit, id),
        refreshNotifications: () => _refreshNotifications(emit),
        clearQuotationNotifications: (quotationId) => _clearQuotationNotifications(emit, quotationId),
      );
    });
  }

  Future<void> _onInitialize(Emitter<NotificationsState> emit) async {
    emit(const NotificationsState.loading());
    try {
      await _fcmService.initialize();
      final token = await _fcmService.getToken();

      emit(NotificationsState.loaded(
        fcmToken: token ?? '',
        permissionsGranted: false,
      ));
    } catch (e) {
      emit(NotificationsState.error(e.toString()));
    }
  }

  Future<void> _onNotificationReceived(
    Emitter<NotificationsState> emit,
    RemoteMessage message,
    AppState appState,
  ) async {
    await state.whenOrNull(
      loaded: (fcmToken, permissionsGranted, pendingNavigation, lastMessage, 
          lastMessageAppState, notifications, isLoading, isRefreshing, 
          hasError, errorMessage, currentPage, totalPages, unreadCount) async {
        
        // Determine navigation based on message type
        NavigationInfo? navigationInfo;
        if (message.data['type'] != null) {
          switch (message.data['type']) {
            case 'EVENT_STATUS_CHANGED':
            case 'EVENT_CREATED':
            case 'EVENT_UPDATED':
            case 'EVENT_CANCELED':
              if (message.data['eventId'] != null) {
                navigationInfo = NavigationInfo(
                  route: '/agendaEventDetail',
                  arguments: int.parse(message.data['eventId'].toString()),
                );
              }
              break;
            case 'QUOTATION_CREATED':
            case 'QUOTATION_REPLIED':
            case 'QUOTATION_ACCEPTED':
            case 'QUOTATION_REJECTED':
            case 'QUOTATION_APPEALED':
            case 'QUOTATION_CANCELED':
              if (message.data['quotationId'] != null) {
                navigationInfo = NavigationInfo(
                  route: '/quotationDetail',
                  arguments: {'quotationId': message.data['quotationId']},
                );
              }
              break;
          }
        }

        emit(NotificationsState.loaded(
          fcmToken: fcmToken,
          permissionsGranted: permissionsGranted,
          pendingNavigation: navigationInfo,
          lastMessage: message,
          lastMessageAppState: appState,
          notifications: notifications,
          isLoading: isLoading,
          isRefreshing: isRefreshing,
          hasError: hasError,
          errorMessage: errorMessage,
          currentPage: currentPage,
          totalPages: totalPages,
          unreadCount: unreadCount + 1,
        ));
      },
    );
  }

  Future<void> _onPermissionUpdated(
    Emitter<NotificationsState> emit,
    bool granted,
  ) async {
    await state.whenOrNull(
      loaded: (fcmToken, permissionsGranted, pendingNavigation, lastMessage, 
          lastMessageAppState, notifications, isLoading, isRefreshing, 
          hasError, errorMessage, currentPage, totalPages, unreadCount) async {
        
        emit(NotificationsState.loaded(
          fcmToken: fcmToken,
          permissionsGranted: granted,
          pendingNavigation: pendingNavigation,
          lastMessage: lastMessage,
          lastMessageAppState: lastMessageAppState,
          notifications: notifications,
          isLoading: isLoading,
          isRefreshing: isRefreshing,
          hasError: hasError,
          errorMessage: errorMessage,
          currentPage: currentPage,
          totalPages: totalPages,
          unreadCount: unreadCount,
        ));
      },
    );
  }

  Future<void> _onNotificationHandled(Emitter<NotificationsState> emit) async {
    await state.whenOrNull(
      loaded: (fcmToken, permissionsGranted, pendingNavigation, lastMessage, 
          lastMessageAppState, notifications, isLoading, isRefreshing, 
          hasError, errorMessage, currentPage, totalPages, unreadCount) async {
        
        emit(NotificationsState.loaded(
          fcmToken: fcmToken,
          permissionsGranted: permissionsGranted,
          pendingNavigation: null,
          lastMessage: lastMessage,
          lastMessageAppState: lastMessageAppState,
          notifications: notifications,
          isLoading: isLoading,
          isRefreshing: isRefreshing,
          hasError: hasError,
          errorMessage: errorMessage,
          currentPage: currentPage,
          totalPages: totalPages,
          unreadCount: unreadCount,
        ));
      },
    );
  }

  Future<void> _getNotifications(
    Emitter<NotificationsState> emit,
    int page,
    int limit,
  ) async {
    await state.whenOrNull(
      loaded: (fcmToken, permissionsGranted, pendingNavigation, lastMessage, 
          lastMessageAppState, notifications, isLoading, isRefreshing, 
          hasError, errorMessage, currentPage, totalPages, unreadCount) async {
        
        // First emit loading state
        emit(NotificationsState.loaded(
          fcmToken: fcmToken,
          permissionsGranted: permissionsGranted,
          pendingNavigation: pendingNavigation,
          lastMessage: lastMessage,
          lastMessageAppState: lastMessageAppState,
          notifications: notifications,
          isLoading: true,
          isRefreshing: isRefreshing,
          hasError: hasError,
          errorMessage: errorMessage,
          currentPage: currentPage,
          totalPages: totalPages,
          unreadCount: unreadCount,
        ));

        try {
          final token = await _sessionService.getActiveSessionToken();
          final result = await _notificationsService.getNotifications(
            page: page,
            limit: limit,
            token: token!,
          );

          // If it's the first page, replace notifications; otherwise append
          final List<InkerNotification> updatedNotifications = page == 1
              ? result.items
              : [...(notifications ?? []), ...result.items];

          emit(NotificationsState.loaded(
            fcmToken: fcmToken,
            permissionsGranted: permissionsGranted,
            pendingNavigation: pendingNavigation,
            lastMessage: lastMessage,
            lastMessageAppState: lastMessageAppState,
            notifications: updatedNotifications,
            isLoading: false,
            isRefreshing: isRefreshing,
            hasError: false,
            errorMessage: null,
            currentPage: page,
            totalPages: result.pages,
            unreadCount: result.unreadCount,
          ));
        } catch (e) {
          emit(NotificationsState.loaded(
            fcmToken: fcmToken,
            permissionsGranted: permissionsGranted,
            pendingNavigation: pendingNavigation,
            lastMessage: lastMessage,
            lastMessageAppState: lastMessageAppState,
            notifications: notifications,
            isLoading: false,
            isRefreshing: isRefreshing,
            hasError: true,
            errorMessage: e.toString(),
            currentPage: currentPage,
            totalPages: totalPages,
            unreadCount: unreadCount,
          ));
        }
      },
    );
  }

  Future<void> _markAsRead(
    Emitter<NotificationsState> emit,
    String id,
  ) async {
    if (state is _Loaded) {
      final currentState = state as _Loaded;
      final token = await _sessionService.getActiveSessionToken();
      try {
        await _notificationsService.markAsRead(id, token!);

        // Update the local notification state
        final updatedNotifications = currentState.notifications?.map((notification) {
          // ignore: unnecessary_cast
          if ((notification as InkerNotification).id == id && !(notification as InkerNotification).read) {
            return notification.copyWith(read: true);
          }
          return notification;
        }).toList();

        final int newUnreadCount = currentState.unreadCount > 0 
            ? currentState.unreadCount - 1 
            : 0;

        emit(currentState.copyWith(
          notifications: updatedNotifications,
          unreadCount: newUnreadCount,
        ));
      } catch (e) {
        emit(currentState.copyWith(
          hasError: true,
          errorMessage: e.toString(),
        ));
      }
    }
  }

  Future<void> _markAllAsRead(Emitter<NotificationsState> emit) async {
    if (state is _Loaded) {
      final currentState = state as _Loaded;
      emit(currentState.copyWith(isLoading: true));
      final token = await _sessionService.getActiveSessionToken();
      try {
        await _notificationsService.markAllAsRead(token!);

        // Update all notifications to read
        final updatedNotifications = currentState.notifications?.map((notification) {
          return (notification).copyWith(read: true);
        }).toList();

        emit(currentState.copyWith(
          notifications: updatedNotifications,
          isLoading: false,
          unreadCount: 0,
        ));
      } catch (e) {
        emit(currentState.copyWith(
          isLoading: false,
          hasError: true,
          errorMessage: e.toString(),
        ));
      }
    }
  }

  Future<void> _deleteNotification(
    Emitter<NotificationsState> emit,
    String id,
  ) async {
    if (state is _Loaded) {
      final currentState = state as _Loaded;
      final token = await _sessionService.getActiveSessionToken();
      try {
        await _notificationsService.deleteNotification(id, token!);

        // Remove the notification from the local state
        final updatedNotifications = currentState.notifications
            ?.where((notification) => (notification).id != id)
            .toList();

        // Update unread count if the deleted notification was unread
        final wasUnread = currentState.notifications
            ?.firstWhere((notification) => (notification).id == id, 
                orElse: () => InkerNotification(
                  id: '', 
                  title: '', 
                  body: '', 
                  type: '', 
                  data: const {}, 
                  read: true, 
                  createdAt: DateTime.now()))
            .read == false;

        final int newUnreadCount = wasUnread && currentState.unreadCount > 0
            ? currentState.unreadCount - 1
            : currentState.unreadCount;

        emit(currentState.copyWith(
          notifications: updatedNotifications,
          unreadCount: newUnreadCount,
        ));
      } catch (e) {
        emit(currentState.copyWith(
          hasError: true,
          errorMessage: e.toString(),
        ));
      }
    }
  }

  Future<void> _refreshNotifications(Emitter<NotificationsState> emit) async {
    if (state is _Loaded) {
      final currentState = state as _Loaded;
      emit(currentState.copyWith(isRefreshing: true));

      try {
        final token = await _sessionService.getActiveSessionToken();
        final result = await _notificationsService.getNotifications(
          page: 1,
          limit: currentState.currentPage * 10, // Fetch all currently loaded pages
          token: token!,
        );

        emit(currentState.copyWith(
          notifications: result.items,
          isRefreshing: false,
          hasError: false,
          errorMessage: null,
          unreadCount: result.unreadCount,
        ));
      } catch (e) {
        emit(currentState.copyWith(
          isRefreshing: false,
          hasError: true,
          errorMessage: e.toString(),
        ));
      }
    }
  }
  
  // This method automatically clears notifications related to a specific quotation
  // when the user has taken action on it
  Future<void> _clearQuotationNotifications(
    Emitter<NotificationsState> emit,
    String quotationId,
  ) async {
    if (state is _Loaded) {
      final currentState = state as _Loaded;
      final token = await _sessionService.getActiveSessionToken();
      
      if (token == null || currentState.notifications == null) return;
      
      try {
        // Find all notifications related to this quotation
        final quotationNotifications = currentState.notifications!
            .where((notification) {
              final data = notification.data;
              return data.containsKey('quotationId') && 
                     data['quotationId'] == quotationId &&
                     (data['type']?.toString().contains('QUOTATION_') ?? false);
            })
            .toList();
            
        // Mark these notifications as read
        for (var notification in quotationNotifications) {
          if (!notification.read) {
            await _notificationsService.markAsRead(notification.id, token);
          }
        }
        
        // Then delete them after they've been marked as read
        for (var notification in quotationNotifications) {
          await _notificationsService.deleteNotification(notification.id, token);
        }
        
        // Update local state
        final updatedNotifications = currentState.notifications!
            .where((notification) {
              final data = notification.data;
              return !(data.containsKey('quotationId') && 
                      data['quotationId'] == quotationId &&
                      (data['type']?.toString().contains('QUOTATION_') ?? false));
            })
            .toList();
            
        // Calculate new unread count
        final deletedUnreadCount = quotationNotifications
            .where((notification) => !notification.read)
            .length;
            
        final newUnreadCount = currentState.unreadCount > deletedUnreadCount 
            ? currentState.unreadCount - deletedUnreadCount 
            : 0;
            
        emit(currentState.copyWith(
          notifications: updatedNotifications,
          unreadCount: newUnreadCount,
          isRefreshing: false,
        ));
        
      } catch (e) {
        // If there's an error, just refresh notifications
        add(const NotificationsEvent.refreshNotifications());
      }
    }
  }
}
