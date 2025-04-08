// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quotation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Quotation _$QuotationFromJson(Map<String, dynamic> json) {
  return _Quotation.fromJson(json);
}

/// @nodoc
mixin _$Quotation {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;
  String get artistId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  MultimediasMetadata? get referenceImages =>
      throw _privateConstructorUsedError;
  MultimediasMetadata? get proposedDesigns =>
      throw _privateConstructorUsedError;
  QuotationStatus get status => throw _privateConstructorUsedError;
  Money? get estimatedCost => throw _privateConstructorUsedError;
  DateTime? get responseDate => throw _privateConstructorUsedError;
  DateTime? get appointmentDate => throw _privateConstructorUsedError;
  int? get appointmentDuration => throw _privateConstructorUsedError;
  QuotationRejectBy? get rejectBy => throw _privateConstructorUsedError;
  QuotationCustomerRejectReason? get customerRejectReason =>
      throw _privateConstructorUsedError;
  QuotationArtistRejectReason? get artistRejectReason =>
      throw _privateConstructorUsedError;
  String? get rejectReasonDetails => throw _privateConstructorUsedError;
  DateTime? get rejectedDate => throw _privateConstructorUsedError;
  QuotationCustomerAppealReason? get appealedReason =>
      throw _privateConstructorUsedError;
  DateTime? get appealedDate => throw _privateConstructorUsedError;
  QuotationCancelBy? get canceledBy => throw _privateConstructorUsedError;
  QuotationCustomerCancelReason? get customerCancelReason =>
      throw _privateConstructorUsedError;
  QuotationSystemCancelReason? get systemCancelReason =>
      throw _privateConstructorUsedError;
  String? get cancelReasonDetails => throw _privateConstructorUsedError;
  DateTime? get canceledDate => throw _privateConstructorUsedError;
  int? get lastUpdatedBy => throw _privateConstructorUsedError;
  QuotationUserType? get lastUpdatedByUserType =>
      throw _privateConstructorUsedError;
  List<QuotationHistory>? get history => throw _privateConstructorUsedError;
  Customer? get customer => throw _privateConstructorUsedError;
  Artist? get artist => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;
  bool get readByArtist => throw _privateConstructorUsedError;
  bool get readByCustomer => throw _privateConstructorUsedError;
  DateTime? get artistReadAt => throw _privateConstructorUsedError;
  DateTime? get customerReadAt => throw _privateConstructorUsedError;
  String? get stencilId => throw _privateConstructorUsedError;
  Stencil? get stencil => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuotationCopyWith<Quotation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotationCopyWith<$Res> {
  factory $QuotationCopyWith(Quotation value, $Res Function(Quotation) then) =
      _$QuotationCopyWithImpl<$Res, Quotation>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String customerId,
      String artistId,
      String description,
      MultimediasMetadata? referenceImages,
      MultimediasMetadata? proposedDesigns,
      QuotationStatus status,
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
      int? lastUpdatedBy,
      QuotationUserType? lastUpdatedByUserType,
      List<QuotationHistory>? history,
      Customer? customer,
      Artist? artist,
      Location? location,
      bool readByArtist,
      bool readByCustomer,
      DateTime? artistReadAt,
      DateTime? customerReadAt,
      String? stencilId,
      Stencil? stencil});

  $MultimediasMetadataCopyWith<$Res>? get referenceImages;
  $MultimediasMetadataCopyWith<$Res>? get proposedDesigns;
  $MoneyCopyWith<$Res>? get estimatedCost;
  $ArtistCopyWith<$Res>? get artist;
  $LocationCopyWith<$Res>? get location;
  $StencilCopyWith<$Res>? get stencil;
}

