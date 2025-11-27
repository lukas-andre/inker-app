// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateWorkDto _$CreateWorkDtoFromJson(Map<String, dynamic> json) {
  return _CreateWorkDto.fromJson(json);
}

/// @nodoc
mixin _$CreateWorkDto {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  bool get isFeatured => throw _privateConstructorUsedError;
  int get orderPosition => throw _privateConstructorUsedError;
  bool get isHidden => throw _privateConstructorUsedError;
  List<String>? get tagIds => throw _privateConstructorUsedError;
  WorkSource get source => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateWorkDtoCopyWith<CreateWorkDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateWorkDtoCopyWith<$Res> {
  factory $CreateWorkDtoCopyWith(
          CreateWorkDto value, $Res Function(CreateWorkDto) then) =
      _$CreateWorkDtoCopyWithImpl<$Res, CreateWorkDto>;
  @useResult
  $Res call(
      {String title,
      String? description,
      String? imageUrl,
      String? thumbnailUrl,
      bool isFeatured,
      int orderPosition,
      bool isHidden,
      List<String>? tagIds,
      WorkSource source});
}

/// @nodoc
class _$CreateWorkDtoCopyWithImpl<$Res, $Val extends CreateWorkDto>
    implements $CreateWorkDtoCopyWith<$Res> {
  _$CreateWorkDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? isFeatured = null,
    Object? orderPosition = null,
    Object? isHidden = null,
    Object? tagIds = freezed,
    Object? source = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      orderPosition: null == orderPosition
          ? _value.orderPosition
          : orderPosition // ignore: cast_nullable_to_non_nullable
              as int,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      tagIds: freezed == tagIds
          ? _value.tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as WorkSource,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateWorkDtoImplCopyWith<$Res>
    implements $CreateWorkDtoCopyWith<$Res> {
  factory _$$CreateWorkDtoImplCopyWith(
          _$CreateWorkDtoImpl value, $Res Function(_$CreateWorkDtoImpl) then) =
      __$$CreateWorkDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String? description,
      String? imageUrl,
      String? thumbnailUrl,
      bool isFeatured,
      int orderPosition,
      bool isHidden,
      List<String>? tagIds,
      WorkSource source});
}

