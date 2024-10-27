import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'quotation.freezed.dart';
part 'quotation.g.dart';

Quotation getQuotationFromJson(String str) =>
    Quotation.fromJson(json.decode(str));
String quotationToJson(Quotation data) => json.encode(data.toJson());

@freezed
class Quotation with _$Quotation {
  const factory Quotation({
    required int id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required int customerId,
    required int artistId,
    required String description,
    MultimediasMetadata? referenceImages,
    MultimediasMetadata? proposedDesigns,
    required QuotationStatus status,
    double? estimatedCost,
    DateTime? responseDate,
    DateTime? appointmentDate,
    int? appointmentDuration,
    QuotationRejectBy? rejectBy,
    QuotationCustomerRejectReason? customerRejectReason,
    QuotationArtistRejectReason? artistRejectReason,
    String? rejectReasonDetails,
    DateTime? rejectedDate,
    QuotationCustomerAppealReason? appealedReason,
    DateTime? appealedDate,
    QuotationCancelBy? canceledBy,
    QuotationCustomerCancelReason? customerCancelReason,
    QuotationSystemCancelReason? systemCancelReason,
    String? cancelReasonDetails,
    DateTime? canceledDate,
    int? lastUpdatedBy,
    QuotationUserType? lastUpdatedByUserType,
    List<QuotationHistory>? history,
  }) = _Quotation;

  factory Quotation.fromJson(Map<String, dynamic> json) =>
      _$QuotationFromJson(json);
}

@freezed
class QuotationHistory with _$QuotationHistory {
  const factory QuotationHistory({
    required int id,
    required DateTime createdAt,
    required DateTime updatedAt,
    Quotation? quotation,
    required QuotationStatus previousStatus,
    required QuotationStatus newStatus,
    required DateTime changedAt,
    required int changedBy,
    required QuotationRole changedByUserType,
    String? previousEstimatedCost,
    String? newEstimatedCost,
    DateTime? previousAppointmentDate,
    DateTime? newAppointmentDate,
    int? previousAppointmentDuration,
    int? newAppointmentDuration,
    QuotationCustomerAppealReason? appealedReason,
    String? rejectionReason,
    String? cancellationReason,
    String? additionalDetails,
    int? lastUpdatedBy,
    QuotationUserType? lastUpdatedByUserType,
  }) = _QuotationHistory;

  factory QuotationHistory.fromJson(Map<String, dynamic> json) =>
      _$QuotationHistoryFromJson(json);
}

@freezed
class MultimediasMetadata with _$MultimediasMetadata {
  const factory MultimediasMetadata({
    required List<MultimediaMetadata> metadata,
  }) = _MultimediasMetadata;

  factory MultimediasMetadata.fromJson(Map<String, dynamic> json) =>
      _$MultimediasMetadataFromJson(json);
}

@freezed
class MultimediaMetadata with _$MultimediaMetadata {
  const factory MultimediaMetadata({
    required String url,
    required int size,
    required String type,
    required String encoding,
    required int position,
    required String fieldname,
    required String originalname,
  }) = _MultimediaMetadata;

  factory MultimediaMetadata.fromJson(Map<String, dynamic> json) =>
      _$MultimediaMetadataFromJson(json);
}

enum QuotationStatus {
  @JsonValue('pending')
  pending,
  @JsonValue('quoted')
  quoted,
  @JsonValue('accepted')
  accepted,
  @JsonValue('rejected')
  rejected,
  @JsonValue('appealed')
  appealed,
  @JsonValue('canceled')
  canceled,
}

enum QuotationCustomerCancelReason {
  @JsonValue('change_of_mind')
  changeOfMind,
  @JsonValue('found_another_artist')
  foundAnotherArtist,
  @JsonValue('financial_reasons')
  financialReasons,
  @JsonValue('personal_reasons')
  personalReasons,
  @JsonValue('other')
  other,
}

enum QuotationCustomerAppealReason {
  @JsonValue('date_change')
  dateChange,
  @JsonValue('price_change')
  priceChange,
  @JsonValue('design_change')
  designChange,
  @JsonValue('other')
  other,
}

enum QuotationCustomerRejectReason {
  @JsonValue('too_expensive')
  tooExpensive,
  @JsonValue('not_what_i_wanted')
  notWhatIWanted,
  @JsonValue('changed_my_mind')
  changedMyMind,
  @JsonValue('found_another_artist')
  foundAnotherArtist,
  @JsonValue('other')
  other,
}

enum QuotationArtistRejectReason {
  @JsonValue('scheduling_conflict')
  schedulingConflict,
  @JsonValue('artistic_disagreement')
  artisticDisagreement,
  @JsonValue('insufficient_details')
  insufficientDetails,
  @JsonValue('beyond_expertise')
  beyondExpertise,
  @JsonValue('other')
  other,
}

enum QuotationSystemCancelReason {
  @JsonValue('not_attended')
  notAttended,
  @JsonValue('system_timeout')
  systemTimeout,
}

enum QuotationCancelBy {
  @JsonValue('customer')
  customer,
  @JsonValue('system')
  system,
}

enum QuotationRejectBy {
  @JsonValue('customer')
  customer,
  @JsonValue('artist')
  artist,
  @JsonValue('system')
  system,
}

enum QuotationUserType {
  @JsonValue('customer')
  customer,
  @JsonValue('artist')
  artist,
  @JsonValue('admin')
  admin,
  @JsonValue('system')
  system,
}

enum QuotationRole {
  @JsonValue('customer')
  customer,
  @JsonValue('artist')
  artist,
  @JsonValue('system')
  system,
}
