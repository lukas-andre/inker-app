// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stencil_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateStencilDto _$CreateStencilDtoFromJson(Map<String, dynamic> json) {
  return _CreateStencilDto.fromJson(json);
}

/// @nodoc
mixin _$CreateStencilDto {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  bool get isFeatured => throw _privateConstructorUsedError;
  int get orderPosition => throw _privateConstructorUsedError;
  bool get isHidden => throw _privateConstructorUsedError;
  List<int>? get tagIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateStencilDtoCopyWith<CreateStencilDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateStencilDtoCopyWith<$Res> {
  factory $CreateStencilDtoCopyWith(
          CreateStencilDto value, $Res Function(CreateStencilDto) then) =
      _$CreateStencilDtoCopyWithImpl<$Res, CreateStencilDto>;
  @useResult
  $Res call(
      {String title,
      String? description,
      String? imageUrl,
      String? thumbnailUrl,
      bool isFeatured,
      int orderPosition,
      bool isHidden,
      List<int>? tagIds});
}

/// @nodoc
class _$CreateStencilDtoCopyWithImpl<$Res, $Val extends CreateStencilDto>
    implements $CreateStencilDtoCopyWith<$Res> {
  _$CreateStencilDtoCopyWithImpl(this._value, this._then);

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
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateStencilDtoImplCopyWith<$Res>
    implements $CreateStencilDtoCopyWith<$Res> {
  factory _$$CreateStencilDtoImplCopyWith(_$CreateStencilDtoImpl value,
          $Res Function(_$CreateStencilDtoImpl) then) =
      __$$CreateStencilDtoImplCopyWithImpl<$Res>;
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
      List<int>? tagIds});
}

