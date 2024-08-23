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
    String? rejectedReason,
    AppealedReason? appealedReason,
    DateTime? appealedDate,
    CancelReason? canceledReason,
    DateTime? canceledDate,
  }) = _Quotation;

  factory Quotation.fromJson(Map<String, dynamic> json) =>
      _$QuotationFromJson(json);
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

enum AppealedReason {
  @JsonValue('dateChange')
  dateChange,
}

enum CancelReason {
  @JsonValue('customer')
  customer,
  @JsonValue('artist')
  artist,
  @JsonValue('not_attended')
  notAttended,
}
