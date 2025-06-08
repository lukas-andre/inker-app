import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/domain/models/appointment/agenda_event.dart';
import 'package:inker_studio/domain/models/location/location.dart';
import 'package:inker_studio/domain/models/event/event_actions.dart';

part 'customer_appointment_dto.freezed.dart';
part 'customer_appointment_dto.g.dart';

@freezed
class CustomerAppointmentDto with _$CustomerAppointmentDto {
  @JsonSerializable(explicitToJson: true)
  const factory CustomerAppointmentDto({
    required AgendaEvent event,
    required Artist artist,
    required Location location,
    required AppointmentUrgencyLevel urgency,
    required AppointmentContextualInfo contextualInfo,
    @Default([]) List<AppointmentAction> availableActions,
  }) = _CustomerAppointmentDto;

  const CustomerAppointmentDto._();

  factory CustomerAppointmentDto.fromJson(Map<String, dynamic> json) =>
      _$CustomerAppointmentDtoFromJson(json);

  EventActions get actions {
    return EventActions(
      canEdit: false, // Not available in this context
      canCancel: availableActions.contains(AppointmentAction.unknown), // Example, adjust as needed
      canReschedule: availableActions.contains(AppointmentAction.unknown), // Example, adjust as needed
      canSendMessage: availableActions.contains(AppointmentAction.unknown), // Example, adjust as needed
      canAddWorkEvidence: availableActions.contains(AppointmentAction.unknown), // Example, adjust as needed
      canLeaveReview: availableActions.contains(AppointmentAction.leaveReview),
      canConfirmEvent: availableActions.contains(AppointmentAction.confirm),
      canRejectEvent: availableActions.contains(AppointmentAction.unknown), // Example, adjust as needed
      canAppeal: availableActions.contains(AppointmentAction.unknown), // Example, adjust as needed
      canAcceptConsent: availableActions.contains(AppointmentAction.confirm), // Assuming confirm implies consent is needed
      reasons: const EventActionReasons(
        canEdit: null,
        canCancel: null,
        canReschedule: null,
        canSendMessage: null,
        canAddWorkEvidence: null,
        canLeaveReview: null,
        canConfirmEvent: null,
        canRejectEvent: null,
        canAppeal: null,
        canAcceptConsent: null,
      ),
    );
  }
}

@freezed
class AppointmentContextualInfo with _$AppointmentContextualInfo {
  const factory AppointmentContextualInfo({
    required String title,
    required String message,
    String? tip,
  }) = _AppointmentContextualInfo;

  factory AppointmentContextualInfo.fromJson(Map<String, dynamic> json) =>
      _$AppointmentContextualInfoFromJson(json);
}

enum AppointmentUrgencyLevel {
  @JsonValue('CRITICAL')
  critical,
  @JsonValue('URGENT')
  urgent,
  @JsonValue('UPCOMING')
  upcoming,
  @JsonValue('INFO')
  info,
  @JsonValue('PAST')
  past,
  unknown,
}

enum AppointmentAction {
  @JsonValue('CONFIRM')
  confirm,
  @JsonValue('LEAVE_REVIEW')
  leaveReview,
  @JsonValue('VIEW_DETAILS')
  viewDetails,
  unknown,
} 