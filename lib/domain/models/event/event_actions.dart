import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_actions.freezed.dart';
part 'event_actions.g.dart';

@freezed
class EventActionReasons with _$EventActionReasons {
  const factory EventActionReasons({
    required String? canEdit,
    required String? canCancel,
    required String? canReschedule,
    required String? canSendMessage,
    required String? canAddWorkEvidence,
    required String? canLeaveReview,
    required String? canConfirmEvent,
    required String? canRejectEvent,
    required String? canAppeal,
    required String? canAcceptConsent,
    required String? canStartSession,
    required String? canFinishSession,
  }) = _EventActionReasons;

  factory EventActionReasons.fromJson(Map<String, dynamic> json) =>
      _$EventActionReasonsFromJson(json);
}

@freezed
class EventActions with _$EventActions {
  const factory EventActions({
    required bool canEdit,
    required bool canCancel,
    required bool canReschedule,
    required bool canSendMessage,
    required bool canAddWorkEvidence,
    required bool canLeaveReview,
    required bool canConfirmEvent,
    required bool canRejectEvent,
    required bool canAppeal,
    required bool canAcceptConsent,
    required bool canStartSession,
    required bool canFinishSession,
    required EventActionReasons reasons,
  }) = _EventActions;

  factory EventActions.fromJson(Map<String, dynamic> json) =>
      _$EventActionsFromJson(json);
} 