// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_tattoo_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenerateTattooResponseDto _$GenerateTattooResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _GenerateTattooResponseDto.fromJson(json);
}

/// @nodoc
mixin _$GenerateTattooResponseDto {
  List<GeneratedImageDto> get images => throw _privateConstructorUsedError;
  double get totalCost => throw _privateConstructorUsedError;
  bool get fromCache => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenerateTattooResponseDtoCopyWith<GenerateTattooResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateTattooResponseDtoCopyWith<$Res> {
  factory $GenerateTattooResponseDtoCopyWith(GenerateTattooResponseDto value,
          $Res Function(GenerateTattooResponseDto) then) =
      _$GenerateTattooResponseDtoCopyWithImpl<$Res, GenerateTattooResponseDto>;
  @useResult
  $Res call({List<GeneratedImageDto> images, double totalCost, bool fromCache});
}

/// @nodoc
class _$GenerateTattooResponseDtoCopyWithImpl<$Res,
        $Val extends GenerateTattooResponseDto>
    implements $GenerateTattooResponseDtoCopyWith<$Res> {
  _$GenerateTattooResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? totalCost = null,
    Object? fromCache = null,
  }) {
    return _then(_value.copyWith(
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<GeneratedImageDto>,
      totalCost: null == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      fromCache: null == fromCache
          ? _value.fromCache
          : fromCache // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenerateTattooResponseDtoImplCopyWith<$Res>
    implements $GenerateTattooResponseDtoCopyWith<$Res> {
  factory _$$GenerateTattooResponseDtoImplCopyWith(
          _$GenerateTattooResponseDtoImpl value,
          $Res Function(_$GenerateTattooResponseDtoImpl) then) =
      __$$GenerateTattooResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GeneratedImageDto> images, double totalCost, bool fromCache});
}

/// @nodoc
class __$$GenerateTattooResponseDtoImplCopyWithImpl<$Res>
    extends _$GenerateTattooResponseDtoCopyWithImpl<$Res,
        _$GenerateTattooResponseDtoImpl>
    implements _$$GenerateTattooResponseDtoImplCopyWith<$Res> {
  __$$GenerateTattooResponseDtoImplCopyWithImpl(
      _$GenerateTattooResponseDtoImpl _value,
      $Res Function(_$GenerateTattooResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? totalCost = null,
    Object? fromCache = null,
  }) {
    return _then(_$GenerateTattooResponseDtoImpl(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<GeneratedImageDto>,
      totalCost: null == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double,
      fromCache: null == fromCache
          ? _value.fromCache
          : fromCache // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenerateTattooResponseDtoImpl implements _GenerateTattooResponseDto {
  const _$GenerateTattooResponseDtoImpl(
      {required final List<GeneratedImageDto> images,
      required this.totalCost,
      this.fromCache = false})
      : _images = images;

  factory _$GenerateTattooResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenerateTattooResponseDtoImplFromJson(json);

  final List<GeneratedImageDto> _images;
  @override
  List<GeneratedImageDto> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final double totalCost;
  @override
  @JsonKey()
  final bool fromCache;

  @override
  String toString() {
    return 'GenerateTattooResponseDto(images: $images, totalCost: $totalCost, fromCache: $fromCache)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateTattooResponseDtoImpl &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost) &&
            (identical(other.fromCache, fromCache) ||
                other.fromCache == fromCache));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_images), totalCost, fromCache);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateTattooResponseDtoImplCopyWith<_$GenerateTattooResponseDtoImpl>
      get copyWith => __$$GenerateTattooResponseDtoImplCopyWithImpl<
          _$GenerateTattooResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenerateTattooResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _GenerateTattooResponseDto implements GenerateTattooResponseDto {
  const factory _GenerateTattooResponseDto(
      {required final List<GeneratedImageDto> images,
      required final double totalCost,
      final bool fromCache}) = _$GenerateTattooResponseDtoImpl;

  factory _GenerateTattooResponseDto.fromJson(Map<String, dynamic> json) =
      _$GenerateTattooResponseDtoImpl.fromJson;

  @override
  List<GeneratedImageDto> get images;
  @override
  double get totalCost;
  @override
  bool get fromCache;
  @override
  @JsonKey(ignore: true)
  _$$GenerateTattooResponseDtoImplCopyWith<_$GenerateTattooResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GeneratedImageDto _$GeneratedImageDtoFromJson(Map<String, dynamic> json) {
  return _GeneratedImageDto.fromJson(json);
}

/// @nodoc
mixin _$GeneratedImageDto {
  String get imageUrl => throw _privateConstructorUsedError;
  String get imageId => throw _privateConstructorUsedError;
  double get cost => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneratedImageDtoCopyWith<GeneratedImageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneratedImageDtoCopyWith<$Res> {
  factory $GeneratedImageDtoCopyWith(
          GeneratedImageDto value, $Res Function(GeneratedImageDto) then) =
      _$GeneratedImageDtoCopyWithImpl<$Res, GeneratedImageDto>;
  @useResult
  $Res call({String imageUrl, String imageId, double cost});
}

/// @nodoc
class _$GeneratedImageDtoCopyWithImpl<$Res, $Val extends GeneratedImageDto>
    implements $GeneratedImageDtoCopyWith<$Res> {
  _$GeneratedImageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? imageId = null,
    Object? cost = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageId: null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeneratedImageDtoImplCopyWith<$Res>
    implements $GeneratedImageDtoCopyWith<$Res> {
  factory _$$GeneratedImageDtoImplCopyWith(_$GeneratedImageDtoImpl value,
          $Res Function(_$GeneratedImageDtoImpl) then) =
      __$$GeneratedImageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imageUrl, String imageId, double cost});
}

/// @nodoc
class __$$GeneratedImageDtoImplCopyWithImpl<$Res>
    extends _$GeneratedImageDtoCopyWithImpl<$Res, _$GeneratedImageDtoImpl>
    implements _$$GeneratedImageDtoImplCopyWith<$Res> {
  __$$GeneratedImageDtoImplCopyWithImpl(_$GeneratedImageDtoImpl _value,
      $Res Function(_$GeneratedImageDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? imageId = null,
    Object? cost = null,
  }) {
    return _then(_$GeneratedImageDtoImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageId: null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeneratedImageDtoImpl implements _GeneratedImageDto {
  const _$GeneratedImageDtoImpl(
      {required this.imageUrl, required this.imageId, required this.cost});

  factory _$GeneratedImageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeneratedImageDtoImplFromJson(json);

  @override
  final String imageUrl;
  @override
  final String imageId;
  @override
  final double cost;

  @override
  String toString() {
    return 'GeneratedImageDto(imageUrl: $imageUrl, imageId: $imageId, cost: $cost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneratedImageDtoImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.imageId, imageId) || other.imageId == imageId) &&
            (identical(other.cost, cost) || other.cost == cost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, imageId, cost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneratedImageDtoImplCopyWith<_$GeneratedImageDtoImpl> get copyWith =>
      __$$GeneratedImageDtoImplCopyWithImpl<_$GeneratedImageDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneratedImageDtoImplToJson(
      this,
    );
  }
}

abstract class _GeneratedImageDto implements GeneratedImageDto {
  const factory _GeneratedImageDto(
      {required final String imageUrl,
      required final String imageId,
      required final double cost}) = _$GeneratedImageDtoImpl;

  factory _GeneratedImageDto.fromJson(Map<String, dynamic> json) =
      _$GeneratedImageDtoImpl.fromJson;

  @override
  String get imageUrl;
  @override
  String get imageId;
  @override
  double get cost;
  @override
  @JsonKey(ignore: true)
  _$$GeneratedImageDtoImplCopyWith<_$GeneratedImageDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
