import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/notifications/notifications_bloc.dart';
import 'package:inker_studio/domain/models/notifications/notification.dart' as model;
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/notifications/widgets/notification_item.dart';
import 'package:inker_studio/ui/shared/empty_state.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';


class NotificationsPage extends StatefulWidget {
  static const String routeName = '/notifications';

  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  final ScrollController _scrollController = ScrollController();
  
  @override
  void initState() {
    super.initState();
    
    // Initial fetch of notifications
    context.read<NotificationsBloc>().add(const NotificationsEvent.getNotifications());
    
    // Listen for scroll to load more notifications
    _scrollController.addListener(_onScroll);
  }
  
  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }
  
  void _onScroll() {
    final bloc = context.read<NotificationsBloc>();
    final state = bloc.state;
    
    state.whenOrNull(
      loaded: (_, __, ___, ____, _____, notifications, isLoading, 
          isRefreshing, hasError, errorMessage, currentPage, totalPages, unreadCount) {
        if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent * 0.9 &&
            !isLoading &&
            currentPage < totalPages) {
          bloc.add(NotificationsEvent.getNotifications(
            page: currentPage + 1,
            limit: 10,
          ));
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
                iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          l10n.notifications,
          style: TextStyleTheme.headline2,
        ),
        backgroundColor: primaryColor,
        elevation: 0,
        actions: [
          BlocBuilder<NotificationsBloc, NotificationsState>(
            builder: (context, state) {
              return state.maybeWhen(
                loaded: (_, __, ___, ____, _____, notifications, 
                    isLoading, isRefreshing, hasError, errorMessage, 
                    currentPage, totalPages, unreadCount) {
                  if (notifications != null && notifications.isNotEmpty) {
                    return IconButton(
                      icon: const Icon(Icons.done_all, color: Colors.white),
                      tooltip: 'Mark all as read',
                      onPressed: () {
                        context.read<NotificationsBloc>().add(
                              const NotificationsEvent.markAllAsRead(),
                            );
                      },
                    );
                  }
                  return const SizedBox.shrink();
                },
                orElse: () => const SizedBox.shrink(),
              );
            },
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: BlocBuilder<NotificationsBloc, NotificationsState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(
              child: InkerProgressIndicator(color: primaryColor)
            ),
            loading: () => const Center(
              child: InkerProgressIndicator(color: primaryColor)
            ),
            error: (message) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, color: Colors.red, size: 48),
                  const SizedBox(height: 16),
                  Text(
                    'Error: $message',
                    style: TextStyleTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () => context.read<NotificationsBloc>().add(
                          const NotificationsEvent.refreshNotifications(),
                        ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    child: Text(l10n.retry),
                  ),
                ],
              ),
            ),
            loaded: (fcmToken, permissionsGranted, pendingNavigation, 
                lastMessage, lastMessageAppState, notifications, 
                isLoading, isRefreshing, hasError, errorMessage, 
                currentPage, totalPages, unreadCount) {
              
              if (notifications == null || notifications.isEmpty) {
                return RefreshIndicator(
                  onRefresh: () async {
                    context.read<NotificationsBloc>().add(
                          const NotificationsEvent.refreshNotifications(),
                        );
                  },
                  color: primaryColor,
                  backgroundColor: Colors.white,
                  child: ListView(
                    padding: const EdgeInsets.symmetric(vertical: 40.0),
                    children: [
                      EmptyState(
                        icon: Icons.notifications_off,
                        title: l10n.noNotificationsTitle,
                        message: l10n.noNotificationsMessage,
                      ),
                    ],
                  ),
                );
              }
              
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<NotificationsBloc>().add(
                        const NotificationsEvent.refreshNotifications(),
                      );
                },
                color: primaryColor,
                backgroundColor: Colors.white,
                child: Stack(
                  children: [
                    ListView.builder(
                      controller: _scrollController,
                      padding: const EdgeInsets.only(top: 4.0, bottom: 16.0),
                      itemCount: notifications.length + (isLoading ? 1 : 0),
                      itemBuilder: (context, index) {
                        if (index == notifications.length) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24.0),
                            child: Center(
                              child: ConstrainedBox(
                                constraints: const BoxConstraints(maxWidth: 30, maxHeight: 30),
                                child: const InkerProgressIndicator(color: primaryColor),
                              ),
                            ),
                          );
                        }
                        
                        return _buildNotificationItem(context, notifications[index]);
                      },
                    ),
                    if (isRefreshing)
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: LinearProgressIndicator(
                          backgroundColor: Colors.white.withOpacity(0.2),
                          color: primaryColor,
                        ),
                      ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
  
  Widget _buildNotificationItem(BuildContext context, model.InkerNotification notification) {
    return Dismissible(
      key: Key(notification.id),
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 16.0),
        child: const Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        context.read<NotificationsBloc>().add(
              NotificationsEvent.deleteNotification(notification.id),
            );
        
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Notification deleted'),
            action: SnackBarAction(
              label: 'UNDO',
              onPressed: () {
                // Refresh notifications to get the deleted one back
                context.read<NotificationsBloc>().add(
                      const NotificationsEvent.refreshNotifications(),
                    );
              },
            ),
          ),
        );
      },
      child: NotificationItem(
        notification: notification,
        onTap: () {
          _handleNotificationTap(context, notification);
        },
      ),
    );
  }
  
  void _handleNotificationTap(BuildContext context, model.InkerNotification notification) {
    // Mark as read
    if (!notification.read) {
      context.read<NotificationsBloc>().add(
            NotificationsEvent.markAsRead(notification.id),
          );
    }
    
    // Navigate based on notification type and data
    switch (notification.type) {
      case 'EVENT_STATUS_CHANGED':
      case 'EVENT_CREATED':
      case 'EVENT_UPDATED':
      case 'EVENT_CANCELED':
        if (notification.data['eventId'] != null) {
          Navigator.of(context).pushNamed(
            '/agendaEventDetail',
            arguments: int.parse(notification.data['eventId'].toString()),
          );
        }
        break;
      case 'QUOTATION_CREATED':
      case 'QUOTATION_REPLIED':
      case 'QUOTATION_ACCEPTED':
      case 'QUOTATION_REJECTED':
      case 'QUOTATION_APPEALED':
      case 'QUOTATION_CANCELED':
        if (notification.data['quotationId'] != null) {
          Navigator.of(context).pushNamed(
            '/quotationDetail',
            arguments: {'quotationId': notification.data['quotationId']},
          );
        }
        break;
      default:
        // No navigation for other notification types
        break;
    }
  }
}