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
  int get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  int get customerId => throw _privateConstructorUsedError;
  int get artistId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  MultimediasMetadata? get referenceImages =>
      throw _privateConstructorUsedError;
  MultimediasMetadata? get proposedDesigns =>
      throw _privateConstructorUsedError;
  QuotationStatus get status => throw _privateConstructorUsedError;
  double? get estimatedCost => throw _privateConstructorUsedError;
  DateTime? get responseDate => throw _privateConstructorUsedError;
  DateTime? get appointmentDate => throw _privateConstructorUsedError;
  int? get appointmentDuration => throw _privateConstructorUsedError;
  String? get rejectedReason => throw _privateConstructorUsedError;
  AppealedReason? get appealedReason => throw _privateConstructorUsedError;
  DateTime? get appealedDate => throw _privateConstructorUsedError;
  CancelReason? get canceledReason => throw _privateConstructorUsedError;
  DateTime? get canceledDate => throw _privateConstructorUsedError;

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
      {int id,
      DateTime createdAt,
      DateTime updatedAt,
      int customerId,
      int artistId,
      String description,
      MultimediasMetadata? referenceImages,
      MultimediasMetadata? proposedDesigns,
      QuotationStatus status,
      double? estimatedCost,
      DateTime? responseDate,
      DateTime? appointmentDate,
      int? appointmentDuration,
      String? rejectedReason,
      AppealedReason? appealedReason,
      DateTime? appealedDate,
      CancelReason? canceledReason,
      DateTime? canceledDate});

  $MultimediasMetadataCopyWith<$Res>? get referenceImages;
  $MultimediasMetadataCopyWith<$Res>? get proposedDesigns;
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
    Object? rejectedReason = freezed,
    Object? appealedReason = freezed,
    Object? appealedDate = freezed,
    Object? canceledReason = freezed,
    Object? canceledDate = freezed,
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
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int,
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
              as double?,
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
      rejectedReason: freezed == rejectedReason
          ? _value.rejectedReason
          : rejectedReason // ignore: cast_nullable_to_non_nullable
              as String?,
      appealedReason: freezed == appealedReason
          ? _value.appealedReason
          : appealedReason // ignore: cast_nullable_to_non_nullable
              as AppealedReason?,
      appealedDate: freezed == appealedDate
          ? _value.appealedDate
          : appealedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      canceledReason: freezed == canceledReason
          ? _value.canceledReason
          : canceledReason // ignore: cast_nullable_to_non_nullable
              as CancelReason?,
      canceledDate: freezed == canceledDate
          ? _value.canceledDate
          : canceledDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      {int id,
      DateTime createdAt,
      DateTime updatedAt,
      int customerId,
      int artistId,
      String description,
      MultimediasMetadata? referenceImages,
      MultimediasMetadata? proposedDesigns,
      QuotationStatus status,
      double? estimatedCost,
      DateTime? responseDate,
      DateTime? appointmentDate,
      int? appointmentDuration,
      String? rejectedReason,
      AppealedReason? appealedReason,
      DateTime? appealedDate,
      CancelReason? canceledReason,
      DateTime? canceledDate});

  @override
  $MultimediasMetadataCopyWith<$Res>? get referenceImages;
  @override
  $MultimediasMetadataCopyWith<$Res>? get proposedDesigns;
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
    Object? rejectedReason = freezed,
    Object? appealedReason = freezed,
    Object? appealedDate = freezed,
    Object? canceledReason = freezed,
    Object? canceledDate = freezed,
  }) {
    return _then(_$QuotationImpl(
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
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as int,
      artistId: null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as int,
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
              as double?,
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
      rejectedReason: freezed == rejectedReason
          ? _value.rejectedReason
          : rejectedReason // ignore: cast_nullable_to_non_nullable
              as String?,
      appealedReason: freezed == appealedReason
          ? _value.appealedReason
          : appealedReason // ignore: cast_nullable_to_non_nullable
              as AppealedReason?,
      appealedDate: freezed == appealedDate
          ? _value.appealedDate
          : appealedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      canceledReason: freezed == canceledReason
          ? _value.canceledReason
          : canceledReason // ignore: cast_nullable_to_non_nullable
              as CancelReason?,
      canceledDate: freezed == canceledDate
          ? _value.canceledDate
          : canceledDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      this.rejectedReason,
      this.appealedReason,
      this.appealedDate,
      this.canceledReason,
      this.canceledDate});

  factory _$QuotationImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuotationImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final int customerId;
  @override
  final int artistId;
  @override
  final String description;
  @override
  final MultimediasMetadata? referenceImages;
  @override
  final MultimediasMetadata? proposedDesigns;
  @override
  final QuotationStatus status;
  @override
  final double? estimatedCost;
  @override
  final DateTime? responseDate;
  @override
  final DateTime? appointmentDate;
  @override
  final int? appointmentDuration;
  @override
  final String? rejectedReason;
  @override
  final AppealedReason? appealedReason;
  @override
  final DateTime? appealedDate;
  @override
  final CancelReason? canceledReason;
  @override
  final DateTime? canceledDate;

  @override
  String toString() {
    return 'Quotation(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, customerId: $customerId, artistId: $artistId, description: $description, referenceImages: $referenceImages, proposedDesigns: $proposedDesigns, status: $status, estimatedCost: $estimatedCost, responseDate: $responseDate, appointmentDate: $appointmentDate, appointmentDuration: $appointmentDuration, rejectedReason: $rejectedReason, appealedReason: $appealedReason, appealedDate: $appealedDate, canceledReason: $canceledReason, canceledDate: $canceledDate)';
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
            (identical(other.rejectedReason, rejectedReason) ||
                other.rejectedReason == rejectedReason) &&
            (identical(other.appealedReason, appealedReason) ||
                other.appealedReason == appealedReason) &&
            (identical(other.appealedDate, appealedDate) ||
                other.appealedDate == appealedDate) &&
            (identical(other.canceledReason, canceledReason) ||
                other.canceledReason == canceledReason) &&
            (identical(other.canceledDate, canceledDate) ||
                other.canceledDate == canceledDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
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
      rejectedReason,
      appealedReason,
      appealedDate,
      canceledReason,
      canceledDate);

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
      {required final int id,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final int customerId,
      required final int artistId,
      required final String description,
      final MultimediasMetadata? referenceImages,
      final MultimediasMetadata? proposedDesigns,
      required final QuotationStatus status,
      final double? estimatedCost,
      final DateTime? responseDate,
      final DateTime? appointmentDate,
      final int? appointmentDuration,
      final String? rejectedReason,
      final AppealedReason? appealedReason,
      final DateTime? appealedDate,
      final CancelReason? canceledReason,
      final DateTime? canceledDate}) = _$QuotationImpl;

  factory _Quotation.fromJson(Map<String, dynamic> json) =
      _$QuotationImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  int get customerId;
  @override
  int get artistId;
  @override
  String get description;
  @override
  MultimediasMetadata? get referenceImages;
  @override
  MultimediasMetadata? get proposedDesigns;
  @override
  QuotationStatus get status;
  @override
  double? get estimatedCost;
  @override
  DateTime? get responseDate;
  @override
  DateTime? get appointmentDate;
  @override
  int? get appointmentDuration;
  @override
  String? get rejectedReason;
  @override
  AppealedReason? get appealedReason;
  @override
  DateTime? get appealedDate;
  @override
  CancelReason? get canceledReason;
  @override
  DateTime? get canceledDate;
  @override
  @JsonKey(ignore: true)
  _$$QuotationImplCopyWith<_$QuotationImpl> get copyWith =>
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
