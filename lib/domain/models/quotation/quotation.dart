import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/domain/models/customer/customer.dart';
import 'package:inker_studio/domain/models/location/location.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';
import 'package:inker_studio/domain/models/tattoo_generator/tattoo_design_cache.dart';
import 'dart:convert';

import 'package:intl/intl.dart';

part 'quotation.freezed.dart';
part 'quotation.g.dart';

Quotation getQuotationFromJson(String str) =>
    Quotation.fromJson(json.decode(str));
String quotationToJson(Quotation data) => json.encode(data.toJson());

@freezed
class Quotation with _$Quotation {
  const factory Quotation({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String customerId,
    String? artistId,
    required String description,
    MultimediasMetadata? referenceImages,
    MultimediasMetadata? proposedDesigns,
    required QuotationStatus status,
    @Default(QuotationType.DIRECT) QuotationType type,
    double? customerLat,
    double? customerLon,
    int? customerTravelRadiusKm,
    String? tattooDesignCacheId,
    String? tattooDesignImageUrl,
    TattooDesignCache? tattooDesignCache,
    List<QuotationOfferListItemDto>? offers,
    Money? estimatedCost,
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
    String? lastUpdatedBy,
    QuotationUserType? lastUpdatedByUserType,
    List<QuotationHistory>? history,
    Customer? customer,
    Artist? artist,
    Location? location,
    @Default(false) bool readByArtist,
    @Default(false) bool readByCustomer,
    DateTime? artistReadAt,
    DateTime? customerReadAt,
    String? stencilId,
    Stencil? stencil,
    double? distanceToArtistKm,
    @Default(false) bool hasOffered,
  }) = _Quotation;

  factory Quotation.fromJson(Map<String, dynamic> json) =>
      _$QuotationFromJson(json);

  static Quotation empty() => Quotation(
    id: '',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    customerId: '',
    description: '',
    status: QuotationStatus.pending,
  );
}

@freezed
class QuotationHistory with _$QuotationHistory {
  const factory QuotationHistory({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    Quotation? quotation,
    required QuotationStatus previousStatus,
    required QuotationStatus newStatus,
    required DateTime changedAt,
    required String changedBy,
    required QuotationRole changedByUserType,
    Money? previousEstimatedCost,
    Money? newEstimatedCost,
    DateTime? previousAppointmentDate,
    DateTime? newAppointmentDate,
    int? previousAppointmentDuration,
    int? newAppointmentDuration,
    String? previousTattooDesignCacheId,
    String? newTattooDesignCacheId,
    String? previousTattooDesignImageUrl,
    String? newTattooDesignImageUrl,
    QuotationCustomerAppealReason? appealedReason,
    String? rejectionReason,
    String? cancellationReason,
    String? additionalDetails,
    String? lastUpdatedBy,
    QuotationUserType? lastUpdatedByUserType,
  }) = _QuotationHistory;

  factory QuotationHistory.fromJson(Map<String, dynamic> json) =>
      _$QuotationHistoryFromJson(json);
}

@freezed
class Money with _$Money {
  const Money._(); // Needed for custom methods
  
  const factory Money({
    required int amount,
    @Default('USD') String currency,
    @Default(2) int scale,
  }) = _Money;

  factory Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);

  /// Creates a Money instance from a floating point value
  static Money fromFloat(double amount, [String currency = 'USD', int scale = 2]) {
    return Money(
      amount: (amount * pow(10, scale)).round(),
      currency: currency,
      scale: scale,
    );
  }

  /// Get the amount as a float
  double toFloat() {
    return amount / pow(10, scale);
  }

  /// Format the money amount according to the currency
  String format({bool includeCurrencySymbol = true}) {
    final value = toFloat();
    String formatted;

    switch (currency) {
      case 'CLP':
        // Chilean Peso: no decimal places, dot as thousand separator
        final formatter = NumberFormat('#,###', 'es_CL');
        formatted = formatter.format(value.round());
        if (includeCurrencySymbol) {
          formatted = '\$$formatted';
        }
        break;

      case 'USD':
        // US Dollar: 2 decimal places, comma as thousand separator
        final formatter = NumberFormat.currency(
          locale: 'en_US',
          symbol: includeCurrencySymbol ? '\$' : '',
          decimalDigits: scale,
        );
        formatted = formatter.format(value);
        break;

      case 'EUR':
        // Euro: 2 decimal places, dot as thousand separator, comma as decimal
        final formatter = NumberFormat.currency(
          locale: 'es_ES',
          symbol: includeCurrencySymbol ? '€' : '',
          decimalDigits: scale,
        );
        formatted = formatter.format(value);
        break;

      default:
        // Generic format with the currency code
        final formatter = NumberFormat.currency(
          symbol: includeCurrencySymbol ? '$currency ' : '',
          decimalDigits: scale,
        );
        formatted = formatter.format(value);
    }

    return formatted;
  }

  /// Format the money amount with the currency symbol
  String formatWithSymbol() => format(includeCurrencySymbol: true);

  /// Format the money amount without the currency symbol
  String formatWithoutSymbol() => format(includeCurrencySymbol: false);

  /// Format for compact display (e.g., $1K, $1M)
  String formatCompact() {
    final value = toFloat();
    final formatter = NumberFormat.compact(locale: currency == 'CLP' ? 'es_CL' : 'en_US');
    return '${currency == 'USD' ? '\$' : ''}${formatter.format(value)}';
  }

  /// Override toString to provide a readable format
  @override
  String toString() => formatWithSymbol();

  // is empty
  bool get isEmpty => amount == 0;
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
  @JsonValue('open')
  open,
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

enum QuotationType {
  @JsonValue('DIRECT')
  DIRECT,
  @JsonValue('OPEN')
  OPEN,
}

@freezed
class QuotationOfferListItemDto with _$QuotationOfferListItemDto {
  const factory QuotationOfferListItemDto({
    required String id,
    required String artistId,
    Money? estimatedCost,
    String? message,
    @Default([]) List<OfferMessageDto> messages,
  }) = _QuotationOfferListItemDto;

  factory QuotationOfferListItemDto.fromJson(Map<String, dynamic> json) =>
      _$QuotationOfferListItemDtoFromJson(json);

  static QuotationOfferListItemDto empty() => const QuotationOfferListItemDto(
    id: '',
    artistId: '',
    estimatedCost: Money(amount: 0, currency: 'USD', scale: 2),
    message: '',
    messages: [],
  );
}

@freezed
class OfferMessageDto with _$OfferMessageDto {
  const factory OfferMessageDto({
    required String senderId, 
    required QuotationRole senderType,
    required String message,
    String? imageUrl,
    required DateTime timestamp,
  }) = _OfferMessageDto;

  factory OfferMessageDto.fromJson(Map<String, dynamic> json) =>
      _$OfferMessageDtoFromJson(json);
}
