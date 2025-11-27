import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_response.freezed.dart';
part 'schedule_response.g.dart';

// Helper functions for JSON conversion
double _densityFromJson(dynamic value) => value != null ? (value as num).toDouble() : 0.0;
double? _densityFromJsonNullable(dynamic value) => value != null ? (value as num).toDouble() : null;

@freezed
class ScheduleResponse with _$ScheduleResponse {
  const factory ScheduleResponse({
    required List<ScheduleEvent> events,
    required List<ScheduleQuotation> quotations,
    required List<AvailabilityDay> availability,
    required List<SuggestedSlot> suggestedSlots,
    required WorkingHours workingHours,
    required ScheduleSummary summary,
  }) = _ScheduleResponse;

  factory ScheduleResponse.fromJson(Map<String, dynamic> json) =>
      _$ScheduleResponseFromJson(json);
}

@freezed
class ScheduleEvent with _$ScheduleEvent {
  const factory ScheduleEvent({
    required String id,
    required String category,
    required String type,
    required String title,
    required String description,
    required DateTime startDate,
    required DateTime endDate,
    required String status,
    required String customerId,
    required String customerName,
    String? customerAvatar,
    String? quotationId,
    required bool isBlocking,
    required bool canModify,
    required bool canCancel,
    required bool canReschedule,
    List<String>? conflictsWith,
    Map<String, dynamic>? workEvidence,
    String? notes,
    Map<String, bool>? reminderSent,
  }) = _ScheduleEvent;

  factory ScheduleEvent.fromJson(Map<String, dynamic> json) =>
      _$ScheduleEventFromJson(json);
}

@freezed
class ScheduleQuotation with _$ScheduleQuotation {
  const factory ScheduleQuotation({
    required String id,
    required String category,
    required String type,
    required String quotationType,
    required String status,
    required String customerId,
    required String customerName,
    String? customerAvatar,
    required String description,
    EstimatedCost? estimatedCost,
    DateTime? proposedDate,
    int? proposedDuration,
    Map<String, dynamic>? referenceImages,
    required bool hasConflict,
    List<String>? conflictingEventIds,
    required bool actionRequired,
    DateTime? actionDeadline,
    List<SchedulerQuotationOffer>? offers,
    required bool canRespond,
    required bool canSubmitOffer,
  }) = _ScheduleQuotation;

  factory ScheduleQuotation.fromJson(Map<String, dynamic> json) =>
      _$ScheduleQuotationFromJson(json);
}

@freezed
class EstimatedCost with _$EstimatedCost {
  const factory EstimatedCost({
    required double amount,
    required String currency,
  }) = _EstimatedCost;

  factory EstimatedCost.fromJson(Map<String, dynamic> json) =>
      _$EstimatedCostFromJson(json);
}

@freezed
class AvailabilityDay with _$AvailabilityDay {
  const factory AvailabilityDay({
    required String date,
    required List<AvailabilitySlot> slots,
  }) = _AvailabilityDay;

  factory AvailabilityDay.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityDayFromJson(json);
}

@freezed
class AvailabilitySlot with _$AvailabilitySlot {
  const factory AvailabilitySlot({
    required DateTime startTime,
    required DateTime endTime,
    @JsonKey(fromJson: _densityFromJson) required double density,
  }) = _AvailabilitySlot;

  factory AvailabilitySlot.fromJson(Map<String, dynamic> json) =>
      _$AvailabilitySlotFromJson(json);
}

@freezed
class SuggestedSlot with _$SuggestedSlot {
  const factory SuggestedSlot({
    required DateTime startTime,
    required DateTime endTime,
    @JsonKey(fromJson: _densityFromJson) required double density,
  }) = _SuggestedSlot;

  factory SuggestedSlot.fromJson(Map<String, dynamic> json) =>
      _$SuggestedSlotFromJson(json);
}

@freezed
class WorkingHours with _$WorkingHours {
  const factory WorkingHours({
    required String start,
    required String end,
    required List<String> workingDays,
  }) = _WorkingHours;

  factory WorkingHours.fromJson(Map<String, dynamic> json) =>
      _$WorkingHoursFromJson(json);
}

@freezed
class ScheduleSummary with _$ScheduleSummary {
  const factory ScheduleSummary({
    required int totalConfirmedEvents,
    required int totalTentativeEvents,
    required int totalActionableQuotations,
    required int totalOpportunities,
    NextAvailableSlot? nextAvailableSlot,
    required List<UpcomingDeadline> upcomingDeadlines,
  }) = _ScheduleSummary;

  factory ScheduleSummary.fromJson(Map<String, dynamic> json) =>
      _$ScheduleSummaryFromJson(json);
}

@freezed
class NextAvailableSlot with _$NextAvailableSlot {
  const factory NextAvailableSlot({
    required DateTime startTime,
    required DateTime endTime,
    @JsonKey(fromJson: _densityFromJsonNullable) double? density,
  }) = _NextAvailableSlot;

  factory NextAvailableSlot.fromJson(Map<String, dynamic> json) =>
      _$NextAvailableSlotFromJson(json);
}

@freezed
class UpcomingDeadline with _$UpcomingDeadline {
  const factory UpcomingDeadline({
    required String quotationId,
    required DateTime deadline,
    required String type,
  }) = _UpcomingDeadline;

  factory UpcomingDeadline.fromJson(Map<String, dynamic> json) =>
      _$UpcomingDeadlineFromJson(json);
}

@freezed
class SchedulerQuotationOffer with _$SchedulerQuotationOffer {
  const factory SchedulerQuotationOffer({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String quotationId,
    required String artistId,
    EstimatedCost? estimatedCost,
    required DateTime start,
    required DateTime end,
    @Deprecated('Use start instead') DateTime? estimatedDate,
    @Deprecated('Use start and end to calculate duration') int? estimatedDuration,
    String? message,
    required String status,
    List<Map<String, dynamic>>? messages,
  }) = _SchedulerQuotationOffer;

  factory SchedulerQuotationOffer.fromJson(Map<String, dynamic> json) =>
      _$SchedulerQuotationOfferFromJson(json);
}