/// @nodoc
class __$$CreateStencilDtoImplCopyWithImpl<$Res>
    extends _$CreateStencilDtoCopyWithImpl<$Res, _$CreateStencilDtoImpl>
    implements _$$CreateStencilDtoImplCopyWith<$Res> {
  __$$CreateStencilDtoImplCopyWithImpl(_$CreateStencilDtoImpl _value,
      $Res Function(_$CreateStencilDtoImpl) _then)
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
  }) {
    return _then(_$CreateStencilDtoImpl(
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
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateStencilDtoImpl implements _CreateStencilDto {
  const _$CreateStencilDtoImpl(
      {required this.title,
      this.description,
      this.imageUrl,
      this.thumbnailUrl,
      this.isFeatured = false,
      this.orderPosition = 0,
      this.isHidden = false,
      final List<int>? tagIds})
      : _tagIds = tagIds;

  factory _$CreateStencilDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateStencilDtoImplFromJson(json);

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
  final List<int>? _tagIds;
  @override
  List<int>? get tagIds {
    final value = _tagIds;
    if (value == null) return null;
    if (_tagIds is EqualUnmodifiableListView) return _tagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreateStencilDto(title: $title, description: $description, imageUrl: $imageUrl, thumbnailUrl: $thumbnailUrl, isFeatured: $isFeatured, orderPosition: $orderPosition, isHidden: $isHidden, tagIds: $tagIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateStencilDtoImpl &&
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
            const DeepCollectionEquality().equals(other._tagIds, _tagIds));
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
      const DeepCollectionEquality().hash(_tagIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateStencilDtoImplCopyWith<_$CreateStencilDtoImpl> get copyWith =>
      __$$CreateStencilDtoImplCopyWithImpl<_$CreateStencilDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateStencilDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateStencilDto implements CreateStencilDto {
  const factory _CreateStencilDto(
      {required final String title,
      final String? description,
      final String? imageUrl,
      final String? thumbnailUrl,
      final bool isFeatured,
      final int orderPosition,
      final bool isHidden,
      final List<int>? tagIds}) = _$CreateStencilDtoImpl;

  factory _CreateStencilDto.fromJson(Map<String, dynamic> json) =
      _$CreateStencilDtoImpl.fromJson;

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
  List<int>? get tagIds;
  @override
  @JsonKey(ignore: true)
  _$$CreateStencilDtoImplCopyWith<_$CreateStencilDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateStencilDto _$UpdateStencilDtoFromJson(Map<String, dynamic> json) {
  return _UpdateStencilDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateStencilDto {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  bool? get isFeatured => throw _privateConstructorUsedError;
  int? get orderPosition => throw _privateConstructorUsedError;
  bool? get isHidden => throw _privateConstructorUsedError;
  List<int>? get tagIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateStencilDtoCopyWith<UpdateStencilDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStencilDtoCopyWith<$Res> {
  factory $UpdateStencilDtoCopyWith(
          UpdateStencilDto value, $Res Function(UpdateStencilDto) then) =
      _$UpdateStencilDtoCopyWithImpl<$Res, UpdateStencilDto>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? imageUrl,
      String? thumbnailUrl,
      bool? isFeatured,
      int? orderPosition,
      bool? isHidden,
      List<int>? tagIds});
}

/// @nodoc
class _$UpdateStencilDtoCopyWithImpl<$Res, $Val extends UpdateStencilDto>
    implements $UpdateStencilDtoCopyWith<$Res> {
  _$UpdateStencilDtoCopyWithImpl(this._value, this._then);

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
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateStencilDtoImplCopyWith<$Res>
    implements $UpdateStencilDtoCopyWith<$Res> {
  factory _$$UpdateStencilDtoImplCopyWith(_$UpdateStencilDtoImpl value,
          $Res Function(_$UpdateStencilDtoImpl) then) =
      __$$UpdateStencilDtoImplCopyWithImpl<$Res>;
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
      List<int>? tagIds});
}

/// @nodoc
class __$$UpdateStencilDtoImplCopyWithImpl<$Res>
    extends _$UpdateStencilDtoCopyWithImpl<$Res, _$UpdateStencilDtoImpl>
    implements _$$UpdateStencilDtoImplCopyWith<$Res> {
  __$$UpdateStencilDtoImplCopyWithImpl(_$UpdateStencilDtoImpl _value,
      $Res Function(_$UpdateStencilDtoImpl) _then)
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
  }) {
    return _then(_$UpdateStencilDtoImpl(
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
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateStencilDtoImpl implements _UpdateStencilDto {
  const _$UpdateStencilDtoImpl(
      {this.title,
      this.description,
      this.imageUrl,
      this.thumbnailUrl,
      this.isFeatured,
      this.orderPosition,
      this.isHidden,
      final List<int>? tagIds})
      : _tagIds = tagIds;

  factory _$UpdateStencilDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateStencilDtoImplFromJson(json);

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
  final List<int>? _tagIds;
  @override
  List<int>? get tagIds {
    final value = _tagIds;
    if (value == null) return null;
    if (_tagIds is EqualUnmodifiableListView) return _tagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UpdateStencilDto(title: $title, description: $description, imageUrl: $imageUrl, thumbnailUrl: $thumbnailUrl, isFeatured: $isFeatured, orderPosition: $orderPosition, isHidden: $isHidden, tagIds: $tagIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStencilDtoImpl &&
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
            const DeepCollectionEquality().equals(other._tagIds, _tagIds));
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
      const DeepCollectionEquality().hash(_tagIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStencilDtoImplCopyWith<_$UpdateStencilDtoImpl> get copyWith =>
      __$$UpdateStencilDtoImplCopyWithImpl<_$UpdateStencilDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateStencilDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateStencilDto implements UpdateStencilDto {
  const factory _UpdateStencilDto(
      {final String? title,
      final String? description,
      final String? imageUrl,
      final String? thumbnailUrl,
      final bool? isFeatured,
      final int? orderPosition,
      final bool? isHidden,
      final List<int>? tagIds}) = _$UpdateStencilDtoImpl;

  factory _UpdateStencilDto.fromJson(Map<String, dynamic> json) =
      _$UpdateStencilDtoImpl.fromJson;

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
  List<int>? get tagIds;
  @override
  @JsonKey(ignore: true)
  _$$UpdateStencilDtoImplCopyWith<_$UpdateStencilDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TagSuggestionResponseDto _$TagSuggestionResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _TagSuggestionResponseDto.fromJson(json);
}

/// @nodoc
mixin _$TagSuggestionResponseDto {
  int get id => throw _privateConstructorUsedError;
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
  $Res call({int id, String name, int? count});
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
              as int,
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
  $Res call({int id, String name, int? count});
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
              as int,
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
  final int id;
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
      {required final int id,
      required final String name,
      final int? count}) = _$TagSuggestionResponseDtoImpl;

  factory _TagSuggestionResponseDto.fromJson(Map<String, dynamic> json) =
      _$TagSuggestionResponseDtoImpl.fromJson;

  @override
  int get id;
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
  int get id => throw _privateConstructorUsedError;
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
      {int id,
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
              as int,
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
      {int id,
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
              as int,
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
  final int id;
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
      {required final int id,
      required final String name,
      final String? createdBy,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$TagDtoImpl;

  factory _TagDto.fromJson(Map<String, dynamic> json) = _$TagDtoImpl.fromJson;

  @override
  int get id;
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
