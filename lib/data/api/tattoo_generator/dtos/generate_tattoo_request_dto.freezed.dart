// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_tattoo_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenerateTattooRequestDto _$GenerateTattooRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _GenerateTattooRequestDto.fromJson(json);
}

/// @nodoc
mixin _$GenerateTattooRequestDto {
  String get userInput => throw _privateConstructorUsedError;
  TattooStyle get style => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenerateTattooRequestDtoCopyWith<GenerateTattooRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateTattooRequestDtoCopyWith<$Res> {
  factory $GenerateTattooRequestDtoCopyWith(GenerateTattooRequestDto value,
          $Res Function(GenerateTattooRequestDto) then) =
      _$GenerateTattooRequestDtoCopyWithImpl<$Res, GenerateTattooRequestDto>;
  @useResult
  $Res call({String userInput, TattooStyle style});
}

/// @nodoc
class _$GenerateTattooRequestDtoCopyWithImpl<$Res,
        $Val extends GenerateTattooRequestDto>
    implements $GenerateTattooRequestDtoCopyWith<$Res> {
  _$GenerateTattooRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInput = null,
    Object? style = null,
  }) {
    return _then(_value.copyWith(
      userInput: null == userInput
          ? _value.userInput
          : userInput // ignore: cast_nullable_to_non_nullable
              as String,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as TattooStyle,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenerateTattooRequestDtoImplCopyWith<$Res>
    implements $GenerateTattooRequestDtoCopyWith<$Res> {
  factory _$$GenerateTattooRequestDtoImplCopyWith(
          _$GenerateTattooRequestDtoImpl value,
          $Res Function(_$GenerateTattooRequestDtoImpl) then) =
      __$$GenerateTattooRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userInput, TattooStyle style});
}

/// @nodoc
class __$$GenerateTattooRequestDtoImplCopyWithImpl<$Res>
    extends _$GenerateTattooRequestDtoCopyWithImpl<$Res,
        _$GenerateTattooRequestDtoImpl>
    implements _$$GenerateTattooRequestDtoImplCopyWith<$Res> {
  __$$GenerateTattooRequestDtoImplCopyWithImpl(
      _$GenerateTattooRequestDtoImpl _value,
      $Res Function(_$GenerateTattooRequestDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInput = null,
    Object? style = null,
  }) {
    return _then(_$GenerateTattooRequestDtoImpl(
      userInput: null == userInput
          ? _value.userInput
          : userInput // ignore: cast_nullable_to_non_nullable
              as String,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as TattooStyle,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenerateTattooRequestDtoImpl implements _GenerateTattooRequestDto {
  const _$GenerateTattooRequestDtoImpl(
      {required this.userInput, required this.style});

  factory _$GenerateTattooRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenerateTattooRequestDtoImplFromJson(json);

  @override
  final String userInput;
  @override
  final TattooStyle style;

  @override
  String toString() {
    return 'GenerateTattooRequestDto(userInput: $userInput, style: $style)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateTattooRequestDtoImpl &&
            (identical(other.userInput, userInput) ||
                other.userInput == userInput) &&
            (identical(other.style, style) || other.style == style));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userInput, style);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateTattooRequestDtoImplCopyWith<_$GenerateTattooRequestDtoImpl>
      get copyWith => __$$GenerateTattooRequestDtoImplCopyWithImpl<
          _$GenerateTattooRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenerateTattooRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _GenerateTattooRequestDto implements GenerateTattooRequestDto {
  const factory _GenerateTattooRequestDto(
      {required final String userInput,
      required final TattooStyle style}) = _$GenerateTattooRequestDtoImpl;

  factory _GenerateTattooRequestDto.fromJson(Map<String, dynamic> json) =
      _$GenerateTattooRequestDtoImpl.fromJson;

  @override
  String get userInput;
  @override
  TattooStyle get style;
  @override
  @JsonKey(ignore: true)
  _$$GenerateTattooRequestDtoImplCopyWith<_$GenerateTattooRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
