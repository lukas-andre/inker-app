// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_evidence.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkEvidence _$WorkEvidenceFromJson(Map<String, dynamic> json) {
  return _WorkEvidence.fromJson(json);
}

/// @nodoc
mixin _$WorkEvidence {
  int get count => throw _privateConstructorUsedError;
  List<WorkEvidenceMetadata> get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkEvidenceCopyWith<WorkEvidence> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkEvidenceCopyWith<$Res> {
  factory $WorkEvidenceCopyWith(
          WorkEvidence value, $Res Function(WorkEvidence) then) =
      _$WorkEvidenceCopyWithImpl<$Res, WorkEvidence>;
  @useResult
  $Res call({int count, List<WorkEvidenceMetadata> metadata});
}

/// @nodoc
class _$WorkEvidenceCopyWithImpl<$Res, $Val extends WorkEvidence>
    implements $WorkEvidenceCopyWith<$Res> {
  _$WorkEvidenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as List<WorkEvidenceMetadata>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkEvidenceImplCopyWith<$Res>
    implements $WorkEvidenceCopyWith<$Res> {
  factory _$$WorkEvidenceImplCopyWith(
          _$WorkEvidenceImpl value, $Res Function(_$WorkEvidenceImpl) then) =
      __$$WorkEvidenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, List<WorkEvidenceMetadata> metadata});
}

/// @nodoc
class __$$WorkEvidenceImplCopyWithImpl<$Res>
    extends _$WorkEvidenceCopyWithImpl<$Res, _$WorkEvidenceImpl>
    implements _$$WorkEvidenceImplCopyWith<$Res> {
  __$$WorkEvidenceImplCopyWithImpl(
      _$WorkEvidenceImpl _value, $Res Function(_$WorkEvidenceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? metadata = null,
  }) {
    return _then(_$WorkEvidenceImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as List<WorkEvidenceMetadata>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkEvidenceImpl implements _WorkEvidence {
  const _$WorkEvidenceImpl(
      {required this.count, required final List<WorkEvidenceMetadata> metadata})
      : _metadata = metadata;

  factory _$WorkEvidenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkEvidenceImplFromJson(json);

  @override
  final int count;
  final List<WorkEvidenceMetadata> _metadata;
  @override
  List<WorkEvidenceMetadata> get metadata {
    if (_metadata is EqualUnmodifiableListView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_metadata);
  }

  @override
  String toString() {
    return 'WorkEvidence(count: $count, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkEvidenceImpl &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkEvidenceImplCopyWith<_$WorkEvidenceImpl> get copyWith =>
      __$$WorkEvidenceImplCopyWithImpl<_$WorkEvidenceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkEvidenceImplToJson(
      this,
    );
  }
}

abstract class _WorkEvidence implements WorkEvidence {
  const factory _WorkEvidence(
      {required final int count,
      required final List<WorkEvidenceMetadata> metadata}) = _$WorkEvidenceImpl;

  factory _WorkEvidence.fromJson(Map<String, dynamic> json) =
      _$WorkEvidenceImpl.fromJson;

  @override
  int get count;
  @override
  List<WorkEvidenceMetadata> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$WorkEvidenceImplCopyWith<_$WorkEvidenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkEvidenceMetadata _$WorkEvidenceMetadataFromJson(Map<String, dynamic> json) {
  return _WorkEvidenceMetadata.fromJson(json);
}

/// @nodoc
mixin _$WorkEvidenceMetadata {
  String get url => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get encoding => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  String get fieldname => throw _privateConstructorUsedError;
  String get originalname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkEvidenceMetadataCopyWith<WorkEvidenceMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkEvidenceMetadataCopyWith<$Res> {
  factory $WorkEvidenceMetadataCopyWith(WorkEvidenceMetadata value,
          $Res Function(WorkEvidenceMetadata) then) =
      _$WorkEvidenceMetadataCopyWithImpl<$Res, WorkEvidenceMetadata>;
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
class _$WorkEvidenceMetadataCopyWithImpl<$Res,
        $Val extends WorkEvidenceMetadata>
    implements $WorkEvidenceMetadataCopyWith<$Res> {
  _$WorkEvidenceMetadataCopyWithImpl(this._value, this._then);

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
abstract class _$$WorkEvidenceMetadataImplCopyWith<$Res>
    implements $WorkEvidenceMetadataCopyWith<$Res> {
  factory _$$WorkEvidenceMetadataImplCopyWith(_$WorkEvidenceMetadataImpl value,
          $Res Function(_$WorkEvidenceMetadataImpl) then) =
      __$$WorkEvidenceMetadataImplCopyWithImpl<$Res>;
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
class __$$WorkEvidenceMetadataImplCopyWithImpl<$Res>
    extends _$WorkEvidenceMetadataCopyWithImpl<$Res, _$WorkEvidenceMetadataImpl>
    implements _$$WorkEvidenceMetadataImplCopyWith<$Res> {
  __$$WorkEvidenceMetadataImplCopyWithImpl(_$WorkEvidenceMetadataImpl _value,
      $Res Function(_$WorkEvidenceMetadataImpl) _then)
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
    return _then(_$WorkEvidenceMetadataImpl(
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
class _$WorkEvidenceMetadataImpl implements _WorkEvidenceMetadata {
  const _$WorkEvidenceMetadataImpl(
      {required this.url,
      required this.size,
      required this.type,
      required this.encoding,
      required this.position,
      required this.fieldname,
      required this.originalname});

  factory _$WorkEvidenceMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkEvidenceMetadataImplFromJson(json);

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
    return 'WorkEvidenceMetadata(url: $url, size: $size, type: $type, encoding: $encoding, position: $position, fieldname: $fieldname, originalname: $originalname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkEvidenceMetadataImpl &&
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
  _$$WorkEvidenceMetadataImplCopyWith<_$WorkEvidenceMetadataImpl>
      get copyWith =>
          __$$WorkEvidenceMetadataImplCopyWithImpl<_$WorkEvidenceMetadataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkEvidenceMetadataImplToJson(
      this,
    );
  }
}

abstract class _WorkEvidenceMetadata implements WorkEvidenceMetadata {
  const factory _WorkEvidenceMetadata(
      {required final String url,
      required final int size,
      required final String type,
      required final String encoding,
      required final int position,
      required final String fieldname,
      required final String originalname}) = _$WorkEvidenceMetadataImpl;

  factory _WorkEvidenceMetadata.fromJson(Map<String, dynamic> json) =
      _$WorkEvidenceMetadataImpl.fromJson;

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
  _$$WorkEvidenceMetadataImplCopyWith<_$WorkEvidenceMetadataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
