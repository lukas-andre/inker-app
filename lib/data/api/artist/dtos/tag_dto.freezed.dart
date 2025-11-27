// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tag_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TagSuggestionResponseDto _$TagSuggestionResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _TagSuggestionResponseDto.fromJson(json);
}

/// @nodoc
mixin _$TagSuggestionResponseDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagSuggestionResponseDtoCopyWith<TagSuggestionResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagSuggestionResponseDtoCopyWith<$Res> {
  factory $TagSuggestionResponseDtoCopyWith(TagSuggestionResponseDto value,
          $Res Function(TagSuggestionResponseDto) then) =
      _$TagSuggestionResponseDtoCopyWithImpl<$Res, TagSuggestionResponseDto>;
  @useResult
  $Res call({String id, String name, int? count});
}

/// @nodoc
class _$TagSuggestionResponseDtoCopyWithImpl<$Res,
        $Val extends TagSuggestionResponseDto>
    implements $TagSuggestionResponseDtoCopyWith<$Res> {
  _$TagSuggestionResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TagSuggestionResponseDtoImplCopyWith<$Res>
    implements $TagSuggestionResponseDtoCopyWith<$Res> {
  factory _$$TagSuggestionResponseDtoImplCopyWith(
          _$TagSuggestionResponseDtoImpl value,
          $Res Function(_$TagSuggestionResponseDtoImpl) then) =
      __$$TagSuggestionResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, int? count});
}

