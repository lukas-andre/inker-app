// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_artist_response.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchArtistResponseDto _$SearchArtistResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _SearchArtistResponseDto.fromJson(json);
}

/// @nodoc
mixin _$SearchArtistResponseDto {
  List<Artist> get artists => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta')
  MetadataDto get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchArtistResponseDtoCopyWith<SearchArtistResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchArtistResponseDtoCopyWith<$Res> {
  factory $SearchArtistResponseDtoCopyWith(SearchArtistResponseDto value,
          $Res Function(SearchArtistResponseDto) then) =
      _$SearchArtistResponseDtoCopyWithImpl<$Res, SearchArtistResponseDto>;
  @useResult
  $Res call(
      {List<Artist> artists, @JsonKey(name: 'meta') MetadataDto metadata});

  $MetadataDtoCopyWith<$Res> get metadata;
}

/// @nodoc
class _$SearchArtistResponseDtoCopyWithImpl<$Res,
        $Val extends SearchArtistResponseDto>
    implements $SearchArtistResponseDtoCopyWith<$Res> {
  _$SearchArtistResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = null,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MetadataDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetadataDtoCopyWith<$Res> get metadata {
    return $MetadataDtoCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchArtistResponseDtoImplCopyWith<$Res>
    implements $SearchArtistResponseDtoCopyWith<$Res> {
  factory _$$SearchArtistResponseDtoImplCopyWith(
          _$SearchArtistResponseDtoImpl value,
          $Res Function(_$SearchArtistResponseDtoImpl) then) =
      __$$SearchArtistResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Artist> artists, @JsonKey(name: 'meta') MetadataDto metadata});

  @override
  $MetadataDtoCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$SearchArtistResponseDtoImplCopyWithImpl<$Res>
    extends _$SearchArtistResponseDtoCopyWithImpl<$Res,
        _$SearchArtistResponseDtoImpl>
    implements _$$SearchArtistResponseDtoImplCopyWith<$Res> {
  __$$SearchArtistResponseDtoImplCopyWithImpl(
      _$SearchArtistResponseDtoImpl _value,
      $Res Function(_$SearchArtistResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = null,
    Object? metadata = null,
  }) {
    return _then(_$SearchArtistResponseDtoImpl(
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MetadataDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchArtistResponseDtoImpl implements _SearchArtistResponseDto {
  const _$SearchArtistResponseDtoImpl(
      {final List<Artist> artists = const [],
      @JsonKey(name: 'meta') required this.metadata})
      : _artists = artists;

  factory _$SearchArtistResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchArtistResponseDtoImplFromJson(json);

  final List<Artist> _artists;
  @override
  @JsonKey()
  List<Artist> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  @JsonKey(name: 'meta')
  final MetadataDto metadata;

  @override
  String toString() {
    return 'SearchArtistResponseDto(artists: $artists, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchArtistResponseDtoImpl &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_artists), metadata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchArtistResponseDtoImplCopyWith<_$SearchArtistResponseDtoImpl>
      get copyWith => __$$SearchArtistResponseDtoImplCopyWithImpl<
          _$SearchArtistResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchArtistResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchArtistResponseDto implements SearchArtistResponseDto {
  const factory _SearchArtistResponseDto(
          {final List<Artist> artists,
          @JsonKey(name: 'meta') required final MetadataDto metadata}) =
      _$SearchArtistResponseDtoImpl;

  factory _SearchArtistResponseDto.fromJson(Map<String, dynamic> json) =
      _$SearchArtistResponseDtoImpl.fromJson;

  @override
  List<Artist> get artists;
  @override
  @JsonKey(name: 'meta')
  MetadataDto get metadata;
  @override
  @JsonKey(ignore: true)
  _$$SearchArtistResponseDtoImplCopyWith<_$SearchArtistResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MetadataDto _$MetadataDtoFromJson(Map<String, dynamic> json) {
  return _MetadataDto.fromJson(json);
}

/// @nodoc
mixin _$MetadataDto {
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetadataDtoCopyWith<MetadataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataDtoCopyWith<$Res> {
  factory $MetadataDtoCopyWith(
          MetadataDto value, $Res Function(MetadataDto) then) =
      _$MetadataDtoCopyWithImpl<$Res, MetadataDto>;
  @useResult
  $Res call({int total, int page, int limit, int totalPages});
}

/// @nodoc
class _$MetadataDtoCopyWithImpl<$Res, $Val extends MetadataDto>
    implements $MetadataDtoCopyWith<$Res> {
  _$MetadataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? limit = null,
    Object? totalPages = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetadataDtoImplCopyWith<$Res>
    implements $MetadataDtoCopyWith<$Res> {
  factory _$$MetadataDtoImplCopyWith(
          _$MetadataDtoImpl value, $Res Function(_$MetadataDtoImpl) then) =
      __$$MetadataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int page, int limit, int totalPages});
}

/// @nodoc
class __$$MetadataDtoImplCopyWithImpl<$Res>
    extends _$MetadataDtoCopyWithImpl<$Res, _$MetadataDtoImpl>
    implements _$$MetadataDtoImplCopyWith<$Res> {
  __$$MetadataDtoImplCopyWithImpl(
      _$MetadataDtoImpl _value, $Res Function(_$MetadataDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? limit = null,
    Object? totalPages = null,
  }) {
    return _then(_$MetadataDtoImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetadataDtoImpl implements _MetadataDto {
  const _$MetadataDtoImpl(
      {this.total = 0, this.page = 1, this.limit = 10, this.totalPages = 0});

  factory _$MetadataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetadataDtoImplFromJson(json);

  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int limit;
  @override
  @JsonKey()
  final int totalPages;

  @override
  String toString() {
    return 'MetadataDto(total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetadataDtoImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, page, limit, totalPages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetadataDtoImplCopyWith<_$MetadataDtoImpl> get copyWith =>
      __$$MetadataDtoImplCopyWithImpl<_$MetadataDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetadataDtoImplToJson(
      this,
    );
  }
}

abstract class _MetadataDto implements MetadataDto {
  const factory _MetadataDto(
      {final int total,
      final int page,
      final int limit,
      final int totalPages}) = _$MetadataDtoImpl;

  factory _MetadataDto.fromJson(Map<String, dynamic> json) =
      _$MetadataDtoImpl.fromJson;

  @override
  int get total;
  @override
  int get page;
  @override
  int get limit;
  @override
  int get totalPages;
  @override
  @JsonKey(ignore: true)
  _$$MetadataDtoImplCopyWith<_$MetadataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