/// @nodoc
class _$QuotationCopyWithImpl<$Res, $Val extends Quotation>
    implements $QuotationCopyWith<$Res> {
  _$QuotationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? customerId = null,
    Object? artistId = null,
    Object? description = null,
    Object? referenceImages = freezed,
    Object? proposedDesigns = freezed,
    Object? status = null,
    Object? estimatedCost = freezed,
    Object? responseDate = freezed,
    Object? appointmentDate = freezed,
    Object? appointmentDuration = freezed,
    Object? rejectBy = freezed,
    Object? customerRejectReason = freezed,
    Object? artistRejectReason = freezed,
    Object? rejectReasonDetails = freezed,
    Object? rejectedDate = freezed,
    Object? appealedReason = freezed,
    Object? appealedDate = freezed,
    Object? canceledBy = freezed,
    Object? customerCancelReason = freezed,
    Object? systemCancelReason = freezed,
    Object? cancelReasonDetails = freezed,
    Object? canceledDate = freezed,
    Object? lastUpdatedBy = freezed,
    Object? lastUpdatedByUserType = freezed,
    Object? history = freezed,
    Object? customer = freezed,
    Object? artist = freezed,
    Object? location = freezed,
    Object? readByArtist = null,
    Object? readByCustomer = null,
    Object? artistReadAt = freezed,
    Object? customerReadAt = freezed,
    Object? stencilId = freezed,
    Object? stencil = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      referenceImages: freezed == referenceImages
          ? _value.referenceImages
          : referenceImages // ignore: cast_nullable_to_non_nullable
              as MultimediasMetadata?,
      proposedDesigns: freezed == proposedDesigns
          ? _value.proposedDesigns
          : proposedDesigns // ignore: cast_nullable_to_non_nullable
              as MultimediasMetadata?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuotationStatus,
      estimatedCost: freezed == estimatedCost
          ? _value.estimatedCost
          : estimatedCost // ignore: cast_nullable_to_non_nullable
              as Money?,
      responseDate: freezed == responseDate
          ? _value.responseDate
          : responseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      appointmentDate: freezed == appointmentDate
          ? _value.appointmentDate
          : appointmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      appointmentDuration: freezed == appointmentDuration
          ? _value.appointmentDuration
          : appointmentDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      rejectBy: freezed == rejectBy
          ? _value.rejectBy
          : rejectBy // ignore: cast_nullable_to_non_nullable
              as QuotationRejectBy?,
      customerRejectReason: freezed == customerRejectReason
          ? _value.customerRejectReason
          : customerRejectReason // ignore: cast_nullable_to_non_nullable
              as QuotationCustomerRejectReason?,
      artistRejectReason: freezed == artistRejectReason
          ? _value.artistRejectReason
          : artistRejectReason // ignore: cast_nullable_to_non_nullable
              as QuotationArtistRejectReason?,
      rejectReasonDetails: freezed == rejectReasonDetails
          ? _value.rejectReasonDetails
          : rejectReasonDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedDate: freezed == rejectedDate
          ? _value.rejectedDate
          : rejectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      appealedReason: freezed == appealedReason
          ? _value.appealedReason
          : appealedReason // ignore: cast_nullable_to_non_nullable
              as QuotationCustomerAppealReason?,
      appealedDate: freezed == appealedDate
          ? _value.appealedDate
          : appealedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      canceledBy: freezed == canceledBy
          ? _value.canceledBy
          : canceledBy // ignore: cast_nullable_to_non_nullable
              as QuotationCancelBy?,
      customerCancelReason: freezed == customerCancelReason
          ? _value.customerCancelReason
          : customerCancelReason // ignore: cast_nullable_to_non_nullable
              as QuotationCustomerCancelReason?,
      systemCancelReason: freezed == systemCancelReason
          ? _value.systemCancelReason
          : systemCancelReason // ignore: cast_nullable_to_non_nullable
              as QuotationSystemCancelReason?,
      cancelReasonDetails: freezed == cancelReasonDetails
          ? _value.cancelReasonDetails
          : cancelReasonDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      canceledDate: freezed == canceledDate
          ? _value.canceledDate
          : canceledDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdatedBy: freezed == lastUpdatedBy
          ? _value.lastUpdatedBy
          : lastUpdatedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      lastUpdatedByUserType: freezed == lastUpdatedByUserType
          ? _value.lastUpdatedByUserType
          : lastUpdatedByUserType // ignore: cast_nullable_to_non_nullable
              as QuotationUserType?,
      history: freezed == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<QuotationHistory>?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      readByArtist: null == readByArtist
          ? _value.readByArtist
          : readByArtist // ignore: cast_nullable_to_non_nullable
              as bool,
      readByCustomer: null == readByCustomer
          ? _value.readByCustomer
          : readByCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      artistReadAt: freezed == artistReadAt
          ? _value.artistReadAt
          : artistReadAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      customerReadAt: freezed == customerReadAt
          ? _value.customerReadAt
          : customerReadAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stencilId: freezed == stencilId
          ? _value.stencilId
          : stencilId // ignore: cast_nullable_to_non_nullable
              as String?,
      stencil: freezed == stencil
          ? _value.stencil
          : stencil // ignore: cast_nullable_to_non_nullable
              as Stencil?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MultimediasMetadataCopyWith<$Res>? get referenceImages {
    if (_value.referenceImages == null) {
      return null;
    }

    return $MultimediasMetadataCopyWith<$Res>(_value.referenceImages!, (value) {
      return _then(_value.copyWith(referenceImages: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MultimediasMetadataCopyWith<$Res>? get proposedDesigns {
    if (_value.proposedDesigns == null) {
      return null;
    }

    return $MultimediasMetadataCopyWith<$Res>(_value.proposedDesigns!, (value) {
      return _then(_value.copyWith(proposedDesigns: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get estimatedCost {
    if (_value.estimatedCost == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.estimatedCost!, (value) {
      return _then(_value.copyWith(estimatedCost: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ArtistCopyWith<$Res>? get artist {
    if (_value.artist == null) {
      return null;
    }

    return $ArtistCopyWith<$Res>(_value.artist!, (value) {
      return _then(_value.copyWith(artist: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StencilCopyWith<$Res>? get stencil {
    if (_value.stencil == null) {
      return null;
    }

    return $StencilCopyWith<$Res>(_value.stencil!, (value) {
      return _then(_value.copyWith(stencil: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuotationImplCopyWith<$Res>
    implements $QuotationCopyWith<$Res> {
  factory _$$QuotationImplCopyWith(
          _$QuotationImpl value, $Res Function(_$QuotationImpl) then) =
      __$$QuotationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String customerId,
      String artistId,
      String description,
      MultimediasMetadata? referenceImages,
      MultimediasMetadata? proposedDesigns,
      QuotationStatus status,
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
      int? lastUpdatedBy,
      QuotationUserType? lastUpdatedByUserType,
      List<QuotationHistory>? history,
      Customer? customer,
      Artist? artist,
      Location? location,
      bool readByArtist,
      bool readByCustomer,
      DateTime? artistReadAt,
      DateTime? customerReadAt,
      String? stencilId,
      Stencil? stencil});

  @override
  $MultimediasMetadataCopyWith<$Res>? get referenceImages;
  @override
  $MultimediasMetadataCopyWith<$Res>? get proposedDesigns;
  @override
  $MoneyCopyWith<$Res>? get estimatedCost;
  @override
  $ArtistCopyWith<$Res>? get artist;
  @override
  $LocationCopyWith<$Res>? get location;
  @override
  $StencilCopyWith<$Res>? get stencil;
}

/// @nodoc
class __$$QuotationImplCopyWithImpl<$Res>
    extends _$QuotationCopyWithImpl<$Res, _$QuotationImpl>
    implements _$$QuotationImplCopyWith<$Res> {
  __$$QuotationImplCopyWithImpl(
      _$QuotationImpl _value, $Res Function(_$QuotationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? customerId = null,
    Object? artistId = null,
    Object? description = null,
    Object? referenceImages = freezed,
    Object? proposedDesigns = freezed,
    Object? status = null,
    Object? estimatedCost = freezed,
    Object? responseDate = freezed,
    Object? appointmentDate = freezed,
    Object? appointmentDuration = freezed,
    Object? rejectBy = freezed,
    Object? customerRejectReason = freezed,
    Object? artistRejectReason = freezed,
    Object? rejectReasonDetails = freezed,
    Object? rejectedDate = freezed,
    Object? appealedReason = freezed,
    Object? appealedDate = freezed,
    Object? canceledBy = freezed,
    Object? customerCancelReason = freezed,
    Object? systemCancelReason = freezed,
    Object? cancelReasonDetails = freezed,
    Object? canceledDate = freezed,
    Object? lastUpdatedBy = freezed,
    Object? lastUpdatedByUserType = freezed,
    Object? history = freezed,
    Object? customer = freezed,
    Object? artist = freezed,
    Object? location = freezed,
    Object? readByArtist = null,
    Object? readByCustomer = null,
    Object? artistReadAt = freezed,
    Object? customerReadAt = freezed,
    Object? stencilId = freezed,
    Object? stencil = freezed,
  }) {
    return _then(_$QuotationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      referenceImages: freezed == referenceImages
          ? _value.referenceImages
          : referenceImages // ignore: cast_nullable_to_non_nullable
              as MultimediasMetadata?,
      proposedDesigns: freezed == proposedDesigns
          ? _value.proposedDesigns
          : proposedDesigns // ignore: cast_nullable_to_non_nullable
              as MultimediasMetadata?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuotationStatus,
      estimatedCost: freezed == estimatedCost
          ? _value.estimatedCost
          : estimatedCost // ignore: cast_nullable_to_non_nullable
              as Money?,
      responseDate: freezed == responseDate
          ? _value.responseDate
          : responseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      appointmentDate: freezed == appointmentDate
          ? _value.appointmentDate
          : appointmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      appointmentDuration: freezed == appointmentDuration
          ? _value.appointmentDuration
          : appointmentDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      rejectBy: freezed == rejectBy
          ? _value.rejectBy
          : rejectBy // ignore: cast_nullable_to_non_nullable
              as QuotationRejectBy?,
      customerRejectReason: freezed == customerRejectReason
          ? _value.customerRejectReason
          : customerRejectReason // ignore: cast_nullable_to_non_nullable
              as QuotationCustomerRejectReason?,
      artistRejectReason: freezed == artistRejectReason
          ? _value.artistRejectReason
          : artistRejectReason // ignore: cast_nullable_to_non_nullable
              as QuotationArtistRejectReason?,
      rejectReasonDetails: freezed == rejectReasonDetails
          ? _value.rejectReasonDetails
          : rejectReasonDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedDate: freezed == rejectedDate
          ? _value.rejectedDate
          : rejectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      appealedReason: freezed == appealedReason
          ? _value.appealedReason
          : appealedReason // ignore: cast_nullable_to_non_nullable
              as QuotationCustomerAppealReason?,
      appealedDate: freezed == appealedDate
          ? _value.appealedDate
          : appealedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      canceledBy: freezed == canceledBy
          ? _value.canceledBy
          : canceledBy // ignore: cast_nullable_to_non_nullable
              as QuotationCancelBy?,
      customerCancelReason: freezed == customerCancelReason
          ? _value.customerCancelReason
          : customerCancelReason // ignore: cast_nullable_to_non_nullable
              as QuotationCustomerCancelReason?,
      systemCancelReason: freezed == systemCancelReason
          ? _value.systemCancelReason
          : systemCancelReason // ignore: cast_nullable_to_non_nullable
              as QuotationSystemCancelReason?,
      cancelReasonDetails: freezed == cancelReasonDetails
          ? _value.cancelReasonDetails
          : cancelReasonDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      canceledDate: freezed == canceledDate
          ? _value.canceledDate
          : canceledDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastUpdatedBy: freezed == lastUpdatedBy
          ? _value.lastUpdatedBy
          : lastUpdatedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      lastUpdatedByUserType: freezed == lastUpdatedByUserType
          ? _value.lastUpdatedByUserType
          : lastUpdatedByUserType // ignore: cast_nullable_to_non_nullable
              as QuotationUserType?,
      history: freezed == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<QuotationHistory>?,
      customer: freezed == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer?,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      readByArtist: null == readByArtist
          ? _value.readByArtist
          : readByArtist // ignore: cast_nullable_to_non_nullable
              as bool,
      readByCustomer: null == readByCustomer
          ? _value.readByCustomer
          : readByCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      artistReadAt: freezed == artistReadAt
          ? _value.artistReadAt
          : artistReadAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      customerReadAt: freezed == customerReadAt
          ? _value.customerReadAt
          : customerReadAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stencilId: freezed == stencilId
          ? _value.stencilId
          : stencilId // ignore: cast_nullable_to_non_nullable
              as String?,
      stencil: freezed == stencil
          ? _value.stencil
          : stencil // ignore: cast_nullable_to_non_nullable
              as Stencil?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuotationImpl implements _Quotation {
  const _$QuotationImpl(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.customerId,
      required this.artistId,
      required this.description,
      this.referenceImages,
      this.proposedDesigns,
      required this.status,
      this.estimatedCost,
      this.responseDate,
      this.appointmentDate,
      this.appointmentDuration,
      this.rejectBy,
      this.customerRejectReason,
      this.artistRejectReason,
      this.rejectReasonDetails,
      this.rejectedDate,
      this.appealedReason,
      this.appealedDate,
      this.canceledBy,
      this.customerCancelReason,
      this.systemCancelReason,
      this.cancelReasonDetails,
      this.canceledDate,
      this.lastUpdatedBy,
      this.lastUpdatedByUserType,
      final List<QuotationHistory>? history,
      this.customer,
      this.artist,
      this.location,
      this.readByArtist = false,
      this.readByCustomer = false,
      this.artistReadAt,
      this.customerReadAt,
      this.stencilId,
      this.stencil})
      : _history = history;

  factory _$QuotationImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuotationImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String customerId;
  @override
  final String artistId;
  @override
  final String description;
  @override
  final MultimediasMetadata? referenceImages;
  @override
  final MultimediasMetadata? proposedDesigns;
  @override
  final QuotationStatus status;
  @override
  final Money? estimatedCost;
  @override
  final DateTime? responseDate;
  @override
  final DateTime? appointmentDate;
  @override
  final int? appointmentDuration;
  @override
  final QuotationRejectBy? rejectBy;
  @override
  final QuotationCustomerRejectReason? customerRejectReason;
  @override
  final QuotationArtistRejectReason? artistRejectReason;
  @override
  final String? rejectReasonDetails;
  @override
  final DateTime? rejectedDate;
  @override
  final QuotationCustomerAppealReason? appealedReason;
  @override
  final DateTime? appealedDate;
  @override
  final QuotationCancelBy? canceledBy;
  @override
  final QuotationCustomerCancelReason? customerCancelReason;
  @override
  final QuotationSystemCancelReason? systemCancelReason;
  @override
  final String? cancelReasonDetails;
  @override
  final DateTime? canceledDate;
  @override
  final int? lastUpdatedBy;
  @override
  final QuotationUserType? lastUpdatedByUserType;
  final List<QuotationHistory>? _history;
  @override
  List<QuotationHistory>? get history {
    final value = _history;
    if (value == null) return null;
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Customer? customer;
  @override
  final Artist? artist;
  @override
  final Location? location;
  @override
  @JsonKey()
  final bool readByArtist;
  @override
  @JsonKey()
  final bool readByCustomer;
  @override
  final DateTime? artistReadAt;
  @override
  final DateTime? customerReadAt;
  @override
  final String? stencilId;
  @override
  final Stencil? stencil;

  @override
  String toString() {
    return 'Quotation(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, customerId: $customerId, artistId: $artistId, description: $description, referenceImages: $referenceImages, proposedDesigns: $proposedDesigns, status: $status, estimatedCost: $estimatedCost, responseDate: $responseDate, appointmentDate: $appointmentDate, appointmentDuration: $appointmentDuration, rejectBy: $rejectBy, customerRejectReason: $customerRejectReason, artistRejectReason: $artistRejectReason, rejectReasonDetails: $rejectReasonDetails, rejectedDate: $rejectedDate, appealedReason: $appealedReason, appealedDate: $appealedDate, canceledBy: $canceledBy, customerCancelReason: $customerCancelReason, systemCancelReason: $systemCancelReason, cancelReasonDetails: $cancelReasonDetails, canceledDate: $canceledDate, lastUpdatedBy: $lastUpdatedBy, lastUpdatedByUserType: $lastUpdatedByUserType, history: $history, customer: $customer, artist: $artist, location: $location, readByArtist: $readByArtist, readByCustomer: $readByCustomer, artistReadAt: $artistReadAt, customerReadAt: $customerReadAt, stencilId: $stencilId, stencil: $stencil)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuotationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.referenceImages, referenceImages) ||
                other.referenceImages == referenceImages) &&
            (identical(other.proposedDesigns, proposedDesigns) ||
                other.proposedDesigns == proposedDesigns) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.estimatedCost, estimatedCost) ||
                other.estimatedCost == estimatedCost) &&
            (identical(other.responseDate, responseDate) ||
                other.responseDate == responseDate) &&
            (identical(other.appointmentDate, appointmentDate) ||
                other.appointmentDate == appointmentDate) &&
            (identical(other.appointmentDuration, appointmentDuration) ||
                other.appointmentDuration == appointmentDuration) &&
            (identical(other.rejectBy, rejectBy) ||
                other.rejectBy == rejectBy) &&
            (identical(other.customerRejectReason, customerRejectReason) ||
                other.customerRejectReason == customerRejectReason) &&
            (identical(other.artistRejectReason, artistRejectReason) ||
                other.artistRejectReason == artistRejectReason) &&
            (identical(other.rejectReasonDetails, rejectReasonDetails) ||
                other.rejectReasonDetails == rejectReasonDetails) &&
            (identical(other.rejectedDate, rejectedDate) ||
                other.rejectedDate == rejectedDate) &&
            (identical(other.appealedReason, appealedReason) ||
                other.appealedReason == appealedReason) &&
            (identical(other.appealedDate, appealedDate) ||
                other.appealedDate == appealedDate) &&
            (identical(other.canceledBy, canceledBy) ||
                other.canceledBy == canceledBy) &&
            (identical(other.customerCancelReason, customerCancelReason) ||
                other.customerCancelReason == customerCancelReason) &&
            (identical(other.systemCancelReason, systemCancelReason) ||
                other.systemCancelReason == systemCancelReason) &&
            (identical(other.cancelReasonDetails, cancelReasonDetails) ||
                other.cancelReasonDetails == cancelReasonDetails) &&
            (identical(other.canceledDate, canceledDate) ||
                other.canceledDate == canceledDate) &&
            (identical(other.lastUpdatedBy, lastUpdatedBy) ||
                other.lastUpdatedBy == lastUpdatedBy) &&
            (identical(other.lastUpdatedByUserType, lastUpdatedByUserType) ||
                other.lastUpdatedByUserType == lastUpdatedByUserType) &&
            const DeepCollectionEquality().equals(other._history, _history) &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.readByArtist, readByArtist) ||
                other.readByArtist == readByArtist) &&
            (identical(other.readByCustomer, readByCustomer) ||
                other.readByCustomer == readByCustomer) &&
            (identical(other.artistReadAt, artistReadAt) ||
                other.artistReadAt == artistReadAt) &&
            (identical(other.customerReadAt, customerReadAt) ||
                other.customerReadAt == customerReadAt) &&
            (identical(other.stencilId, stencilId) ||
                other.stencilId == stencilId) &&
            (identical(other.stencil, stencil) || other.stencil == stencil));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        createdAt,
        updatedAt,
        customerId,
        artistId,
        description,
        referenceImages,
        proposedDesigns,
        status,
        estimatedCost,
        responseDate,
        appointmentDate,
        appointmentDuration,
        rejectBy,
        customerRejectReason,
        artistRejectReason,
        rejectReasonDetails,
        rejectedDate,
        appealedReason,
        appealedDate,
        canceledBy,
        customerCancelReason,
        systemCancelReason,
        cancelReasonDetails,
        canceledDate,
        lastUpdatedBy,
        lastUpdatedByUserType,
        const DeepCollectionEquality().hash(_history),
        customer,
        artist,
        location,
        readByArtist,
        readByCustomer,
        artistReadAt,
        customerReadAt,
        stencilId,
        stencil
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuotationImplCopyWith<_$QuotationImpl> get copyWith =>
      __$$QuotationImplCopyWithImpl<_$QuotationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuotationImplToJson(
      this,
    );
  }
}

abstract class _Quotation implements Quotation {
  const factory _Quotation(
      {required final String id,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final String customerId,
      required final String artistId,
      required final String description,
      final MultimediasMetadata? referenceImages,
      final MultimediasMetadata? proposedDesigns,
      required final QuotationStatus status,
      final Money? estimatedCost,
      final DateTime? responseDate,
      final DateTime? appointmentDate,
      final int? appointmentDuration,
      final QuotationRejectBy? rejectBy,
      final QuotationCustomerRejectReason? customerRejectReason,
      final QuotationArtistRejectReason? artistRejectReason,
      final String? rejectReasonDetails,
      final DateTime? rejectedDate,
      final QuotationCustomerAppealReason? appealedReason,
      final DateTime? appealedDate,
      final QuotationCancelBy? canceledBy,
      final QuotationCustomerCancelReason? customerCancelReason,
      final QuotationSystemCancelReason? systemCancelReason,
      final String? cancelReasonDetails,
      final DateTime? canceledDate,
      final int? lastUpdatedBy,
      final QuotationUserType? lastUpdatedByUserType,
      final List<QuotationHistory>? history,
      final Customer? customer,
      final Artist? artist,
      final Location? location,
      final bool readByArtist,
      final bool readByCustomer,
      final DateTime? artistReadAt,
      final DateTime? customerReadAt,
      final String? stencilId,
      final Stencil? stencil}) = _$QuotationImpl;

  factory _Quotation.fromJson(Map<String, dynamic> json) =
      _$QuotationImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get customerId;
  @override
  String get artistId;
  @override
  String get description;
  @override
  MultimediasMetadata? get referenceImages;
  @override
  MultimediasMetadata? get proposedDesigns;
  @override
  QuotationStatus get status;
  @override
  Money? get estimatedCost;
  @override
  DateTime? get responseDate;
  @override
  DateTime? get appointmentDate;
  @override
  int? get appointmentDuration;
  @override
  QuotationRejectBy? get rejectBy;
  @override
  QuotationCustomerRejectReason? get customerRejectReason;
  @override
  QuotationArtistRejectReason? get artistRejectReason;
  @override
  String? get rejectReasonDetails;
  @override
  DateTime? get rejectedDate;
  @override
  QuotationCustomerAppealReason? get appealedReason;
  @override
  DateTime? get appealedDate;
  @override
  QuotationCancelBy? get canceledBy;
  @override
  QuotationCustomerCancelReason? get customerCancelReason;
  @override
  QuotationSystemCancelReason? get systemCancelReason;
  @override
  String? get cancelReasonDetails;
  @override
  DateTime? get canceledDate;
  @override
  int? get lastUpdatedBy;
  @override
  QuotationUserType? get lastUpdatedByUserType;
  @override
  List<QuotationHistory>? get history;
  @override
  Customer? get customer;
  @override
  Artist? get artist;
  @override
  Location? get location;
  @override
  bool get readByArtist;
  @override
  bool get readByCustomer;
  @override
  DateTime? get artistReadAt;
  @override
  DateTime? get customerReadAt;
  @override
  String? get stencilId;
  @override
  Stencil? get stencil;
  @override
  @JsonKey(ignore: true)
  _$$QuotationImplCopyWith<_$QuotationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuotationHistory _$QuotationHistoryFromJson(Map<String, dynamic> json) {
  return _QuotationHistory.fromJson(json);
}

/// @nodoc
mixin _$QuotationHistory {
  int get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  Quotation? get quotation => throw _privateConstructorUsedError;
  QuotationStatus get previousStatus => throw _privateConstructorUsedError;
  QuotationStatus get newStatus => throw _privateConstructorUsedError;
  DateTime get changedAt => throw _privateConstructorUsedError;
  int get changedBy => throw _privateConstructorUsedError;
  QuotationRole get changedByUserType => throw _privateConstructorUsedError;
  Money? get previousEstimatedCost => throw _privateConstructorUsedError;
  Money? get newEstimatedCost => throw _privateConstructorUsedError;
  DateTime? get previousAppointmentDate => throw _privateConstructorUsedError;
  DateTime? get newAppointmentDate => throw _privateConstructorUsedError;
  int? get previousAppointmentDuration => throw _privateConstructorUsedError;
  int? get newAppointmentDuration => throw _privateConstructorUsedError;
  QuotationCustomerAppealReason? get appealedReason =>
      throw _privateConstructorUsedError;
  String? get rejectionReason => throw _privateConstructorUsedError;
  String? get cancellationReason => throw _privateConstructorUsedError;
  String? get additionalDetails => throw _privateConstructorUsedError;
  int? get lastUpdatedBy => throw _privateConstructorUsedError;
  QuotationUserType? get lastUpdatedByUserType =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuotationHistoryCopyWith<QuotationHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotationHistoryCopyWith<$Res> {
  factory $QuotationHistoryCopyWith(
          QuotationHistory value, $Res Function(QuotationHistory) then) =
      _$QuotationHistoryCopyWithImpl<$Res, QuotationHistory>;
  @useResult
  $Res call(
      {int id,
      DateTime createdAt,
      DateTime updatedAt,
      Quotation? quotation,
      QuotationStatus previousStatus,
      QuotationStatus newStatus,
      DateTime changedAt,
      int changedBy,
      QuotationRole changedByUserType,
      Money? previousEstimatedCost,
      Money? newEstimatedCost,
      DateTime? previousAppointmentDate,
      DateTime? newAppointmentDate,
      int? previousAppointmentDuration,
      int? newAppointmentDuration,
      QuotationCustomerAppealReason? appealedReason,
      String? rejectionReason,
      String? cancellationReason,
      String? additionalDetails,
      int? lastUpdatedBy,
      QuotationUserType? lastUpdatedByUserType});

  $QuotationCopyWith<$Res>? get quotation;
  $MoneyCopyWith<$Res>? get previousEstimatedCost;
  $MoneyCopyWith<$Res>? get newEstimatedCost;
}

/// @nodoc
class _$QuotationHistoryCopyWithImpl<$Res, $Val extends QuotationHistory>
    implements $QuotationHistoryCopyWith<$Res> {
  _$QuotationHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? quotation = freezed,
    Object? previousStatus = null,
    Object? newStatus = null,
    Object? changedAt = null,
    Object? changedBy = null,
    Object? changedByUserType = null,
    Object? previousEstimatedCost = freezed,
    Object? newEstimatedCost = freezed,
    Object? previousAppointmentDate = freezed,
    Object? newAppointmentDate = freezed,
    Object? previousAppointmentDuration = freezed,
    Object? newAppointmentDuration = freezed,
    Object? appealedReason = freezed,
    Object? rejectionReason = freezed,
    Object? cancellationReason = freezed,
    Object? additionalDetails = freezed,
    Object? lastUpdatedBy = freezed,
    Object? lastUpdatedByUserType = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      quotation: freezed == quotation
          ? _value.quotation
          : quotation // ignore: cast_nullable_to_non_nullable
              as Quotation?,
      previousStatus: null == previousStatus
          ? _value.previousStatus
          : previousStatus // ignore: cast_nullable_to_non_nullable
              as QuotationStatus,
      newStatus: null == newStatus
          ? _value.newStatus
          : newStatus // ignore: cast_nullable_to_non_nullable
              as QuotationStatus,
      changedAt: null == changedAt
          ? _value.changedAt
          : changedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      changedBy: null == changedBy
          ? _value.changedBy
          : changedBy // ignore: cast_nullable_to_non_nullable
              as int,
      changedByUserType: null == changedByUserType
          ? _value.changedByUserType
          : changedByUserType // ignore: cast_nullable_to_non_nullable
              as QuotationRole,
      previousEstimatedCost: freezed == previousEstimatedCost
          ? _value.previousEstimatedCost
          : previousEstimatedCost // ignore: cast_nullable_to_non_nullable
              as Money?,
      newEstimatedCost: freezed == newEstimatedCost
          ? _value.newEstimatedCost
          : newEstimatedCost // ignore: cast_nullable_to_non_nullable
              as Money?,
      previousAppointmentDate: freezed == previousAppointmentDate
          ? _value.previousAppointmentDate
          : previousAppointmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      newAppointmentDate: freezed == newAppointmentDate
          ? _value.newAppointmentDate
          : newAppointmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      previousAppointmentDuration: freezed == previousAppointmentDuration
          ? _value.previousAppointmentDuration
          : previousAppointmentDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      newAppointmentDuration: freezed == newAppointmentDuration
          ? _value.newAppointmentDuration
          : newAppointmentDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      appealedReason: freezed == appealedReason
          ? _value.appealedReason
          : appealedReason // ignore: cast_nullable_to_non_nullable
              as QuotationCustomerAppealReason?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      cancellationReason: freezed == cancellationReason
          ? _value.cancellationReason
          : cancellationReason // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalDetails: freezed == additionalDetails
          ? _value.additionalDetails
          : additionalDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdatedBy: freezed == lastUpdatedBy
          ? _value.lastUpdatedBy
          : lastUpdatedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      lastUpdatedByUserType: freezed == lastUpdatedByUserType
          ? _value.lastUpdatedByUserType
          : lastUpdatedByUserType // ignore: cast_nullable_to_non_nullable
              as QuotationUserType?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuotationCopyWith<$Res>? get quotation {
    if (_value.quotation == null) {
      return null;
    }

    return $QuotationCopyWith<$Res>(_value.quotation!, (value) {
      return _then(_value.copyWith(quotation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get previousEstimatedCost {
    if (_value.previousEstimatedCost == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.previousEstimatedCost!, (value) {
      return _then(_value.copyWith(previousEstimatedCost: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get newEstimatedCost {
    if (_value.newEstimatedCost == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.newEstimatedCost!, (value) {
      return _then(_value.copyWith(newEstimatedCost: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuotationHistoryImplCopyWith<$Res>
    implements $QuotationHistoryCopyWith<$Res> {
  factory _$$QuotationHistoryImplCopyWith(_$QuotationHistoryImpl value,
          $Res Function(_$QuotationHistoryImpl) then) =
      __$$QuotationHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime createdAt,
      DateTime updatedAt,
      Quotation? quotation,
      QuotationStatus previousStatus,
      QuotationStatus newStatus,
      DateTime changedAt,
      int changedBy,
      QuotationRole changedByUserType,
      Money? previousEstimatedCost,
      Money? newEstimatedCost,
      DateTime? previousAppointmentDate,
      DateTime? newAppointmentDate,
      int? previousAppointmentDuration,
      int? newAppointmentDuration,
      QuotationCustomerAppealReason? appealedReason,
      String? rejectionReason,
      String? cancellationReason,
      String? additionalDetails,
      int? lastUpdatedBy,
      QuotationUserType? lastUpdatedByUserType});

  @override
  $QuotationCopyWith<$Res>? get quotation;
  @override
  $MoneyCopyWith<$Res>? get previousEstimatedCost;
  @override
  $MoneyCopyWith<$Res>? get newEstimatedCost;
}

/// @nodoc
class __$$QuotationHistoryImplCopyWithImpl<$Res>
    extends _$QuotationHistoryCopyWithImpl<$Res, _$QuotationHistoryImpl>
    implements _$$QuotationHistoryImplCopyWith<$Res> {
  __$$QuotationHistoryImplCopyWithImpl(_$QuotationHistoryImpl _value,
      $Res Function(_$QuotationHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? quotation = freezed,
    Object? previousStatus = null,
    Object? newStatus = null,
    Object? changedAt = null,
    Object? changedBy = null,
    Object? changedByUserType = null,
    Object? previousEstimatedCost = freezed,
    Object? newEstimatedCost = freezed,
    Object? previousAppointmentDate = freezed,
    Object? newAppointmentDate = freezed,
    Object? previousAppointmentDuration = freezed,
    Object? newAppointmentDuration = freezed,
    Object? appealedReason = freezed,
    Object? rejectionReason = freezed,
    Object? cancellationReason = freezed,
    Object? additionalDetails = freezed,
    Object? lastUpdatedBy = freezed,
    Object? lastUpdatedByUserType = freezed,
  }) {
    return _then(_$QuotationHistoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      quotation: freezed == quotation
          ? _value.quotation
          : quotation // ignore: cast_nullable_to_non_nullable
              as Quotation?,
      previousStatus: null == previousStatus
          ? _value.previousStatus
          : previousStatus // ignore: cast_nullable_to_non_nullable
              as QuotationStatus,
      newStatus: null == newStatus
          ? _value.newStatus
          : newStatus // ignore: cast_nullable_to_non_nullable
              as QuotationStatus,
      changedAt: null == changedAt
          ? _value.changedAt
          : changedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      changedBy: null == changedBy
          ? _value.changedBy
          : changedBy // ignore: cast_nullable_to_non_nullable
              as int,
      changedByUserType: null == changedByUserType
          ? _value.changedByUserType
          : changedByUserType // ignore: cast_nullable_to_non_nullable
              as QuotationRole,
      previousEstimatedCost: freezed == previousEstimatedCost
          ? _value.previousEstimatedCost
          : previousEstimatedCost // ignore: cast_nullable_to_non_nullable
              as Money?,
      newEstimatedCost: freezed == newEstimatedCost
          ? _value.newEstimatedCost
          : newEstimatedCost // ignore: cast_nullable_to_non_nullable
              as Money?,
      previousAppointmentDate: freezed == previousAppointmentDate
          ? _value.previousAppointmentDate
          : previousAppointmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      newAppointmentDate: freezed == newAppointmentDate
          ? _value.newAppointmentDate
          : newAppointmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      previousAppointmentDuration: freezed == previousAppointmentDuration
          ? _value.previousAppointmentDuration
          : previousAppointmentDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      newAppointmentDuration: freezed == newAppointmentDuration
          ? _value.newAppointmentDuration
          : newAppointmentDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      appealedReason: freezed == appealedReason
          ? _value.appealedReason
          : appealedReason // ignore: cast_nullable_to_non_nullable
              as QuotationCustomerAppealReason?,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
      cancellationReason: freezed == cancellationReason
          ? _value.cancellationReason
          : cancellationReason // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalDetails: freezed == additionalDetails
          ? _value.additionalDetails
          : additionalDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdatedBy: freezed == lastUpdatedBy
          ? _value.lastUpdatedBy
          : lastUpdatedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      lastUpdatedByUserType: freezed == lastUpdatedByUserType
          ? _value.lastUpdatedByUserType
          : lastUpdatedByUserType // ignore: cast_nullable_to_non_nullable
              as QuotationUserType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuotationHistoryImpl implements _QuotationHistory {
  const _$QuotationHistoryImpl(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      this.quotation,
      required this.previousStatus,
      required this.newStatus,
      required this.changedAt,
      required this.changedBy,
      required this.changedByUserType,
      this.previousEstimatedCost,
      this.newEstimatedCost,
      this.previousAppointmentDate,
      this.newAppointmentDate,
      this.previousAppointmentDuration,
      this.newAppointmentDuration,
      this.appealedReason,
      this.rejectionReason,
      this.cancellationReason,
      this.additionalDetails,
      this.lastUpdatedBy,
      this.lastUpdatedByUserType});

  factory _$QuotationHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuotationHistoryImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final Quotation? quotation;
  @override
  final QuotationStatus previousStatus;
  @override
  final QuotationStatus newStatus;
  @override
  final DateTime changedAt;
  @override
  final int changedBy;
  @override
  final QuotationRole changedByUserType;
  @override
  final Money? previousEstimatedCost;
  @override
  final Money? newEstimatedCost;
  @override
  final DateTime? previousAppointmentDate;
  @override
  final DateTime? newAppointmentDate;
  @override
  final int? previousAppointmentDuration;
  @override
  final int? newAppointmentDuration;
  @override
  final QuotationCustomerAppealReason? appealedReason;
  @override
  final String? rejectionReason;
  @override
  final String? cancellationReason;
  @override
  final String? additionalDetails;
  @override
  final int? lastUpdatedBy;
  @override
  final QuotationUserType? lastUpdatedByUserType;

  @override
  String toString() {
    return 'QuotationHistory(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, quotation: $quotation, previousStatus: $previousStatus, newStatus: $newStatus, changedAt: $changedAt, changedBy: $changedBy, changedByUserType: $changedByUserType, previousEstimatedCost: $previousEstimatedCost, newEstimatedCost: $newEstimatedCost, previousAppointmentDate: $previousAppointmentDate, newAppointmentDate: $newAppointmentDate, previousAppointmentDuration: $previousAppointmentDuration, newAppointmentDuration: $newAppointmentDuration, appealedReason: $appealedReason, rejectionReason: $rejectionReason, cancellationReason: $cancellationReason, additionalDetails: $additionalDetails, lastUpdatedBy: $lastUpdatedBy, lastUpdatedByUserType: $lastUpdatedByUserType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuotationHistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.quotation, quotation) ||
                other.quotation == quotation) &&
            (identical(other.previousStatus, previousStatus) ||
                other.previousStatus == previousStatus) &&
            (identical(other.newStatus, newStatus) ||
                other.newStatus == newStatus) &&
            (identical(other.changedAt, changedAt) ||
                other.changedAt == changedAt) &&
            (identical(other.changedBy, changedBy) ||
                other.changedBy == changedBy) &&
            (identical(other.changedByUserType, changedByUserType) ||
                other.changedByUserType == changedByUserType) &&
            (identical(other.previousEstimatedCost, previousEstimatedCost) ||
                other.previousEstimatedCost == previousEstimatedCost) &&
            (identical(other.newEstimatedCost, newEstimatedCost) ||
                other.newEstimatedCost == newEstimatedCost) &&
            (identical(
                    other.previousAppointmentDate, previousAppointmentDate) ||
                other.previousAppointmentDate == previousAppointmentDate) &&
            (identical(other.newAppointmentDate, newAppointmentDate) ||
                other.newAppointmentDate == newAppointmentDate) &&
            (identical(other.previousAppointmentDuration,
                    previousAppointmentDuration) ||
                other.previousAppointmentDuration ==
                    previousAppointmentDuration) &&
            (identical(other.newAppointmentDuration, newAppointmentDuration) ||
                other.newAppointmentDuration == newAppointmentDuration) &&
            (identical(other.appealedReason, appealedReason) ||
                other.appealedReason == appealedReason) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            (identical(other.cancellationReason, cancellationReason) ||
                other.cancellationReason == cancellationReason) &&
            (identical(other.additionalDetails, additionalDetails) ||
                other.additionalDetails == additionalDetails) &&
            (identical(other.lastUpdatedBy, lastUpdatedBy) ||
                other.lastUpdatedBy == lastUpdatedBy) &&
            (identical(other.lastUpdatedByUserType, lastUpdatedByUserType) ||
                other.lastUpdatedByUserType == lastUpdatedByUserType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        createdAt,
        updatedAt,
        quotation,
        previousStatus,
        newStatus,
        changedAt,
        changedBy,
        changedByUserType,
        previousEstimatedCost,
        newEstimatedCost,
        previousAppointmentDate,
        newAppointmentDate,
        previousAppointmentDuration,
        newAppointmentDuration,
        appealedReason,
        rejectionReason,
        cancellationReason,
        additionalDetails,
        lastUpdatedBy,
        lastUpdatedByUserType
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuotationHistoryImplCopyWith<_$QuotationHistoryImpl> get copyWith =>
      __$$QuotationHistoryImplCopyWithImpl<_$QuotationHistoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuotationHistoryImplToJson(
      this,
    );
  }
}

abstract class _QuotationHistory implements QuotationHistory {
  const factory _QuotationHistory(
      {required final int id,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final Quotation? quotation,
      required final QuotationStatus previousStatus,
      required final QuotationStatus newStatus,
      required final DateTime changedAt,
      required final int changedBy,
      required final QuotationRole changedByUserType,
      final Money? previousEstimatedCost,
      final Money? newEstimatedCost,
      final DateTime? previousAppointmentDate,
      final DateTime? newAppointmentDate,
      final int? previousAppointmentDuration,
      final int? newAppointmentDuration,
      final QuotationCustomerAppealReason? appealedReason,
      final String? rejectionReason,
      final String? cancellationReason,
      final String? additionalDetails,
      final int? lastUpdatedBy,
      final QuotationUserType? lastUpdatedByUserType}) = _$QuotationHistoryImpl;

  factory _QuotationHistory.fromJson(Map<String, dynamic> json) =
      _$QuotationHistoryImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  Quotation? get quotation;
  @override
  QuotationStatus get previousStatus;
  @override
  QuotationStatus get newStatus;
  @override
  DateTime get changedAt;
  @override
  int get changedBy;
  @override
  QuotationRole get changedByUserType;
  @override
  Money? get previousEstimatedCost;
  @override
  Money? get newEstimatedCost;
  @override
  DateTime? get previousAppointmentDate;
  @override
  DateTime? get newAppointmentDate;
  @override
  int? get previousAppointmentDuration;
  @override
  int? get newAppointmentDuration;
  @override
  QuotationCustomerAppealReason? get appealedReason;
  @override
  String? get rejectionReason;
  @override
  String? get cancellationReason;
  @override
  String? get additionalDetails;
  @override
  int? get lastUpdatedBy;
  @override
  QuotationUserType? get lastUpdatedByUserType;
  @override
  @JsonKey(ignore: true)
  _$$QuotationHistoryImplCopyWith<_$QuotationHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Money _$MoneyFromJson(Map<String, dynamic> json) {
  return _Money.fromJson(json);
}

/// @nodoc
mixin _$Money {
  int get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  int get scale => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoneyCopyWith<Money> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoneyCopyWith<$Res> {
  factory $MoneyCopyWith(Money value, $Res Function(Money) then) =
      _$MoneyCopyWithImpl<$Res, Money>;
  @useResult
  $Res call({int amount, String currency, int scale});
}

/// @nodoc
class _$MoneyCopyWithImpl<$Res, $Val extends Money>
    implements $MoneyCopyWith<$Res> {
  _$MoneyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currency = null,
    Object? scale = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoneyImplCopyWith<$Res> implements $MoneyCopyWith<$Res> {
  factory _$$MoneyImplCopyWith(
          _$MoneyImpl value, $Res Function(_$MoneyImpl) then) =
      __$$MoneyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int amount, String currency, int scale});
}

/// @nodoc
class __$$MoneyImplCopyWithImpl<$Res>
    extends _$MoneyCopyWithImpl<$Res, _$MoneyImpl>
    implements _$$MoneyImplCopyWith<$Res> {
  __$$MoneyImplCopyWithImpl(
      _$MoneyImpl _value, $Res Function(_$MoneyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? currency = null,
    Object? scale = null,
  }) {
    return _then(_$MoneyImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoneyImpl extends _Money {
  const _$MoneyImpl(
      {required this.amount, this.currency = 'USD', this.scale = 2})
      : super._();

  factory _$MoneyImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoneyImplFromJson(json);

  @override
  final int amount;
  @override
  @JsonKey()
  final String currency;
  @override
  @JsonKey()
  final int scale;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoneyImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.scale, scale) || other.scale == scale));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currency, scale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoneyImplCopyWith<_$MoneyImpl> get copyWith =>
      __$$MoneyImplCopyWithImpl<_$MoneyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoneyImplToJson(
      this,
    );
  }
}

abstract class _Money extends Money {
  const factory _Money(
      {required final int amount,
      final String currency,
      final int scale}) = _$MoneyImpl;
  const _Money._() : super._();

  factory _Money.fromJson(Map<String, dynamic> json) = _$MoneyImpl.fromJson;

  @override
  int get amount;
  @override
  String get currency;
  @override
  int get scale;
  @override
  @JsonKey(ignore: true)
  _$$MoneyImplCopyWith<_$MoneyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MultimediasMetadata _$MultimediasMetadataFromJson(Map<String, dynamic> json) {
  return _MultimediasMetadata.fromJson(json);
}

/// @nodoc
mixin _$MultimediasMetadata {
  List<MultimediaMetadata> get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultimediasMetadataCopyWith<MultimediasMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultimediasMetadataCopyWith<$Res> {
  factory $MultimediasMetadataCopyWith(
          MultimediasMetadata value, $Res Function(MultimediasMetadata) then) =
      _$MultimediasMetadataCopyWithImpl<$Res, MultimediasMetadata>;
  @useResult
  $Res call({List<MultimediaMetadata> metadata});
}

/// @nodoc
class _$MultimediasMetadataCopyWithImpl<$Res, $Val extends MultimediasMetadata>
    implements $MultimediasMetadataCopyWith<$Res> {
  _$MultimediasMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as List<MultimediaMetadata>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MultimediasMetadataImplCopyWith<$Res>
    implements $MultimediasMetadataCopyWith<$Res> {
  factory _$$MultimediasMetadataImplCopyWith(_$MultimediasMetadataImpl value,
          $Res Function(_$MultimediasMetadataImpl) then) =
      __$$MultimediasMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MultimediaMetadata> metadata});
}

/// @nodoc
class __$$MultimediasMetadataImplCopyWithImpl<$Res>
    extends _$MultimediasMetadataCopyWithImpl<$Res, _$MultimediasMetadataImpl>
    implements _$$MultimediasMetadataImplCopyWith<$Res> {
  __$$MultimediasMetadataImplCopyWithImpl(_$MultimediasMetadataImpl _value,
      $Res Function(_$MultimediasMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
  }) {
    return _then(_$MultimediasMetadataImpl(
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as List<MultimediaMetadata>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MultimediasMetadataImpl implements _MultimediasMetadata {
  const _$MultimediasMetadataImpl(
      {required final List<MultimediaMetadata> metadata})
      : _metadata = metadata;

  factory _$MultimediasMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MultimediasMetadataImplFromJson(json);

  final List<MultimediaMetadata> _metadata;
  @override
  List<MultimediaMetadata> get metadata {
    if (_metadata is EqualUnmodifiableListView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_metadata);
  }

  @override
  String toString() {
    return 'MultimediasMetadata(metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultimediasMetadataImpl &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultimediasMetadataImplCopyWith<_$MultimediasMetadataImpl> get copyWith =>
      __$$MultimediasMetadataImplCopyWithImpl<_$MultimediasMetadataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MultimediasMetadataImplToJson(
      this,
    );
  }
}

abstract class _MultimediasMetadata implements MultimediasMetadata {
  const factory _MultimediasMetadata(
          {required final List<MultimediaMetadata> metadata}) =
      _$MultimediasMetadataImpl;

  factory _MultimediasMetadata.fromJson(Map<String, dynamic> json) =
      _$MultimediasMetadataImpl.fromJson;

  @override
  List<MultimediaMetadata> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$MultimediasMetadataImplCopyWith<_$MultimediasMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MultimediaMetadata _$MultimediaMetadataFromJson(Map<String, dynamic> json) {
  return _MultimediaMetadata.fromJson(json);
}

/// @nodoc
mixin _$MultimediaMetadata {
  String get url => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get encoding => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  String get fieldname => throw _privateConstructorUsedError;
  String get originalname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultimediaMetadataCopyWith<MultimediaMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultimediaMetadataCopyWith<$Res> {
  factory $MultimediaMetadataCopyWith(
          MultimediaMetadata value, $Res Function(MultimediaMetadata) then) =
      _$MultimediaMetadataCopyWithImpl<$Res, MultimediaMetadata>;
  @useResult
  $Res call(
      {String url,
      int size,
      String type,
      String encoding,
      int position,
      String fieldname,
      String originalname});
}

/// @nodoc
class _$MultimediaMetadataCopyWithImpl<$Res, $Val extends MultimediaMetadata>
    implements $MultimediaMetadataCopyWith<$Res> {
  _$MultimediaMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? size = null,
    Object? type = null,
    Object? encoding = null,
    Object? position = null,
    Object? fieldname = null,
    Object? originalname = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      encoding: null == encoding
          ? _value.encoding
          : encoding // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      fieldname: null == fieldname
          ? _value.fieldname
          : fieldname // ignore: cast_nullable_to_non_nullable
              as String,
      originalname: null == originalname
          ? _value.originalname
          : originalname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MultimediaMetadataImplCopyWith<$Res>
    implements $MultimediaMetadataCopyWith<$Res> {
  factory _$$MultimediaMetadataImplCopyWith(_$MultimediaMetadataImpl value,
          $Res Function(_$MultimediaMetadataImpl) then) =
      __$$MultimediaMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      int size,
      String type,
      String encoding,
      int position,
      String fieldname,
      String originalname});
}

/// @nodoc
class __$$MultimediaMetadataImplCopyWithImpl<$Res>
    extends _$MultimediaMetadataCopyWithImpl<$Res, _$MultimediaMetadataImpl>
    implements _$$MultimediaMetadataImplCopyWith<$Res> {
  __$$MultimediaMetadataImplCopyWithImpl(_$MultimediaMetadataImpl _value,
      $Res Function(_$MultimediaMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? size = null,
    Object? type = null,
    Object? encoding = null,
    Object? position = null,
    Object? fieldname = null,
    Object? originalname = null,
  }) {
    return _then(_$MultimediaMetadataImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      encoding: null == encoding
          ? _value.encoding
          : encoding // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      fieldname: null == fieldname
          ? _value.fieldname
          : fieldname // ignore: cast_nullable_to_non_nullable
              as String,
      originalname: null == originalname
          ? _value.originalname
          : originalname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MultimediaMetadataImpl implements _MultimediaMetadata {
  const _$MultimediaMetadataImpl(
      {required this.url,
      required this.size,
      required this.type,
      required this.encoding,
      required this.position,
      required this.fieldname,
      required this.originalname});

  factory _$MultimediaMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MultimediaMetadataImplFromJson(json);

  @override
  final String url;
  @override
  final int size;
  @override
  final String type;
  @override
  final String encoding;
  @override
  final int position;
  @override
  final String fieldname;
  @override
  final String originalname;

  @override
  String toString() {
    return 'MultimediaMetadata(url: $url, size: $size, type: $type, encoding: $encoding, position: $position, fieldname: $fieldname, originalname: $originalname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultimediaMetadataImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.encoding, encoding) ||
                other.encoding == encoding) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.fieldname, fieldname) ||
                other.fieldname == fieldname) &&
            (identical(other.originalname, originalname) ||
                other.originalname == originalname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, size, type, encoding,
      position, fieldname, originalname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultimediaMetadataImplCopyWith<_$MultimediaMetadataImpl> get copyWith =>
      __$$MultimediaMetadataImplCopyWithImpl<_$MultimediaMetadataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MultimediaMetadataImplToJson(
      this,
    );
  }
}

abstract class _MultimediaMetadata implements MultimediaMetadata {
  const factory _MultimediaMetadata(
      {required final String url,
      required final int size,
      required final String type,
      required final String encoding,
      required final int position,
      required final String fieldname,
      required final String originalname}) = _$MultimediaMetadataImpl;

  factory _MultimediaMetadata.fromJson(Map<String, dynamic> json) =
      _$MultimediaMetadataImpl.fromJson;

  @override
  String get url;
  @override
  int get size;
  @override
  String get type;
  @override
  String get encoding;
  @override
  int get position;
  @override
  String get fieldname;
  @override
  String get originalname;
  @override
  @JsonKey(ignore: true)
  _$$MultimediaMetadataImplCopyWith<_$MultimediaMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
