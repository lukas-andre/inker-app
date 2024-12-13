import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/services/notifications/fmc_service.dart';

part 'notifications_event.dart';
part 'notifications_state.dart';
part 'notifications_bloc.freezed.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  final FcmService _fcmService;

  NotificationsBloc(this._fcmService)
      : super(const NotificationsState.initial()) {
    on<NotificationsEvent>((event, emit) async {
      await event.when(
        initialize: () => _onInitialize(emit),
        notificationReceived: (message, appState) =>
            _onNotificationReceived(emit, message, appState),
        permissionUpdated: (granted) => _onPermissionUpdated(emit, granted),
        notificationHandled: () => _onNotificationHandled(emit),
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
    if (state is _Loaded) {
      final currentState = state as _Loaded;

      // // Determinar la navegación basada en el tipo de mensaje
      // NavigationInfo? navigationInfo;
      // if (message.data['type'] != null) {
      //   switch (message.data['type']) {
      //     case 'new_quotation':
      //       navigationInfo = NavigationInfo(
      //         route: '/quotationDetail',
      //         arguments: {'quotationId': message.data['quotation_id']},
      //       );
      //       break;
      //     case 'quotation_response':
      //       navigationInfo = NavigationInfo(
      //         route: '/quotationResponse',
      //         arguments: {'quotationId': message.data['quotation_id']},
      //       );
      //       break;
      //     // Agrega más casos según necesites
      //   }
      // }

      emit(currentState.copyWith(
        lastMessage: message,
        lastMessageAppState: appState,
        // pendingNavigation: navigationInfo,
      ));
    }
  }

  Future<void> _onPermissionUpdated(
    Emitter<NotificationsState> emit,
    bool granted,
  ) async {
    if (state is _Loaded) {
      final currentState = state as _Loaded;
      emit(currentState.copyWith(permissionsGranted: granted));
    }
  }

  Future<void> _onNotificationHandled(Emitter<NotificationsState> emit) async {
    if (state is _Loaded) {
      final currentState = state as _Loaded;
      emit(currentState.copyWith(pendingNavigation: null));
    }
  }
}
