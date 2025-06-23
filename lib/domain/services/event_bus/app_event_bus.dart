import 'dart:async';

/// Singleton event bus for app-wide state coordination
/// This allows different parts of the app to communicate without direct coupling
class AppEventBus {
  static final AppEventBus _instance = AppEventBus._internal();
  
  factory AppEventBus() => _instance;
  
  AppEventBus._internal();

  final _eventController = StreamController<AppEvent>.broadcast();

  /// Subscribe to events of a specific type
  Stream<T> on<T extends AppEvent>() {
    return _eventController.stream
        .where((event) => event is T)
        .cast<T>();
  }

  /// Fire an event to all listeners
  void fire(AppEvent event) {
    if (!_eventController.isClosed) {
      _eventController.add(event);
    }
  }

  /// Dispose of the event bus (call this in app disposal if needed)
  void dispose() {
    _eventController.close();
  }
}

/// Base class for all app events
abstract class AppEvent {
  final DateTime timestamp;
  
  AppEvent() : timestamp = DateTime.now();
}

// Quotation Events
class QuotationCreatedEvent extends AppEvent {
  final String quotationId;
  final String? artistId;
  final String? customerId;
  final bool isOpenQuotation;

  QuotationCreatedEvent({
    required this.quotationId,
    this.artistId,
    this.customerId,
    this.isOpenQuotation = false,
  });
}

class QuotationUpdatedEvent extends AppEvent {
  final String quotationId;
  final String status;
  final String? artistId;
  final String? customerId;

  QuotationUpdatedEvent({
    required this.quotationId,
    required this.status,
    this.artistId,
    this.customerId,
  });
}

class QuotationDeletedEvent extends AppEvent {
  final String quotationId;

  QuotationDeletedEvent(this.quotationId);
}

class QuotationResponseSubmittedEvent extends AppEvent {
  final String quotationId;
  final String artistId;
  final String customerId;

  QuotationResponseSubmittedEvent({
    required this.quotationId,
    required this.artistId,
    required this.customerId,
  });
}

// Appointment/Event Events
class AppointmentCreatedEvent extends AppEvent {
  final String appointmentId;
  final String artistId;
  final String customerId;
  final DateTime appointmentDate;

  AppointmentCreatedEvent({
    required this.appointmentId,
    required this.artistId,
    required this.customerId,
    required this.appointmentDate,
  });
}

class AppointmentUpdatedEvent extends AppEvent {
  final String appointmentId;
  final String status;
  final String artistId;
  final String customerId;

  AppointmentUpdatedEvent({
    required this.appointmentId,
    required this.status,
    required this.artistId,
    required this.customerId,
  });
}

class AppointmentCancelledEvent extends AppEvent {
  final String appointmentId;
  final String artistId;
  final String customerId;

  AppointmentCancelledEvent({
    required this.appointmentId,
    required this.artistId,
    required this.customerId,
  });
}

// Artist Work Events
class ArtistWorkCreatedEvent extends AppEvent {
  final String workId;
  final String artistId;

  ArtistWorkCreatedEvent({
    required this.workId,
    required this.artistId,
  });
}

class ArtistWorkUpdatedEvent extends AppEvent {
  final String workId;
  final String artistId;

  ArtistWorkUpdatedEvent({
    required this.workId,
    required this.artistId,
  });
}

class ArtistWorkDeletedEvent extends AppEvent {
  final String workId;
  final String artistId;

  ArtistWorkDeletedEvent({
    required this.workId,
    required this.artistId,
  });
}

// Consent Events
class ConsentCreatedEvent extends AppEvent {
  final String consentId;
  final String artistId;
  final String customerId;

  ConsentCreatedEvent({
    required this.consentId,
    required this.artistId,
    required this.customerId,
  });
}

class ConsentSignedEvent extends AppEvent {
  final String consentId;
  final String artistId;
  final String customerId;

  ConsentSignedEvent({
    required this.consentId,
    required this.artistId,
    required this.customerId,
  });
}

// Profile Events
class ProfileUpdatedEvent extends AppEvent {
  final String userId;
  final String userType; // 'artist' or 'customer'

  ProfileUpdatedEvent({
    required this.userId,
    required this.userType,
  });
}

// Notification Events
class NotificationReceivedEvent extends AppEvent {
  final String notificationId;
  final String type;
  final Map<String, dynamic> data;

  NotificationReceivedEvent({
    required this.notificationId,
    required this.type,
    required this.data,
  });
}

class NotificationsClearedEvent extends AppEvent {
  final String? relatedId; // quotationId, appointmentId, etc.
  final String? type; // 'quotation', 'appointment', etc.

  NotificationsClearedEvent({
    this.relatedId,
    this.type,
  });
}

// Navigation Events
class TabChangedEvent extends AppEvent {
  final int tabIndex;
  final String tabName;

  TabChangedEvent({
    required this.tabIndex,
    required this.tabName,
  });
}

class ScreenNavigatedEvent extends AppEvent {
  final String routeName;
  final Object? arguments;

  ScreenNavigatedEvent({
    required this.routeName,
    this.arguments,
  });
}

// Data Refresh Events
class RefreshRequestedEvent extends AppEvent {
  final String dataType; // 'quotations', 'appointments', 'works', etc.
  final String? userId;

  RefreshRequestedEvent({
    required this.dataType,
    this.userId,
  });
}

class DataRefreshedEvent extends AppEvent {
  final String dataType;
  final bool success;
  final String? error;

  DataRefreshedEvent({
    required this.dataType,
    required this.success,
    this.error,
  });
}