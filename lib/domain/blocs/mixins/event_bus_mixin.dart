import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/services/event_bus/app_event_bus.dart';

/// Mixin to easily integrate BLoCs with the AppEventBus
/// Provides convenient methods for subscribing to and firing events
mixin EventBusMixin<Event, State> on Bloc<Event, State> {
  final AppEventBus _eventBus = AppEventBus();
  final List<StreamSubscription> _subscriptions = [];

  /// Get the event bus instance
  AppEventBus get eventBus => _eventBus;

  /// Subscribe to a specific event type
  /// The subscription is automatically managed and will be cancelled when the bloc is closed
  void listenToEvent<T extends AppEvent>(
    void Function(T event) onEvent,
  ) {
    final subscription = _eventBus.on<T>().listen(onEvent);
    _subscriptions.add(subscription);
  }

  /// Subscribe to multiple event types at once
  void listenToEvents(Map<Type, Function> eventHandlers) {
    eventHandlers.forEach((eventType, handler) {
      final subscription = _eventBus.on<AppEvent>().listen((event) {
        if (event.runtimeType == eventType) {
          handler(event);
        }
      });
      _subscriptions.add(subscription);
    });
  }

  /// Fire an event to the event bus
  void fireEvent(AppEvent event) {
    _eventBus.fire(event);
  }

  /// Fire a refresh requested event for a specific data type
  void fireRefreshEvent(String dataType, {String? userId}) {
    fireEvent(RefreshRequestedEvent(
      dataType: dataType,
      userId: userId,
    ));
  }

  /// Fire a data refreshed event after successful refresh
  void fireDataRefreshedEvent(String dataType, {bool success = true, String? error}) {
    fireEvent(DataRefreshedEvent(
      dataType: dataType,
      success: success,
      error: error,
    ));
  }

  @override
  Future<void> close() {
    // Cancel all subscriptions
    for (final subscription in _subscriptions) {
      subscription.cancel();
    }
    _subscriptions.clear();
    return super.close();
  }
}

/// Helper class to define common data types for refresh events
class RefreshDataTypes {
  static const String quotations = 'quotations';
  static const String appointments = 'appointments';
  static const String artistWorks = 'artist_works';
  static const String consents = 'consents';
  static const String notifications = 'notifications';
  static const String artistProfile = 'artist_profile';
  static const String customerProfile = 'customer_profile';
  static const String agenda = 'agenda';
  static const String reviews = 'reviews';
}