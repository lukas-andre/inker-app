// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_artist.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchArtistDto _$SearchArtistDtoFromJson(Map<String, dynamic> json) {
  return _SearchArtistDto.fromJson(json);
}

/// @nodoc
mixin _$SearchArtistDto {
  String? get query => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int? get minRating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchArtistDtoCopyWith<SearchArtistDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchArtistDtoCopyWith<$Res> {
  factory $SearchArtistDtoCopyWith(
          SearchArtistDto value, $Res Function(SearchArtistDto) then) =
      _$SearchArtistDtoCopyWithImpl<$Res, SearchArtistDto>;
  @useResult
  $Res call({String? query, int page, int limit, int? minRating});
}

/// @nodoc
class _$SearchArtistDtoCopyWithImpl<$Res, $Val extends SearchArtistDto>
    implements $SearchArtistDtoCopyWith<$Res> {
  _$SearchArtistDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? page = null,
    Object? limit = null,
    Object? minRating = freezed,
  }) {
    return _then(_value.copyWith(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      minRating: freezed == minRating
          ? _value.minRating
          : minRating // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchArtistDtoImplCopyWith<$Res>
    implements $SearchArtistDtoCopyWith<$Res> {
  factory _$$SearchArtistDtoImplCopyWith(_$SearchArtistDtoImpl value,
          $Res Function(_$SearchArtistDtoImpl) then) =
      __$$SearchArtistDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query, int page, int limit, int? minRating});
}

/// @nodoc
class __$$SearchArtistDtoImplCopyWithImpl<$Res>
    extends _$SearchArtistDtoCopyWithImpl<$Res, _$SearchArtistDtoImpl>
    implements _$$SearchArtistDtoImplCopyWith<$Res> {
  __$$SearchArtistDtoImplCopyWithImpl(
      _$SearchArtistDtoImpl _value, $Res Function(_$SearchArtistDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? page = null,
    Object? limit = null,
    Object? minRating = freezed,
  }) {
    return _then(_$SearchArtistDtoImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      minRating: freezed == minRating
          ? _value.minRating
          : minRating // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchArtistDtoImpl implements _SearchArtistDto {
  const _$SearchArtistDtoImpl(
      {this.query, this.page = 1, this.limit = 10, this.minRating});

  factory _$SearchArtistDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchArtistDtoImplFromJson(json);

  @override
  final String? query;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int limit;
  @override
  final int? minRating;

  @override
  String toString() {
    return 'SearchArtistDto(query: $query, page: $page, limit: $limit, minRating: $minRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchArtistDtoImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.minRating, minRating) ||
                other.minRating == minRating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, query, page, limit, minRating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchArtistDtoImplCopyWith<_$SearchArtistDtoImpl> get copyWith =>
      __$$SearchArtistDtoImplCopyWithImpl<_$SearchArtistDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchArtistDtoImplToJson(
      this,
    );
  }
}

abstract class _SearchArtistDto implements SearchArtistDto {
  const factory _SearchArtistDto(
      {final String? query,
      final int page,
      final int limit,
      final int? minRating}) = _$SearchArtistDtoImpl;

  factory _SearchArtistDto.fromJson(Map<String, dynamic> json) =
      _$SearchArtistDtoImpl.fromJson;

  @override
  String? get query;
  @override
  int get page;
  @override
  int get limit;
  @override
  int? get minRating;
  @override
  @JsonKey(ignore: true)
  _$$SearchArtistDtoImplCopyWith<_$SearchArtistDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
