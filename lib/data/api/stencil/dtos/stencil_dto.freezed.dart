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
  StencilSource get source => throw _privateConstructorUsedError;
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
      StencilSource source,
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
    Object? source = null,
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
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as StencilSource,
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
      StencilSource source,
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
    Object? source = null,
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
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as StencilSource,
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
      required this.source,
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
  final StencilSource source;
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
    return 'CreateStencilDto(title: $title, description: $description, imageUrl: $imageUrl, thumbnailUrl: $thumbnailUrl, isFeatured: $isFeatured, orderPosition: $orderPosition, source: $source, isHidden: $isHidden, tagIds: $tagIds)';
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
            (identical(other.source, source) || other.source == source) &&
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
      source,
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
      required final StencilSource source,
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
  StencilSource get source;
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
  StencilSource? get source => throw _privateConstructorUsedError;
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
      StencilSource? source,
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
    Object? source = freezed,
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
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as StencilSource?,
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
      StencilSource? source,
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
    Object? source = freezed,
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
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as StencilSource?,
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
      this.source,
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
  final StencilSource? source;
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
    return 'UpdateStencilDto(title: $title, description: $description, imageUrl: $imageUrl, thumbnailUrl: $thumbnailUrl, isFeatured: $isFeatured, orderPosition: $orderPosition, source: $source, isHidden: $isHidden, tagIds: $tagIds)';
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
            (identical(other.source, source) || other.source == source) &&
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
      source,
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
      final StencilSource? source,
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
  StencilSource? get source;
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
  int get count => throw _privateConstructorUsedError;

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
  $Res call({int id, String name, int count});
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
    Object? count = null,
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
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call({int id, String name, int count});
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
    Object? count = null,
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
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TagSuggestionResponseDtoImpl implements _TagSuggestionResponseDto {
  const _$TagSuggestionResponseDtoImpl(
      {required this.id, required this.name, required this.count});

  factory _$TagSuggestionResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagSuggestionResponseDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int count;

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
      required final int count}) = _$TagSuggestionResponseDtoImpl;

  factory _TagSuggestionResponseDto.fromJson(Map<String, dynamic> json) =
      _$TagSuggestionResponseDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$TagSuggestionResponseDtoImplCopyWith<_$TagSuggestionResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