/// @nodoc
class __$$TagSuggestionResponseDtoImplCopyWithImpl<$Res>
    extends _$TagSuggestionResponseDtoCopyWithImpl<$Res,
        _$TagSuggestionResponseDtoImpl>
    implements _$$TagSuggestionResponseDtoImplCopyWith<$Res> {
  __$$TagSuggestionResponseDtoImplCopyWithImpl(
      _$TagSuggestionResponseDtoImpl _value,
      $Res Function(_$TagSuggestionResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? count = freezed,
  }) {
    return _then(_$TagSuggestionResponseDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TagSuggestionResponseDtoImpl implements _TagSuggestionResponseDto {
  const _$TagSuggestionResponseDtoImpl(
      {required this.id, required this.name, this.count});

  factory _$TagSuggestionResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagSuggestionResponseDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int? count;

  @override
  String toString() {
    return 'TagSuggestionResponseDto(id: $id, name: $name, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagSuggestionResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagSuggestionResponseDtoImplCopyWith<_$TagSuggestionResponseDtoImpl>
      get copyWith => __$$TagSuggestionResponseDtoImplCopyWithImpl<
          _$TagSuggestionResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagSuggestionResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _TagSuggestionResponseDto implements TagSuggestionResponseDto {
  const factory _TagSuggestionResponseDto(
      {required final String id,
      required final String name,
      final int? count}) = _$TagSuggestionResponseDtoImpl;

  factory _TagSuggestionResponseDto.fromJson(Map<String, dynamic> json) =
      _$TagSuggestionResponseDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$TagSuggestionResponseDtoImplCopyWith<_$TagSuggestionResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TagSuggestionQueryDto _$TagSuggestionQueryDtoFromJson(
    Map<String, dynamic> json) {
  return _TagSuggestionQueryDto.fromJson(json);
}

/// @nodoc
mixin _$TagSuggestionQueryDto {
  String get prefix => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagSuggestionQueryDtoCopyWith<TagSuggestionQueryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagSuggestionQueryDtoCopyWith<$Res> {
  factory $TagSuggestionQueryDtoCopyWith(TagSuggestionQueryDto value,
          $Res Function(TagSuggestionQueryDto) then) =
      _$TagSuggestionQueryDtoCopyWithImpl<$Res, TagSuggestionQueryDto>;
  @useResult
  $Res call({String prefix, int limit});
}

/// @nodoc
class _$TagSuggestionQueryDtoCopyWithImpl<$Res,
        $Val extends TagSuggestionQueryDto>
    implements $TagSuggestionQueryDtoCopyWith<$Res> {
  _$TagSuggestionQueryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefix = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      prefix: null == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TagSuggestionQueryDtoImplCopyWith<$Res>
    implements $TagSuggestionQueryDtoCopyWith<$Res> {
  factory _$$TagSuggestionQueryDtoImplCopyWith(
          _$TagSuggestionQueryDtoImpl value,
          $Res Function(_$TagSuggestionQueryDtoImpl) then) =
      __$$TagSuggestionQueryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String prefix, int limit});
}

/// @nodoc
class __$$TagSuggestionQueryDtoImplCopyWithImpl<$Res>
    extends _$TagSuggestionQueryDtoCopyWithImpl<$Res,
        _$TagSuggestionQueryDtoImpl>
    implements _$$TagSuggestionQueryDtoImplCopyWith<$Res> {
  __$$TagSuggestionQueryDtoImplCopyWithImpl(_$TagSuggestionQueryDtoImpl _value,
      $Res Function(_$TagSuggestionQueryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefix = null,
    Object? limit = null,
  }) {
    return _then(_$TagSuggestionQueryDtoImpl(
      prefix: null == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TagSuggestionQueryDtoImpl implements _TagSuggestionQueryDto {
  const _$TagSuggestionQueryDtoImpl({required this.prefix, this.limit = 10});

  factory _$TagSuggestionQueryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagSuggestionQueryDtoImplFromJson(json);

  @override
  final String prefix;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'TagSuggestionQueryDto(prefix: $prefix, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagSuggestionQueryDtoImpl &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, prefix, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagSuggestionQueryDtoImplCopyWith<_$TagSuggestionQueryDtoImpl>
      get copyWith => __$$TagSuggestionQueryDtoImplCopyWithImpl<
          _$TagSuggestionQueryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagSuggestionQueryDtoImplToJson(
      this,
    );
  }
}

abstract class _TagSuggestionQueryDto implements TagSuggestionQueryDto {
  const factory _TagSuggestionQueryDto(
      {required final String prefix,
      final int limit}) = _$TagSuggestionQueryDtoImpl;

  factory _TagSuggestionQueryDto.fromJson(Map<String, dynamic> json) =
      _$TagSuggestionQueryDtoImpl.fromJson;

  @override
  String get prefix;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$TagSuggestionQueryDtoImplCopyWith<_$TagSuggestionQueryDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TagDto _$TagDtoFromJson(Map<String, dynamic> json) {
  return _TagDto.fromJson(json);
}

/// @nodoc
mixin _$TagDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagDtoCopyWith<TagDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagDtoCopyWith<$Res> {
  factory $TagDtoCopyWith(TagDto value, $Res Function(TagDto) then) =
      _$TagDtoCopyWithImpl<$Res, TagDto>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? createdBy,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$TagDtoCopyWithImpl<$Res, $Val extends TagDto>
    implements $TagDtoCopyWith<$Res> {
  _$TagDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdBy = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TagDtoImplCopyWith<$Res> implements $TagDtoCopyWith<$Res> {
  factory _$$TagDtoImplCopyWith(
          _$TagDtoImpl value, $Res Function(_$TagDtoImpl) then) =
      __$$TagDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? createdBy,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$TagDtoImplCopyWithImpl<$Res>
    extends _$TagDtoCopyWithImpl<$Res, _$TagDtoImpl>
    implements _$$TagDtoImplCopyWith<$Res> {
  __$$TagDtoImplCopyWithImpl(
      _$TagDtoImpl _value, $Res Function(_$TagDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdBy = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$TagDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TagDtoImpl implements _TagDto {
  const _$TagDtoImpl(
      {required this.id,
      required this.name,
      this.createdBy,
      required this.createdAt,
      required this.updatedAt});

  factory _$TagDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? createdBy;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'TagDto(id: $id, name: $name, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, createdBy, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagDtoImplCopyWith<_$TagDtoImpl> get copyWith =>
      __$$TagDtoImplCopyWithImpl<_$TagDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagDtoImplToJson(
      this,
    );
  }
}

abstract class _TagDto implements TagDto {
  const factory _TagDto(
      {required final String id,
      required final String name,
      final String? createdBy,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$TagDtoImpl;

  factory _TagDto.fromJson(Map<String, dynamic> json) = _$TagDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get createdBy;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$TagDtoImplCopyWith<_$TagDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateTagDto _$CreateTagDtoFromJson(Map<String, dynamic> json) {
  return _CreateTagDto.fromJson(json);
}

/// @nodoc
mixin _$CreateTagDto {
  String get name => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTagDtoCopyWith<CreateTagDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTagDtoCopyWith<$Res> {
  factory $CreateTagDtoCopyWith(
          CreateTagDto value, $Res Function(CreateTagDto) then) =
      _$CreateTagDtoCopyWithImpl<$Res, CreateTagDto>;
  @useResult
  $Res call({String name, String? createdBy});
}

/// @nodoc
class _$CreateTagDtoCopyWithImpl<$Res, $Val extends CreateTagDto>
    implements $CreateTagDtoCopyWith<$Res> {
  _$CreateTagDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? createdBy = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTagDtoImplCopyWith<$Res>
    implements $CreateTagDtoCopyWith<$Res> {
  factory _$$CreateTagDtoImplCopyWith(
          _$CreateTagDtoImpl value, $Res Function(_$CreateTagDtoImpl) then) =
      __$$CreateTagDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? createdBy});
}

/// @nodoc
class __$$CreateTagDtoImplCopyWithImpl<$Res>
    extends _$CreateTagDtoCopyWithImpl<$Res, _$CreateTagDtoImpl>
    implements _$$CreateTagDtoImplCopyWith<$Res> {
  __$$CreateTagDtoImplCopyWithImpl(
      _$CreateTagDtoImpl _value, $Res Function(_$CreateTagDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? createdBy = freezed,
  }) {
    return _then(_$CreateTagDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTagDtoImpl implements _CreateTagDto {
  const _$CreateTagDtoImpl({required this.name, this.createdBy});

  factory _$CreateTagDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTagDtoImplFromJson(json);

  @override
  final String name;
  @override
  final String? createdBy;

  @override
  String toString() {
    return 'CreateTagDto(name: $name, createdBy: $createdBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTagDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, createdBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTagDtoImplCopyWith<_$CreateTagDtoImpl> get copyWith =>
      __$$CreateTagDtoImplCopyWithImpl<_$CreateTagDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTagDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateTagDto implements CreateTagDto {
  const factory _CreateTagDto(
      {required final String name,
      final String? createdBy}) = _$CreateTagDtoImpl;

  factory _CreateTagDto.fromJson(Map<String, dynamic> json) =
      _$CreateTagDtoImpl.fromJson;

  @override
  String get name;
  @override
  String? get createdBy;
  @override
  @JsonKey(ignore: true)
  _$$CreateTagDtoImplCopyWith<_$CreateTagDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
