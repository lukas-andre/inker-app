// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'environment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Environment _$EnvironmentFromJson(Map<String, dynamic> json) {
  return _Environment.fromJson(json);
}

/// @nodoc
mixin _$Environment {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get apiUrl => throw _privateConstructorUsedError;
  Map<String, dynamic> get additionalConfig =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnvironmentCopyWith<Environment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnvironmentCopyWith<$Res> {
  factory $EnvironmentCopyWith(
          Environment value, $Res Function(Environment) then) =
      _$EnvironmentCopyWithImpl<$Res, Environment>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String apiUrl,
      Map<String, dynamic> additionalConfig});
}

/// @nodoc
class _$EnvironmentCopyWithImpl<$Res, $Val extends Environment>
    implements $EnvironmentCopyWith<$Res> {
  _$EnvironmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? apiUrl = null,
    Object? additionalConfig = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      apiUrl: null == apiUrl
          ? _value.apiUrl
          : apiUrl // ignore: cast_nullable_to_non_nullable
              as String,
      additionalConfig: null == additionalConfig
          ? _value.additionalConfig
          : additionalConfig // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EnvironmentImplCopyWith<$Res>
    implements $EnvironmentCopyWith<$Res> {
  factory _$$EnvironmentImplCopyWith(
          _$EnvironmentImpl value, $Res Function(_$EnvironmentImpl) then) =
      __$$EnvironmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String apiUrl,
      Map<String, dynamic> additionalConfig});
}

/// @nodoc
class __$$EnvironmentImplCopyWithImpl<$Res>
    extends _$EnvironmentCopyWithImpl<$Res, _$EnvironmentImpl>
    implements _$$EnvironmentImplCopyWith<$Res> {
  __$$EnvironmentImplCopyWithImpl(
      _$EnvironmentImpl _value, $Res Function(_$EnvironmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? apiUrl = null,
    Object? additionalConfig = null,
  }) {
    return _then(_$EnvironmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      apiUrl: null == apiUrl
          ? _value.apiUrl
          : apiUrl // ignore: cast_nullable_to_non_nullable
              as String,
      additionalConfig: null == additionalConfig
          ? _value._additionalConfig
          : additionalConfig // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EnvironmentImpl implements _Environment {
  const _$EnvironmentImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.apiUrl,
      final Map<String, dynamic> additionalConfig = const {}})
      : _additionalConfig = additionalConfig;

  factory _$EnvironmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnvironmentImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String apiUrl;
  final Map<String, dynamic> _additionalConfig;
  @override
  @JsonKey()
  Map<String, dynamic> get additionalConfig {
    if (_additionalConfig is EqualUnmodifiableMapView) return _additionalConfig;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_additionalConfig);
  }

  @override
  String toString() {
    return 'Environment(id: $id, name: $name, description: $description, apiUrl: $apiUrl, additionalConfig: $additionalConfig)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnvironmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.apiUrl, apiUrl) || other.apiUrl == apiUrl) &&
            const DeepCollectionEquality()
                .equals(other._additionalConfig, _additionalConfig));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, apiUrl,
      const DeepCollectionEquality().hash(_additionalConfig));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnvironmentImplCopyWith<_$EnvironmentImpl> get copyWith =>
      __$$EnvironmentImplCopyWithImpl<_$EnvironmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnvironmentImplToJson(
      this,
    );
  }
}

abstract class _Environment implements Environment {
  const factory _Environment(
      {required final String id,
      required final String name,
      required final String description,
      required final String apiUrl,
      final Map<String, dynamic> additionalConfig}) = _$EnvironmentImpl;

  factory _Environment.fromJson(Map<String, dynamic> json) =
      _$EnvironmentImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get apiUrl;
  @override
  Map<String, dynamic> get additionalConfig;
  @override
  @JsonKey(ignore: true)
  _$$EnvironmentImplCopyWith<_$EnvironmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EnvironmentsConfig _$EnvironmentsConfigFromJson(Map<String, dynamic> json) {
  return _EnvironmentsConfig.fromJson(json);
}

/// @nodoc
mixin _$EnvironmentsConfig {
  Map<String, Environment> get environments =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnvironmentsConfigCopyWith<EnvironmentsConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnvironmentsConfigCopyWith<$Res> {
  factory $EnvironmentsConfigCopyWith(
          EnvironmentsConfig value, $Res Function(EnvironmentsConfig) then) =
      _$EnvironmentsConfigCopyWithImpl<$Res, EnvironmentsConfig>;
  @useResult
  $Res call({Map<String, Environment> environments});
}

/// @nodoc
class _$EnvironmentsConfigCopyWithImpl<$Res, $Val extends EnvironmentsConfig>
    implements $EnvironmentsConfigCopyWith<$Res> {
  _$EnvironmentsConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? environments = null,
  }) {
    return _then(_value.copyWith(
      environments: null == environments
          ? _value.environments
          : environments // ignore: cast_nullable_to_non_nullable
              as Map<String, Environment>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EnvironmentsConfigImplCopyWith<$Res>
    implements $EnvironmentsConfigCopyWith<$Res> {
  factory _$$EnvironmentsConfigImplCopyWith(_$EnvironmentsConfigImpl value,
          $Res Function(_$EnvironmentsConfigImpl) then) =
      __$$EnvironmentsConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, Environment> environments});
}

/// @nodoc
class __$$EnvironmentsConfigImplCopyWithImpl<$Res>
    extends _$EnvironmentsConfigCopyWithImpl<$Res, _$EnvironmentsConfigImpl>
    implements _$$EnvironmentsConfigImplCopyWith<$Res> {
  __$$EnvironmentsConfigImplCopyWithImpl(_$EnvironmentsConfigImpl _value,
      $Res Function(_$EnvironmentsConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? environments = null,
  }) {
    return _then(_$EnvironmentsConfigImpl(
      environments: null == environments
          ? _value._environments
          : environments // ignore: cast_nullable_to_non_nullable
              as Map<String, Environment>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EnvironmentsConfigImpl implements _EnvironmentsConfig {
  const _$EnvironmentsConfigImpl(
      {required final Map<String, Environment> environments})
      : _environments = environments;

  factory _$EnvironmentsConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnvironmentsConfigImplFromJson(json);

  final Map<String, Environment> _environments;
  @override
  Map<String, Environment> get environments {
    if (_environments is EqualUnmodifiableMapView) return _environments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_environments);
  }

  @override
  String toString() {
    return 'EnvironmentsConfig(environments: $environments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnvironmentsConfigImpl &&
            const DeepCollectionEquality()
                .equals(other._environments, _environments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_environments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnvironmentsConfigImplCopyWith<_$EnvironmentsConfigImpl> get copyWith =>
      __$$EnvironmentsConfigImplCopyWithImpl<_$EnvironmentsConfigImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnvironmentsConfigImplToJson(
      this,
    );
  }
}

abstract class _EnvironmentsConfig implements EnvironmentsConfig {
  const factory _EnvironmentsConfig(
          {required final Map<String, Environment> environments}) =
      _$EnvironmentsConfigImpl;

  factory _EnvironmentsConfig.fromJson(Map<String, dynamic> json) =
      _$EnvironmentsConfigImpl.fromJson;

  @override
  Map<String, Environment> get environments;
  @override
  @JsonKey(ignore: true)
  _$$EnvironmentsConfigImplCopyWith<_$EnvironmentsConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
