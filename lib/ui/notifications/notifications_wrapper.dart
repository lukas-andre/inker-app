import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:inker_studio/domain/blocs/notifications/notifications_bloc.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class NotificationsWrapper extends StatelessWidget {
  final Widget child;
  final GlobalKey<NavigatorState>? navigatorKey;

  const NotificationsWrapper({
    super.key,
    required this.child,
    this.navigatorKey,
  });

  void _showCustomNotification(
    BuildContext context, {
    required String title,
    required String message,
    required Map<String, dynamic> data,
  }) {

    final state = navigatorKey?.currentState;
    if (state == null) {
      return;
    }

    Flushbar(
      margin: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(12),
      backgroundColor: primaryColor,
      flushbarPosition: FlushbarPosition.TOP,
      duration: const Duration(seconds: 4),
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      boxShadows: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 1,
          blurRadius: 4,
          offset: const Offset(0, 2),
        ),
      ],
      icon: _getNotificationIcon(data['type']),
      titleText: Text(
        title,
        style: TextStyleTheme.headline3.copyWith(
          color: Colors.white,
        ),
      ),
      messageText: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            message,
            style: TextStyleTheme.bodyText1.copyWith(
              color: Colors.white.withOpacity(0.9),
            ),
          ),
          if (data['artistName'] != null) ...[
            const SizedBox(height: 4),
            Text(
              'Artista: ${data['artistName']}',
              style: TextStyleTheme.caption.copyWith(
                color: Colors.white.withOpacity(0.7),
              ),
            ),
          ],
          if (data['customerName'] != null) ...[
            const SizedBox(height: 2),
            Text(
              'Cliente: ${data['customerName']}',
              style: TextStyleTheme.caption.copyWith(
                color: Colors.white.withOpacity(0.7),
              ),
            ),
          ],
        ],
      ),
      onTap: (_) {
        _.dismiss();
        if (data['quotationId'] != null) {
          state.pushNamed('/quotationList');
          context.read<NotificationsBloc>().add(
                const NotificationsEvent.notificationHandled(),
              );
        }
      },
    ).show(state.context);
  }

  Widget _getNotificationIcon(String? type) {
    switch (type) {
      case 'QUOTATION_CREATED':
        return const CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 20,
          child: Icon(
            Icons.description,
            color: Colors.white,
          ),
        );
      // Puedes agregar más casos según los tipos de notificaciones
      default:
        return const CircleAvatar(
          backgroundColor: Colors.grey,
          radius: 20,
          child: Icon(
            Icons.notifications,
            color: Colors.white,
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<NotificationsBloc, NotificationsState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () {},
          error: (_) {},
          loaded: (fcmToken, permissionsGranted, pendingNavigation, lastMessage,
              lastMessageAppState) {
            if (lastMessageAppState == AppState.foreground &&
                lastMessage != null) {
              _showCustomNotification(
                context,
                title: lastMessage.notification?.title ?? '',
                message: lastMessage.notification?.body ?? '',
                data: lastMessage.data,
              );
            }

            if (pendingNavigation != null) {
              Navigator.of(context).pushNamed(
                pendingNavigation.route,
                arguments: pendingNavigation.arguments,
              );

              context.read<NotificationsBloc>().add(
                    const NotificationsEvent.notificationHandled(),
                  );
            }
          },
        );
      },
      child: child,
    );
  }
}