/// @nodoc
class __$$CreateWorkDtoImplCopyWithImpl<$Res>
    extends _$CreateWorkDtoCopyWithImpl<$Res, _$CreateWorkDtoImpl>
    implements _$$CreateWorkDtoImplCopyWith<$Res> {
  __$$CreateWorkDtoImplCopyWithImpl(
      _$CreateWorkDtoImpl _value, $Res Function(_$CreateWorkDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? isFeatured = null,
    Object? orderPosition = null,
    Object? isHidden = null,
    Object? tagIds = freezed,
    Object? source = null,
  }) {
    return _then(_$CreateWorkDtoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      orderPosition: null == orderPosition
          ? _value.orderPosition
          : orderPosition // ignore: cast_nullable_to_non_nullable
              as int,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      tagIds: freezed == tagIds
          ? _value._tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as WorkSource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateWorkDtoImpl implements _CreateWorkDto {
  const _$CreateWorkDtoImpl(
      {required this.title,
      this.description,
      this.imageUrl,
      this.thumbnailUrl,
      this.isFeatured = false,
      this.orderPosition = 0,
      this.isHidden = false,
      final List<String>? tagIds,
      this.source = WorkSource.app})
      : _tagIds = tagIds;

  factory _$CreateWorkDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateWorkDtoImplFromJson(json);

  @override
  final String title;
  @override
  final String? description;
  @override
  final String? imageUrl;
  @override
  final String? thumbnailUrl;
  @override
  @JsonKey()
  final bool isFeatured;
  @override
  @JsonKey()
  final int orderPosition;
  @override
  @JsonKey()
  final bool isHidden;
  final List<String>? _tagIds;
  @override
  List<String>? get tagIds {
    final value = _tagIds;
    if (value == null) return null;
    if (_tagIds is EqualUnmodifiableListView) return _tagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final WorkSource source;

  @override
  String toString() {
    return 'CreateWorkDto(title: $title, description: $description, imageUrl: $imageUrl, thumbnailUrl: $thumbnailUrl, isFeatured: $isFeatured, orderPosition: $orderPosition, isHidden: $isHidden, tagIds: $tagIds, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateWorkDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            (identical(other.orderPosition, orderPosition) ||
                other.orderPosition == orderPosition) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      imageUrl,
      thumbnailUrl,
      isFeatured,
      orderPosition,
      isHidden,
      const DeepCollectionEquality().hash(_tagIds),
      source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateWorkDtoImplCopyWith<_$CreateWorkDtoImpl> get copyWith =>
      __$$CreateWorkDtoImplCopyWithImpl<_$CreateWorkDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateWorkDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateWorkDto implements CreateWorkDto {
  const factory _CreateWorkDto(
      {required final String title,
      final String? description,
      final String? imageUrl,
      final String? thumbnailUrl,
      final bool isFeatured,
      final int orderPosition,
      final bool isHidden,
      final List<String>? tagIds,
      final WorkSource source}) = _$CreateWorkDtoImpl;

  factory _CreateWorkDto.fromJson(Map<String, dynamic> json) =
      _$CreateWorkDtoImpl.fromJson;

  @override
  String get title;
  @override
  String? get description;
  @override
  String? get imageUrl;
  @override
  String? get thumbnailUrl;
  @override
  bool get isFeatured;
  @override
  int get orderPosition;
  @override
  bool get isHidden;
  @override
  List<String>? get tagIds;
  @override
  WorkSource get source;
  @override
  @JsonKey(ignore: true)
  _$$CreateWorkDtoImplCopyWith<_$CreateWorkDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateWorkDto _$UpdateWorkDtoFromJson(Map<String, dynamic> json) {
  return _UpdateWorkDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateWorkDto {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  bool? get isFeatured => throw _privateConstructorUsedError;
  int? get orderPosition => throw _privateConstructorUsedError;
  bool? get isHidden => throw _privateConstructorUsedError;
  List<String>? get tagIds => throw _privateConstructorUsedError;
  WorkSource? get source => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateWorkDtoCopyWith<UpdateWorkDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateWorkDtoCopyWith<$Res> {
  factory $UpdateWorkDtoCopyWith(
          UpdateWorkDto value, $Res Function(UpdateWorkDto) then) =
      _$UpdateWorkDtoCopyWithImpl<$Res, UpdateWorkDto>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? imageUrl,
      String? thumbnailUrl,
      bool? isFeatured,
      int? orderPosition,
      bool? isHidden,
      List<String>? tagIds,
      WorkSource? source});
}

/// @nodoc
class _$UpdateWorkDtoCopyWithImpl<$Res, $Val extends UpdateWorkDto>
    implements $UpdateWorkDtoCopyWith<$Res> {
  _$UpdateWorkDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? isFeatured = freezed,
    Object? orderPosition = freezed,
    Object? isHidden = freezed,
    Object? tagIds = freezed,
    Object? source = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isFeatured: freezed == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool?,
      orderPosition: freezed == orderPosition
          ? _value.orderPosition
          : orderPosition // ignore: cast_nullable_to_non_nullable
              as int?,
      isHidden: freezed == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      tagIds: freezed == tagIds
          ? _value.tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as WorkSource?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateWorkDtoImplCopyWith<$Res>
    implements $UpdateWorkDtoCopyWith<$Res> {
  factory _$$UpdateWorkDtoImplCopyWith(
          _$UpdateWorkDtoImpl value, $Res Function(_$UpdateWorkDtoImpl) then) =
      __$$UpdateWorkDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? imageUrl,
      String? thumbnailUrl,
      bool? isFeatured,
      int? orderPosition,
      bool? isHidden,
      List<String>? tagIds,
      WorkSource? source});
}

/// @nodoc
class __$$UpdateWorkDtoImplCopyWithImpl<$Res>
    extends _$UpdateWorkDtoCopyWithImpl<$Res, _$UpdateWorkDtoImpl>
    implements _$$UpdateWorkDtoImplCopyWith<$Res> {
  __$$UpdateWorkDtoImplCopyWithImpl(
      _$UpdateWorkDtoImpl _value, $Res Function(_$UpdateWorkDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? isFeatured = freezed,
    Object? orderPosition = freezed,
    Object? isHidden = freezed,
    Object? tagIds = freezed,
    Object? source = freezed,
  }) {
    return _then(_$UpdateWorkDtoImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isFeatured: freezed == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool?,
      orderPosition: freezed == orderPosition
          ? _value.orderPosition
          : orderPosition // ignore: cast_nullable_to_non_nullable
              as int?,
      isHidden: freezed == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      tagIds: freezed == tagIds
          ? _value._tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as WorkSource?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateWorkDtoImpl implements _UpdateWorkDto {
  const _$UpdateWorkDtoImpl(
      {this.title,
      this.description,
      this.imageUrl,
      this.thumbnailUrl,
      this.isFeatured,
      this.orderPosition,
      this.isHidden,
      final List<String>? tagIds,
      this.source})
      : _tagIds = tagIds;

  factory _$UpdateWorkDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateWorkDtoImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? imageUrl;
  @override
  final String? thumbnailUrl;
  @override
  final bool? isFeatured;
  @override
  final int? orderPosition;
  @override
  final bool? isHidden;
  final List<String>? _tagIds;
  @override
  List<String>? get tagIds {
    final value = _tagIds;
    if (value == null) return null;
    if (_tagIds is EqualUnmodifiableListView) return _tagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final WorkSource? source;

  @override
  String toString() {
    return 'UpdateWorkDto(title: $title, description: $description, imageUrl: $imageUrl, thumbnailUrl: $thumbnailUrl, isFeatured: $isFeatured, orderPosition: $orderPosition, isHidden: $isHidden, tagIds: $tagIds, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateWorkDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            (identical(other.orderPosition, orderPosition) ||
                other.orderPosition == orderPosition) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      imageUrl,
      thumbnailUrl,
      isFeatured,
      orderPosition,
      isHidden,
      const DeepCollectionEquality().hash(_tagIds),
      source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateWorkDtoImplCopyWith<_$UpdateWorkDtoImpl> get copyWith =>
      __$$UpdateWorkDtoImplCopyWithImpl<_$UpdateWorkDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateWorkDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateWorkDto implements UpdateWorkDto {
  const factory _UpdateWorkDto(
      {final String? title,
      final String? description,
      final String? imageUrl,
      final String? thumbnailUrl,
      final bool? isFeatured,
      final int? orderPosition,
      final bool? isHidden,
      final List<String>? tagIds,
      final WorkSource? source}) = _$UpdateWorkDtoImpl;

  factory _UpdateWorkDto.fromJson(Map<String, dynamic> json) =
      _$UpdateWorkDtoImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get imageUrl;
  @override
  String? get thumbnailUrl;
  @override
  bool? get isFeatured;
  @override
  int? get orderPosition;
  @override
  bool? get isHidden;
  @override
  List<String>? get tagIds;
  @override
  WorkSource? get source;
  @override
  @JsonKey(ignore: true)
  _$$UpdateWorkDtoImplCopyWith<_$UpdateWorkDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
