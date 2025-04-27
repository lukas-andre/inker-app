// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tattoo_generator_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TattooGeneratorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String prompt, TattooStyle style) generateTattoo,
    required TResult Function() resetState,
    required TResult Function(String prompt) updatePrompt,
    required TResult Function(TattooStyle style) updateStyle,
    required TResult Function() loadHistory,
    required TResult Function() loadFavorites,
    required TResult Function() refreshHistory,
    required TResult Function() refreshFavorites,
    required TResult Function(String designId, bool isFavorite) toggleFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String prompt, TattooStyle style)? generateTattoo,
    TResult? Function()? resetState,
    TResult? Function(String prompt)? updatePrompt,
    TResult? Function(TattooStyle style)? updateStyle,
    TResult? Function()? loadHistory,
    TResult? Function()? loadFavorites,
    TResult? Function()? refreshHistory,
    TResult? Function()? refreshFavorites,
    TResult? Function(String designId, bool isFavorite)? toggleFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String prompt, TattooStyle style)? generateTattoo,
    TResult Function()? resetState,
    TResult Function(String prompt)? updatePrompt,
    TResult Function(TattooStyle style)? updateStyle,
    TResult Function()? loadHistory,
    TResult Function()? loadFavorites,
    TResult Function()? refreshHistory,
    TResult Function()? refreshFavorites,
    TResult Function(String designId, bool isFavorite)? toggleFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateTattoo value) generateTattoo,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_UpdatePrompt value) updatePrompt,
    required TResult Function(_UpdateStyle value) updateStyle,
    required TResult Function(_LoadHistory value) loadHistory,
    required TResult Function(_LoadFavorites value) loadFavorites,
    required TResult Function(_RefreshHistory value) refreshHistory,
    required TResult Function(_RefreshFavorites value) refreshFavorites,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateTattoo value)? generateTattoo,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_UpdatePrompt value)? updatePrompt,
    TResult? Function(_UpdateStyle value)? updateStyle,
    TResult? Function(_LoadHistory value)? loadHistory,
    TResult? Function(_LoadFavorites value)? loadFavorites,
    TResult? Function(_RefreshHistory value)? refreshHistory,
    TResult? Function(_RefreshFavorites value)? refreshFavorites,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateTattoo value)? generateTattoo,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_UpdatePrompt value)? updatePrompt,
    TResult Function(_UpdateStyle value)? updateStyle,
    TResult Function(_LoadHistory value)? loadHistory,
    TResult Function(_LoadFavorites value)? loadFavorites,
    TResult Function(_RefreshHistory value)? refreshHistory,
    TResult Function(_RefreshFavorites value)? refreshFavorites,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TattooGeneratorEventCopyWith<$Res> {
  factory $TattooGeneratorEventCopyWith(TattooGeneratorEvent value,
          $Res Function(TattooGeneratorEvent) then) =
      _$TattooGeneratorEventCopyWithImpl<$Res, TattooGeneratorEvent>;
}

/// @nodoc
class _$TattooGeneratorEventCopyWithImpl<$Res,
        $Val extends TattooGeneratorEvent>
    implements $TattooGeneratorEventCopyWith<$Res> {
  _$TattooGeneratorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$TattooGeneratorEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'TattooGeneratorEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String prompt, TattooStyle style) generateTattoo,
    required TResult Function() resetState,
    required TResult Function(String prompt) updatePrompt,
    required TResult Function(TattooStyle style) updateStyle,
    required TResult Function() loadHistory,
    required TResult Function() loadFavorites,
    required TResult Function() refreshHistory,
    required TResult Function() refreshFavorites,
    required TResult Function(String designId, bool isFavorite) toggleFavorite,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String prompt, TattooStyle style)? generateTattoo,
    TResult? Function()? resetState,
    TResult? Function(String prompt)? updatePrompt,
    TResult? Function(TattooStyle style)? updateStyle,
    TResult? Function()? loadHistory,
    TResult? Function()? loadFavorites,
    TResult? Function()? refreshHistory,
    TResult? Function()? refreshFavorites,
    TResult? Function(String designId, bool isFavorite)? toggleFavorite,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String prompt, TattooStyle style)? generateTattoo,
    TResult Function()? resetState,
    TResult Function(String prompt)? updatePrompt,
    TResult Function(TattooStyle style)? updateStyle,
    TResult Function()? loadHistory,
    TResult Function()? loadFavorites,
    TResult Function()? refreshHistory,
    TResult Function()? refreshFavorites,
    TResult Function(String designId, bool isFavorite)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateTattoo value) generateTattoo,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_UpdatePrompt value) updatePrompt,
    required TResult Function(_UpdateStyle value) updateStyle,
    required TResult Function(_LoadHistory value) loadHistory,
    required TResult Function(_LoadFavorites value) loadFavorites,
    required TResult Function(_RefreshHistory value) refreshHistory,
    required TResult Function(_RefreshFavorites value) refreshFavorites,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateTattoo value)? generateTattoo,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_UpdatePrompt value)? updatePrompt,
    TResult? Function(_UpdateStyle value)? updateStyle,
    TResult? Function(_LoadHistory value)? loadHistory,
    TResult? Function(_LoadFavorites value)? loadFavorites,
    TResult? Function(_RefreshHistory value)? refreshHistory,
    TResult? Function(_RefreshFavorites value)? refreshFavorites,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateTattoo value)? generateTattoo,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_UpdatePrompt value)? updatePrompt,
    TResult Function(_UpdateStyle value)? updateStyle,
    TResult Function(_LoadHistory value)? loadHistory,
    TResult Function(_LoadFavorites value)? loadFavorites,
    TResult Function(_RefreshHistory value)? refreshHistory,
    TResult Function(_RefreshFavorites value)? refreshFavorites,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TattooGeneratorEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GenerateTattooImplCopyWith<$Res> {
  factory _$$GenerateTattooImplCopyWith(_$GenerateTattooImpl value,
          $Res Function(_$GenerateTattooImpl) then) =
      __$$GenerateTattooImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String prompt, TattooStyle style});
}

/// @nodoc
class __$$GenerateTattooImplCopyWithImpl<$Res>
    extends _$TattooGeneratorEventCopyWithImpl<$Res, _$GenerateTattooImpl>
    implements _$$GenerateTattooImplCopyWith<$Res> {
  __$$GenerateTattooImplCopyWithImpl(
      _$GenerateTattooImpl _value, $Res Function(_$GenerateTattooImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = null,
    Object? style = null,
  }) {
    return _then(_$GenerateTattooImpl(
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as TattooStyle,
    ));
  }
}

/// @nodoc

class _$GenerateTattooImpl implements _GenerateTattoo {
  const _$GenerateTattooImpl({required this.prompt, required this.style});

  @override
  final String prompt;
  @override
  final TattooStyle style;

  @override
  String toString() {
    return 'TattooGeneratorEvent.generateTattoo(prompt: $prompt, style: $style)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateTattooImpl &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.style, style) || other.style == style));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prompt, style);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateTattooImplCopyWith<_$GenerateTattooImpl> get copyWith =>
      __$$GenerateTattooImplCopyWithImpl<_$GenerateTattooImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String prompt, TattooStyle style) generateTattoo,
    required TResult Function() resetState,
    required TResult Function(String prompt) updatePrompt,
    required TResult Function(TattooStyle style) updateStyle,
    required TResult Function() loadHistory,
    required TResult Function() loadFavorites,
    required TResult Function() refreshHistory,
    required TResult Function() refreshFavorites,
    required TResult Function(String designId, bool isFavorite) toggleFavorite,
  }) {
    return generateTattoo(prompt, style);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String prompt, TattooStyle style)? generateTattoo,
    TResult? Function()? resetState,
    TResult? Function(String prompt)? updatePrompt,
    TResult? Function(TattooStyle style)? updateStyle,
    TResult? Function()? loadHistory,
    TResult? Function()? loadFavorites,
    TResult? Function()? refreshHistory,
    TResult? Function()? refreshFavorites,
    TResult? Function(String designId, bool isFavorite)? toggleFavorite,
  }) {
    return generateTattoo?.call(prompt, style);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String prompt, TattooStyle style)? generateTattoo,
    TResult Function()? resetState,
    TResult Function(String prompt)? updatePrompt,
    TResult Function(TattooStyle style)? updateStyle,
    TResult Function()? loadHistory,
    TResult Function()? loadFavorites,
    TResult Function()? refreshHistory,
    TResult Function()? refreshFavorites,
    TResult Function(String designId, bool isFavorite)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (generateTattoo != null) {
      return generateTattoo(prompt, style);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateTattoo value) generateTattoo,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_UpdatePrompt value) updatePrompt,
    required TResult Function(_UpdateStyle value) updateStyle,
    required TResult Function(_LoadHistory value) loadHistory,
    required TResult Function(_LoadFavorites value) loadFavorites,
    required TResult Function(_RefreshHistory value) refreshHistory,
    required TResult Function(_RefreshFavorites value) refreshFavorites,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
  }) {
    return generateTattoo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateTattoo value)? generateTattoo,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_UpdatePrompt value)? updatePrompt,
    TResult? Function(_UpdateStyle value)? updateStyle,
    TResult? Function(_LoadHistory value)? loadHistory,
    TResult? Function(_LoadFavorites value)? loadFavorites,
    TResult? Function(_RefreshHistory value)? refreshHistory,
    TResult? Function(_RefreshFavorites value)? refreshFavorites,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
  }) {
    return generateTattoo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateTattoo value)? generateTattoo,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_UpdatePrompt value)? updatePrompt,
    TResult Function(_UpdateStyle value)? updateStyle,
    TResult Function(_LoadHistory value)? loadHistory,
    TResult Function(_LoadFavorites value)? loadFavorites,
    TResult Function(_RefreshHistory value)? refreshHistory,
    TResult Function(_RefreshFavorites value)? refreshFavorites,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (generateTattoo != null) {
      return generateTattoo(this);
    }
    return orElse();
  }
}

abstract class _GenerateTattoo implements TattooGeneratorEvent {
  const factory _GenerateTattoo(
      {required final String prompt,
      required final TattooStyle style}) = _$GenerateTattooImpl;

  String get prompt;
  TattooStyle get style;
  @JsonKey(ignore: true)
  _$$GenerateTattooImplCopyWith<_$GenerateTattooImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetStateImplCopyWith<$Res> {
  factory _$$ResetStateImplCopyWith(
          _$ResetStateImpl value, $Res Function(_$ResetStateImpl) then) =
      __$$ResetStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetStateImplCopyWithImpl<$Res>
    extends _$TattooGeneratorEventCopyWithImpl<$Res, _$ResetStateImpl>
    implements _$$ResetStateImplCopyWith<$Res> {
  __$$ResetStateImplCopyWithImpl(
      _$ResetStateImpl _value, $Res Function(_$ResetStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetStateImpl implements _ResetState {
  const _$ResetStateImpl();

  @override
  String toString() {
    return 'TattooGeneratorEvent.resetState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String prompt, TattooStyle style) generateTattoo,
    required TResult Function() resetState,
    required TResult Function(String prompt) updatePrompt,
    required TResult Function(TattooStyle style) updateStyle,
    required TResult Function() loadHistory,
    required TResult Function() loadFavorites,
    required TResult Function() refreshHistory,
    required TResult Function() refreshFavorites,
    required TResult Function(String designId, bool isFavorite) toggleFavorite,
  }) {
    return resetState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String prompt, TattooStyle style)? generateTattoo,
    TResult? Function()? resetState,
    TResult? Function(String prompt)? updatePrompt,
    TResult? Function(TattooStyle style)? updateStyle,
    TResult? Function()? loadHistory,
    TResult? Function()? loadFavorites,
    TResult? Function()? refreshHistory,
    TResult? Function()? refreshFavorites,
    TResult? Function(String designId, bool isFavorite)? toggleFavorite,
  }) {
    return resetState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String prompt, TattooStyle style)? generateTattoo,
    TResult Function()? resetState,
    TResult Function(String prompt)? updatePrompt,
    TResult Function(TattooStyle style)? updateStyle,
    TResult Function()? loadHistory,
    TResult Function()? loadFavorites,
    TResult Function()? refreshHistory,
    TResult Function()? refreshFavorites,
    TResult Function(String designId, bool isFavorite)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateTattoo value) generateTattoo,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_UpdatePrompt value) updatePrompt,
    required TResult Function(_UpdateStyle value) updateStyle,
    required TResult Function(_LoadHistory value) loadHistory,
    required TResult Function(_LoadFavorites value) loadFavorites,
    required TResult Function(_RefreshHistory value) refreshHistory,
    required TResult Function(_RefreshFavorites value) refreshFavorites,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
  }) {
    return resetState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateTattoo value)? generateTattoo,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_UpdatePrompt value)? updatePrompt,
    TResult? Function(_UpdateStyle value)? updateStyle,
    TResult? Function(_LoadHistory value)? loadHistory,
    TResult? Function(_LoadFavorites value)? loadFavorites,
    TResult? Function(_RefreshHistory value)? refreshHistory,
    TResult? Function(_RefreshFavorites value)? refreshFavorites,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
  }) {
    return resetState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateTattoo value)? generateTattoo,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_UpdatePrompt value)? updatePrompt,
    TResult Function(_UpdateStyle value)? updateStyle,
    TResult Function(_LoadHistory value)? loadHistory,
    TResult Function(_LoadFavorites value)? loadFavorites,
    TResult Function(_RefreshHistory value)? refreshHistory,
    TResult Function(_RefreshFavorites value)? refreshFavorites,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState(this);
    }
    return orElse();
  }
}

abstract class _ResetState implements TattooGeneratorEvent {
  const factory _ResetState() = _$ResetStateImpl;
}

/// @nodoc
abstract class _$$UpdatePromptImplCopyWith<$Res> {
  factory _$$UpdatePromptImplCopyWith(
          _$UpdatePromptImpl value, $Res Function(_$UpdatePromptImpl) then) =
      __$$UpdatePromptImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String prompt});
}

/// @nodoc
class __$$UpdatePromptImplCopyWithImpl<$Res>
    extends _$TattooGeneratorEventCopyWithImpl<$Res, _$UpdatePromptImpl>
    implements _$$UpdatePromptImplCopyWith<$Res> {
  __$$UpdatePromptImplCopyWithImpl(
      _$UpdatePromptImpl _value, $Res Function(_$UpdatePromptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = null,
  }) {
    return _then(_$UpdatePromptImpl(
      null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatePromptImpl implements _UpdatePrompt {
  const _$UpdatePromptImpl(this.prompt);

  @override
  final String prompt;

  @override
  String toString() {
    return 'TattooGeneratorEvent.updatePrompt(prompt: $prompt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePromptImpl &&
            (identical(other.prompt, prompt) || other.prompt == prompt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prompt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePromptImplCopyWith<_$UpdatePromptImpl> get copyWith =>
      __$$UpdatePromptImplCopyWithImpl<_$UpdatePromptImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String prompt, TattooStyle style) generateTattoo,
    required TResult Function() resetState,
    required TResult Function(String prompt) updatePrompt,
    required TResult Function(TattooStyle style) updateStyle,
    required TResult Function() loadHistory,
    required TResult Function() loadFavorites,
    required TResult Function() refreshHistory,
    required TResult Function() refreshFavorites,
    required TResult Function(String designId, bool isFavorite) toggleFavorite,
  }) {
    return updatePrompt(prompt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String prompt, TattooStyle style)? generateTattoo,
    TResult? Function()? resetState,
    TResult? Function(String prompt)? updatePrompt,
    TResult? Function(TattooStyle style)? updateStyle,
    TResult? Function()? loadHistory,
    TResult? Function()? loadFavorites,
    TResult? Function()? refreshHistory,
    TResult? Function()? refreshFavorites,
    TResult? Function(String designId, bool isFavorite)? toggleFavorite,
  }) {
    return updatePrompt?.call(prompt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String prompt, TattooStyle style)? generateTattoo,
    TResult Function()? resetState,
    TResult Function(String prompt)? updatePrompt,
    TResult Function(TattooStyle style)? updateStyle,
    TResult Function()? loadHistory,
    TResult Function()? loadFavorites,
    TResult Function()? refreshHistory,
    TResult Function()? refreshFavorites,
    TResult Function(String designId, bool isFavorite)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (updatePrompt != null) {
      return updatePrompt(prompt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateTattoo value) generateTattoo,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_UpdatePrompt value) updatePrompt,
    required TResult Function(_UpdateStyle value) updateStyle,
    required TResult Function(_LoadHistory value) loadHistory,
    required TResult Function(_LoadFavorites value) loadFavorites,
    required TResult Function(_RefreshHistory value) refreshHistory,
    required TResult Function(_RefreshFavorites value) refreshFavorites,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
  }) {
    return updatePrompt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateTattoo value)? generateTattoo,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_UpdatePrompt value)? updatePrompt,
    TResult? Function(_UpdateStyle value)? updateStyle,
    TResult? Function(_LoadHistory value)? loadHistory,
    TResult? Function(_LoadFavorites value)? loadFavorites,
    TResult? Function(_RefreshHistory value)? refreshHistory,
    TResult? Function(_RefreshFavorites value)? refreshFavorites,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
  }) {
    return updatePrompt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateTattoo value)? generateTattoo,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_UpdatePrompt value)? updatePrompt,
    TResult Function(_UpdateStyle value)? updateStyle,
    TResult Function(_LoadHistory value)? loadHistory,
    TResult Function(_LoadFavorites value)? loadFavorites,
    TResult Function(_RefreshHistory value)? refreshHistory,
    TResult Function(_RefreshFavorites value)? refreshFavorites,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (updatePrompt != null) {
      return updatePrompt(this);
    }
    return orElse();
  }
}

abstract class _UpdatePrompt implements TattooGeneratorEvent {
  const factory _UpdatePrompt(final String prompt) = _$UpdatePromptImpl;

  String get prompt;
  @JsonKey(ignore: true)
  _$$UpdatePromptImplCopyWith<_$UpdatePromptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateStyleImplCopyWith<$Res> {
  factory _$$UpdateStyleImplCopyWith(
          _$UpdateStyleImpl value, $Res Function(_$UpdateStyleImpl) then) =
      __$$UpdateStyleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TattooStyle style});
}

/// @nodoc
class __$$UpdateStyleImplCopyWithImpl<$Res>
    extends _$TattooGeneratorEventCopyWithImpl<$Res, _$UpdateStyleImpl>
    implements _$$UpdateStyleImplCopyWith<$Res> {
  __$$UpdateStyleImplCopyWithImpl(
      _$UpdateStyleImpl _value, $Res Function(_$UpdateStyleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = null,
  }) {
    return _then(_$UpdateStyleImpl(
      null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as TattooStyle,
    ));
  }
}

/// @nodoc

class _$UpdateStyleImpl implements _UpdateStyle {
  const _$UpdateStyleImpl(this.style);

  @override
  final TattooStyle style;

  @override
  String toString() {
    return 'TattooGeneratorEvent.updateStyle(style: $style)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStyleImpl &&
            (identical(other.style, style) || other.style == style));
  }

  @override
  int get hashCode => Object.hash(runtimeType, style);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStyleImplCopyWith<_$UpdateStyleImpl> get copyWith =>
      __$$UpdateStyleImplCopyWithImpl<_$UpdateStyleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String prompt, TattooStyle style) generateTattoo,
    required TResult Function() resetState,
    required TResult Function(String prompt) updatePrompt,
    required TResult Function(TattooStyle style) updateStyle,
    required TResult Function() loadHistory,
    required TResult Function() loadFavorites,
    required TResult Function() refreshHistory,
    required TResult Function() refreshFavorites,
    required TResult Function(String designId, bool isFavorite) toggleFavorite,
  }) {
    return updateStyle(style);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String prompt, TattooStyle style)? generateTattoo,
    TResult? Function()? resetState,
    TResult? Function(String prompt)? updatePrompt,
    TResult? Function(TattooStyle style)? updateStyle,
    TResult? Function()? loadHistory,
    TResult? Function()? loadFavorites,
    TResult? Function()? refreshHistory,
    TResult? Function()? refreshFavorites,
    TResult? Function(String designId, bool isFavorite)? toggleFavorite,
  }) {
    return updateStyle?.call(style);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String prompt, TattooStyle style)? generateTattoo,
    TResult Function()? resetState,
    TResult Function(String prompt)? updatePrompt,
    TResult Function(TattooStyle style)? updateStyle,
    TResult Function()? loadHistory,
    TResult Function()? loadFavorites,
    TResult Function()? refreshHistory,
    TResult Function()? refreshFavorites,
    TResult Function(String designId, bool isFavorite)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (updateStyle != null) {
      return updateStyle(style);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateTattoo value) generateTattoo,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_UpdatePrompt value) updatePrompt,
    required TResult Function(_UpdateStyle value) updateStyle,
    required TResult Function(_LoadHistory value) loadHistory,
    required TResult Function(_LoadFavorites value) loadFavorites,
    required TResult Function(_RefreshHistory value) refreshHistory,
    required TResult Function(_RefreshFavorites value) refreshFavorites,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
  }) {
    return updateStyle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateTattoo value)? generateTattoo,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_UpdatePrompt value)? updatePrompt,
    TResult? Function(_UpdateStyle value)? updateStyle,
    TResult? Function(_LoadHistory value)? loadHistory,
    TResult? Function(_LoadFavorites value)? loadFavorites,
    TResult? Function(_RefreshHistory value)? refreshHistory,
    TResult? Function(_RefreshFavorites value)? refreshFavorites,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
  }) {
    return updateStyle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateTattoo value)? generateTattoo,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_UpdatePrompt value)? updatePrompt,
    TResult Function(_UpdateStyle value)? updateStyle,
    TResult Function(_LoadHistory value)? loadHistory,
    TResult Function(_LoadFavorites value)? loadFavorites,
    TResult Function(_RefreshHistory value)? refreshHistory,
    TResult Function(_RefreshFavorites value)? refreshFavorites,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (updateStyle != null) {
      return updateStyle(this);
    }
    return orElse();
  }
}

abstract class _UpdateStyle implements TattooGeneratorEvent {
  const factory _UpdateStyle(final TattooStyle style) = _$UpdateStyleImpl;

  TattooStyle get style;
  @JsonKey(ignore: true)
  _$$UpdateStyleImplCopyWith<_$UpdateStyleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadHistoryImplCopyWith<$Res> {
  factory _$$LoadHistoryImplCopyWith(
          _$LoadHistoryImpl value, $Res Function(_$LoadHistoryImpl) then) =
      __$$LoadHistoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadHistoryImplCopyWithImpl<$Res>
    extends _$TattooGeneratorEventCopyWithImpl<$Res, _$LoadHistoryImpl>
    implements _$$LoadHistoryImplCopyWith<$Res> {
  __$$LoadHistoryImplCopyWithImpl(
      _$LoadHistoryImpl _value, $Res Function(_$LoadHistoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadHistoryImpl implements _LoadHistory {
  const _$LoadHistoryImpl();

  @override
  String toString() {
    return 'TattooGeneratorEvent.loadHistory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadHistoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String prompt, TattooStyle style) generateTattoo,
    required TResult Function() resetState,
    required TResult Function(String prompt) updatePrompt,
    required TResult Function(TattooStyle style) updateStyle,
    required TResult Function() loadHistory,
    required TResult Function() loadFavorites,
    required TResult Function() refreshHistory,
    required TResult Function() refreshFavorites,
    required TResult Function(String designId, bool isFavorite) toggleFavorite,
  }) {
    return loadHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String prompt, TattooStyle style)? generateTattoo,
    TResult? Function()? resetState,
    TResult? Function(String prompt)? updatePrompt,
    TResult? Function(TattooStyle style)? updateStyle,
    TResult? Function()? loadHistory,
    TResult? Function()? loadFavorites,
    TResult? Function()? refreshHistory,
    TResult? Function()? refreshFavorites,
    TResult? Function(String designId, bool isFavorite)? toggleFavorite,
  }) {
    return loadHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String prompt, TattooStyle style)? generateTattoo,
    TResult Function()? resetState,
    TResult Function(String prompt)? updatePrompt,
    TResult Function(TattooStyle style)? updateStyle,
    TResult Function()? loadHistory,
    TResult Function()? loadFavorites,
    TResult Function()? refreshHistory,
    TResult Function()? refreshFavorites,
    TResult Function(String designId, bool isFavorite)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (loadHistory != null) {
      return loadHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateTattoo value) generateTattoo,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_UpdatePrompt value) updatePrompt,
    required TResult Function(_UpdateStyle value) updateStyle,
    required TResult Function(_LoadHistory value) loadHistory,
    required TResult Function(_LoadFavorites value) loadFavorites,
    required TResult Function(_RefreshHistory value) refreshHistory,
    required TResult Function(_RefreshFavorites value) refreshFavorites,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
  }) {
    return loadHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateTattoo value)? generateTattoo,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_UpdatePrompt value)? updatePrompt,
    TResult? Function(_UpdateStyle value)? updateStyle,
    TResult? Function(_LoadHistory value)? loadHistory,
    TResult? Function(_LoadFavorites value)? loadFavorites,
    TResult? Function(_RefreshHistory value)? refreshHistory,
    TResult? Function(_RefreshFavorites value)? refreshFavorites,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
  }) {
    return loadHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateTattoo value)? generateTattoo,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_UpdatePrompt value)? updatePrompt,
    TResult Function(_UpdateStyle value)? updateStyle,
    TResult Function(_LoadHistory value)? loadHistory,
    TResult Function(_LoadFavorites value)? loadFavorites,
    TResult Function(_RefreshHistory value)? refreshHistory,
    TResult Function(_RefreshFavorites value)? refreshFavorites,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (loadHistory != null) {
      return loadHistory(this);
    }
    return orElse();
  }
}

abstract class _LoadHistory implements TattooGeneratorEvent {
  const factory _LoadHistory() = _$LoadHistoryImpl;
}

/// @nodoc
abstract class _$$LoadFavoritesImplCopyWith<$Res> {
  factory _$$LoadFavoritesImplCopyWith(
          _$LoadFavoritesImpl value, $Res Function(_$LoadFavoritesImpl) then) =
      __$$LoadFavoritesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadFavoritesImplCopyWithImpl<$Res>
    extends _$TattooGeneratorEventCopyWithImpl<$Res, _$LoadFavoritesImpl>
    implements _$$LoadFavoritesImplCopyWith<$Res> {
  __$$LoadFavoritesImplCopyWithImpl(
      _$LoadFavoritesImpl _value, $Res Function(_$LoadFavoritesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadFavoritesImpl implements _LoadFavorites {
  const _$LoadFavoritesImpl();

  @override
  String toString() {
    return 'TattooGeneratorEvent.loadFavorites()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadFavoritesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String prompt, TattooStyle style) generateTattoo,
    required TResult Function() resetState,
    required TResult Function(String prompt) updatePrompt,
    required TResult Function(TattooStyle style) updateStyle,
    required TResult Function() loadHistory,
    required TResult Function() loadFavorites,
    required TResult Function() refreshHistory,
    required TResult Function() refreshFavorites,
    required TResult Function(String designId, bool isFavorite) toggleFavorite,
  }) {
    return loadFavorites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String prompt, TattooStyle style)? generateTattoo,
    TResult? Function()? resetState,
    TResult? Function(String prompt)? updatePrompt,
    TResult? Function(TattooStyle style)? updateStyle,
    TResult? Function()? loadHistory,
    TResult? Function()? loadFavorites,
    TResult? Function()? refreshHistory,
    TResult? Function()? refreshFavorites,
    TResult? Function(String designId, bool isFavorite)? toggleFavorite,
  }) {
    return loadFavorites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String prompt, TattooStyle style)? generateTattoo,
    TResult Function()? resetState,
    TResult Function(String prompt)? updatePrompt,
    TResult Function(TattooStyle style)? updateStyle,
    TResult Function()? loadHistory,
    TResult Function()? loadFavorites,
    TResult Function()? refreshHistory,
    TResult Function()? refreshFavorites,
    TResult Function(String designId, bool isFavorite)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (loadFavorites != null) {
      return loadFavorites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateTattoo value) generateTattoo,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_UpdatePrompt value) updatePrompt,
    required TResult Function(_UpdateStyle value) updateStyle,
    required TResult Function(_LoadHistory value) loadHistory,
    required TResult Function(_LoadFavorites value) loadFavorites,
    required TResult Function(_RefreshHistory value) refreshHistory,
    required TResult Function(_RefreshFavorites value) refreshFavorites,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
  }) {
    return loadFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateTattoo value)? generateTattoo,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_UpdatePrompt value)? updatePrompt,
    TResult? Function(_UpdateStyle value)? updateStyle,
    TResult? Function(_LoadHistory value)? loadHistory,
    TResult? Function(_LoadFavorites value)? loadFavorites,
    TResult? Function(_RefreshHistory value)? refreshHistory,
    TResult? Function(_RefreshFavorites value)? refreshFavorites,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
  }) {
    return loadFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateTattoo value)? generateTattoo,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_UpdatePrompt value)? updatePrompt,
    TResult Function(_UpdateStyle value)? updateStyle,
    TResult Function(_LoadHistory value)? loadHistory,
    TResult Function(_LoadFavorites value)? loadFavorites,
    TResult Function(_RefreshHistory value)? refreshHistory,
    TResult Function(_RefreshFavorites value)? refreshFavorites,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (loadFavorites != null) {
      return loadFavorites(this);
    }
    return orElse();
  }
}

abstract class _LoadFavorites implements TattooGeneratorEvent {
  const factory _LoadFavorites() = _$LoadFavoritesImpl;
}

/// @nodoc
abstract class _$$RefreshHistoryImplCopyWith<$Res> {
  factory _$$RefreshHistoryImplCopyWith(_$RefreshHistoryImpl value,
          $Res Function(_$RefreshHistoryImpl) then) =
      __$$RefreshHistoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshHistoryImplCopyWithImpl<$Res>
    extends _$TattooGeneratorEventCopyWithImpl<$Res, _$RefreshHistoryImpl>
    implements _$$RefreshHistoryImplCopyWith<$Res> {
  __$$RefreshHistoryImplCopyWithImpl(
      _$RefreshHistoryImpl _value, $Res Function(_$RefreshHistoryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshHistoryImpl implements _RefreshHistory {
  const _$RefreshHistoryImpl();

  @override
  String toString() {
    return 'TattooGeneratorEvent.refreshHistory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshHistoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String prompt, TattooStyle style) generateTattoo,
    required TResult Function() resetState,
    required TResult Function(String prompt) updatePrompt,
    required TResult Function(TattooStyle style) updateStyle,
    required TResult Function() loadHistory,
    required TResult Function() loadFavorites,
    required TResult Function() refreshHistory,
    required TResult Function() refreshFavorites,
    required TResult Function(String designId, bool isFavorite) toggleFavorite,
  }) {
    return refreshHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String prompt, TattooStyle style)? generateTattoo,
    TResult? Function()? resetState,
    TResult? Function(String prompt)? updatePrompt,
    TResult? Function(TattooStyle style)? updateStyle,
    TResult? Function()? loadHistory,
    TResult? Function()? loadFavorites,
    TResult? Function()? refreshHistory,
    TResult? Function()? refreshFavorites,
    TResult? Function(String designId, bool isFavorite)? toggleFavorite,
  }) {
    return refreshHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String prompt, TattooStyle style)? generateTattoo,
    TResult Function()? resetState,
    TResult Function(String prompt)? updatePrompt,
    TResult Function(TattooStyle style)? updateStyle,
    TResult Function()? loadHistory,
    TResult Function()? loadFavorites,
    TResult Function()? refreshHistory,
    TResult Function()? refreshFavorites,
    TResult Function(String designId, bool isFavorite)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (refreshHistory != null) {
      return refreshHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateTattoo value) generateTattoo,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_UpdatePrompt value) updatePrompt,
    required TResult Function(_UpdateStyle value) updateStyle,
    required TResult Function(_LoadHistory value) loadHistory,
    required TResult Function(_LoadFavorites value) loadFavorites,
    required TResult Function(_RefreshHistory value) refreshHistory,
    required TResult Function(_RefreshFavorites value) refreshFavorites,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
  }) {
    return refreshHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateTattoo value)? generateTattoo,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_UpdatePrompt value)? updatePrompt,
    TResult? Function(_UpdateStyle value)? updateStyle,
    TResult? Function(_LoadHistory value)? loadHistory,
    TResult? Function(_LoadFavorites value)? loadFavorites,
    TResult? Function(_RefreshHistory value)? refreshHistory,
    TResult? Function(_RefreshFavorites value)? refreshFavorites,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
  }) {
    return refreshHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateTattoo value)? generateTattoo,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_UpdatePrompt value)? updatePrompt,
    TResult Function(_UpdateStyle value)? updateStyle,
    TResult Function(_LoadHistory value)? loadHistory,
    TResult Function(_LoadFavorites value)? loadFavorites,
    TResult Function(_RefreshHistory value)? refreshHistory,
    TResult Function(_RefreshFavorites value)? refreshFavorites,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (refreshHistory != null) {
      return refreshHistory(this);
    }
    return orElse();
  }
}

abstract class _RefreshHistory implements TattooGeneratorEvent {
  const factory _RefreshHistory() = _$RefreshHistoryImpl;
}

/// @nodoc
abstract class _$$RefreshFavoritesImplCopyWith<$Res> {
  factory _$$RefreshFavoritesImplCopyWith(_$RefreshFavoritesImpl value,
          $Res Function(_$RefreshFavoritesImpl) then) =
      __$$RefreshFavoritesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshFavoritesImplCopyWithImpl<$Res>
    extends _$TattooGeneratorEventCopyWithImpl<$Res, _$RefreshFavoritesImpl>
    implements _$$RefreshFavoritesImplCopyWith<$Res> {
  __$$RefreshFavoritesImplCopyWithImpl(_$RefreshFavoritesImpl _value,
      $Res Function(_$RefreshFavoritesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshFavoritesImpl implements _RefreshFavorites {
  const _$RefreshFavoritesImpl();

  @override
  String toString() {
    return 'TattooGeneratorEvent.refreshFavorites()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshFavoritesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String prompt, TattooStyle style) generateTattoo,
    required TResult Function() resetState,
    required TResult Function(String prompt) updatePrompt,
    required TResult Function(TattooStyle style) updateStyle,
    required TResult Function() loadHistory,
    required TResult Function() loadFavorites,
    required TResult Function() refreshHistory,
    required TResult Function() refreshFavorites,
    required TResult Function(String designId, bool isFavorite) toggleFavorite,
  }) {
    return refreshFavorites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String prompt, TattooStyle style)? generateTattoo,
    TResult? Function()? resetState,
    TResult? Function(String prompt)? updatePrompt,
    TResult? Function(TattooStyle style)? updateStyle,
    TResult? Function()? loadHistory,
    TResult? Function()? loadFavorites,
    TResult? Function()? refreshHistory,
    TResult? Function()? refreshFavorites,
    TResult? Function(String designId, bool isFavorite)? toggleFavorite,
  }) {
    return refreshFavorites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String prompt, TattooStyle style)? generateTattoo,
    TResult Function()? resetState,
    TResult Function(String prompt)? updatePrompt,
    TResult Function(TattooStyle style)? updateStyle,
    TResult Function()? loadHistory,
    TResult Function()? loadFavorites,
    TResult Function()? refreshHistory,
    TResult Function()? refreshFavorites,
    TResult Function(String designId, bool isFavorite)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (refreshFavorites != null) {
      return refreshFavorites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateTattoo value) generateTattoo,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_UpdatePrompt value) updatePrompt,
    required TResult Function(_UpdateStyle value) updateStyle,
    required TResult Function(_LoadHistory value) loadHistory,
    required TResult Function(_LoadFavorites value) loadFavorites,
    required TResult Function(_RefreshHistory value) refreshHistory,
    required TResult Function(_RefreshFavorites value) refreshFavorites,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
  }) {
    return refreshFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateTattoo value)? generateTattoo,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_UpdatePrompt value)? updatePrompt,
    TResult? Function(_UpdateStyle value)? updateStyle,
    TResult? Function(_LoadHistory value)? loadHistory,
    TResult? Function(_LoadFavorites value)? loadFavorites,
    TResult? Function(_RefreshHistory value)? refreshHistory,
    TResult? Function(_RefreshFavorites value)? refreshFavorites,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
  }) {
    return refreshFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateTattoo value)? generateTattoo,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_UpdatePrompt value)? updatePrompt,
    TResult Function(_UpdateStyle value)? updateStyle,
    TResult Function(_LoadHistory value)? loadHistory,
    TResult Function(_LoadFavorites value)? loadFavorites,
    TResult Function(_RefreshHistory value)? refreshHistory,
    TResult Function(_RefreshFavorites value)? refreshFavorites,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (refreshFavorites != null) {
      return refreshFavorites(this);
    }
    return orElse();
  }
}

abstract class _RefreshFavorites implements TattooGeneratorEvent {
  const factory _RefreshFavorites() = _$RefreshFavoritesImpl;
}

/// @nodoc
abstract class _$$ToggleFavoriteImplCopyWith<$Res> {
  factory _$$ToggleFavoriteImplCopyWith(_$ToggleFavoriteImpl value,
          $Res Function(_$ToggleFavoriteImpl) then) =
      __$$ToggleFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String designId, bool isFavorite});
}

/// @nodoc
class __$$ToggleFavoriteImplCopyWithImpl<$Res>
    extends _$TattooGeneratorEventCopyWithImpl<$Res, _$ToggleFavoriteImpl>
    implements _$$ToggleFavoriteImplCopyWith<$Res> {
  __$$ToggleFavoriteImplCopyWithImpl(
      _$ToggleFavoriteImpl _value, $Res Function(_$ToggleFavoriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? designId = null,
    Object? isFavorite = null,
  }) {
    return _then(_$ToggleFavoriteImpl(
      designId: null == designId
          ? _value.designId
          : designId // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ToggleFavoriteImpl implements _ToggleFavorite {
  const _$ToggleFavoriteImpl(
      {required this.designId, required this.isFavorite});

  @override
  final String designId;
  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'TattooGeneratorEvent.toggleFavorite(designId: $designId, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleFavoriteImpl &&
            (identical(other.designId, designId) ||
                other.designId == designId) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, designId, isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleFavoriteImplCopyWith<_$ToggleFavoriteImpl> get copyWith =>
      __$$ToggleFavoriteImplCopyWithImpl<_$ToggleFavoriteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String prompt, TattooStyle style) generateTattoo,
    required TResult Function() resetState,
    required TResult Function(String prompt) updatePrompt,
    required TResult Function(TattooStyle style) updateStyle,
    required TResult Function() loadHistory,
    required TResult Function() loadFavorites,
    required TResult Function() refreshHistory,
    required TResult Function() refreshFavorites,
    required TResult Function(String designId, bool isFavorite) toggleFavorite,
  }) {
    return toggleFavorite(designId, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String prompt, TattooStyle style)? generateTattoo,
    TResult? Function()? resetState,
    TResult? Function(String prompt)? updatePrompt,
    TResult? Function(TattooStyle style)? updateStyle,
    TResult? Function()? loadHistory,
    TResult? Function()? loadFavorites,
    TResult? Function()? refreshHistory,
    TResult? Function()? refreshFavorites,
    TResult? Function(String designId, bool isFavorite)? toggleFavorite,
  }) {
    return toggleFavorite?.call(designId, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String prompt, TattooStyle style)? generateTattoo,
    TResult Function()? resetState,
    TResult Function(String prompt)? updatePrompt,
    TResult Function(TattooStyle style)? updateStyle,
    TResult Function()? loadHistory,
    TResult Function()? loadFavorites,
    TResult Function()? refreshHistory,
    TResult Function()? refreshFavorites,
    TResult Function(String designId, bool isFavorite)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (toggleFavorite != null) {
      return toggleFavorite(designId, isFavorite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateTattoo value) generateTattoo,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_UpdatePrompt value) updatePrompt,
    required TResult Function(_UpdateStyle value) updateStyle,
    required TResult Function(_LoadHistory value) loadHistory,
    required TResult Function(_LoadFavorites value) loadFavorites,
    required TResult Function(_RefreshHistory value) refreshHistory,
    required TResult Function(_RefreshFavorites value) refreshFavorites,
    required TResult Function(_ToggleFavorite value) toggleFavorite,
  }) {
    return toggleFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateTattoo value)? generateTattoo,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_UpdatePrompt value)? updatePrompt,
    TResult? Function(_UpdateStyle value)? updateStyle,
    TResult? Function(_LoadHistory value)? loadHistory,
    TResult? Function(_LoadFavorites value)? loadFavorites,
    TResult? Function(_RefreshHistory value)? refreshHistory,
    TResult? Function(_RefreshFavorites value)? refreshFavorites,
    TResult? Function(_ToggleFavorite value)? toggleFavorite,
  }) {
    return toggleFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateTattoo value)? generateTattoo,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_UpdatePrompt value)? updatePrompt,
    TResult Function(_UpdateStyle value)? updateStyle,
    TResult Function(_LoadHistory value)? loadHistory,
    TResult Function(_LoadFavorites value)? loadFavorites,
    TResult Function(_RefreshHistory value)? refreshHistory,
    TResult Function(_RefreshFavorites value)? refreshFavorites,
    TResult Function(_ToggleFavorite value)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (toggleFavorite != null) {
      return toggleFavorite(this);
    }
    return orElse();
  }
}

abstract class _ToggleFavorite implements TattooGeneratorEvent {
  const factory _ToggleFavorite(
      {required final String designId,
      required final bool isFavorite}) = _$ToggleFavoriteImpl;

  String get designId;
  bool get isFavorite;
  @JsonKey(ignore: true)
  _$$ToggleFavoriteImplCopyWith<_$ToggleFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TattooGeneratorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(String prompt) promptUpdated,
    required TResult Function(TattooStyle style) styleUpdated,
    required TResult Function() historyLoading,
    required TResult Function(
            List<UserTattooDesignDto> designs, bool favoritesOnly)
        historyLoaded,
    required TResult Function(String designId, bool isFavorite) favoriteToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(String prompt)? promptUpdated,
    TResult? Function(TattooStyle style)? styleUpdated,
    TResult? Function()? historyLoading,
    TResult? Function(List<UserTattooDesignDto> designs, bool favoritesOnly)?
        historyLoaded,
    TResult? Function(String designId, bool isFavorite)? favoriteToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(String prompt)? promptUpdated,
    TResult Function(TattooStyle style)? styleUpdated,
    TResult Function()? historyLoading,
    TResult Function(List<UserTattooDesignDto> designs, bool favoritesOnly)?
        historyLoaded,
    TResult Function(String designId, bool isFavorite)? favoriteToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_PromptUpdated value) promptUpdated,
    required TResult Function(_StyleUpdated value) styleUpdated,
    required TResult Function(_HistoryLoading value) historyLoading,
    required TResult Function(_HistoryLoaded value) historyLoaded,
    required TResult Function(_FavoriteToggled value) favoriteToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_PromptUpdated value)? promptUpdated,
    TResult? Function(_StyleUpdated value)? styleUpdated,
    TResult? Function(_HistoryLoading value)? historyLoading,
    TResult? Function(_HistoryLoaded value)? historyLoaded,
    TResult? Function(_FavoriteToggled value)? favoriteToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_PromptUpdated value)? promptUpdated,
    TResult Function(_StyleUpdated value)? styleUpdated,
    TResult Function(_HistoryLoading value)? historyLoading,
    TResult Function(_HistoryLoaded value)? historyLoaded,
    TResult Function(_FavoriteToggled value)? favoriteToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TattooGeneratorStateCopyWith<$Res> {
  factory $TattooGeneratorStateCopyWith(TattooGeneratorState value,
          $Res Function(TattooGeneratorState) then) =
      _$TattooGeneratorStateCopyWithImpl<$Res, TattooGeneratorState>;
}

/// @nodoc
class _$TattooGeneratorStateCopyWithImpl<$Res,
        $Val extends TattooGeneratorState>
    implements $TattooGeneratorStateCopyWith<$Res> {
  _$TattooGeneratorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TattooGeneratorStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TattooGeneratorState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(String prompt) promptUpdated,
    required TResult Function(TattooStyle style) styleUpdated,
    required TResult Function() historyLoading,
    required TResult Function(
            List<UserTattooDesignDto> designs, bool favoritesOnly)
        historyLoaded,
    required TResult Function(String designId, bool isFavorite) favoriteToggled,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(String prompt)? promptUpdated,
    TResult? Function(TattooStyle style)? styleUpdated,
    TResult? Function()? historyLoading,
    TResult? Function(List<UserTattooDesignDto> designs, bool favoritesOnly)?
        historyLoaded,
    TResult? Function(String designId, bool isFavorite)? favoriteToggled,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(String prompt)? promptUpdated,
    TResult Function(TattooStyle style)? styleUpdated,
    TResult Function()? historyLoading,
    TResult Function(List<UserTattooDesignDto> designs, bool favoritesOnly)?
        historyLoaded,
    TResult Function(String designId, bool isFavorite)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_PromptUpdated value) promptUpdated,
    required TResult Function(_StyleUpdated value) styleUpdated,
    required TResult Function(_HistoryLoading value) historyLoading,
    required TResult Function(_HistoryLoaded value) historyLoaded,
    required TResult Function(_FavoriteToggled value) favoriteToggled,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_PromptUpdated value)? promptUpdated,
    TResult? Function(_StyleUpdated value)? styleUpdated,
    TResult? Function(_HistoryLoading value)? historyLoading,
    TResult? Function(_HistoryLoaded value)? historyLoaded,
    TResult? Function(_FavoriteToggled value)? favoriteToggled,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_PromptUpdated value)? promptUpdated,
    TResult Function(_StyleUpdated value)? styleUpdated,
    TResult Function(_HistoryLoading value)? historyLoading,
    TResult Function(_HistoryLoaded value)? historyLoaded,
    TResult Function(_FavoriteToggled value)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TattooGeneratorState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$TattooGeneratorStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'TattooGeneratorState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(String prompt) promptUpdated,
    required TResult Function(TattooStyle style) styleUpdated,
    required TResult Function() historyLoading,
    required TResult Function(
            List<UserTattooDesignDto> designs, bool favoritesOnly)
        historyLoaded,
    required TResult Function(String designId, bool isFavorite) favoriteToggled,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(String prompt)? promptUpdated,
    TResult? Function(TattooStyle style)? styleUpdated,
    TResult? Function()? historyLoading,
    TResult? Function(List<UserTattooDesignDto> designs, bool favoritesOnly)?
        historyLoaded,
    TResult? Function(String designId, bool isFavorite)? favoriteToggled,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(String prompt)? promptUpdated,
    TResult Function(TattooStyle style)? styleUpdated,
    TResult Function()? historyLoading,
    TResult Function(List<UserTattooDesignDto> designs, bool favoritesOnly)?
        historyLoaded,
    TResult Function(String designId, bool isFavorite)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_PromptUpdated value) promptUpdated,
    required TResult Function(_StyleUpdated value) styleUpdated,
    required TResult Function(_HistoryLoading value) historyLoading,
    required TResult Function(_HistoryLoaded value) historyLoaded,
    required TResult Function(_FavoriteToggled value) favoriteToggled,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_PromptUpdated value)? promptUpdated,
    TResult? Function(_StyleUpdated value)? styleUpdated,
    TResult? Function(_HistoryLoading value)? historyLoading,
    TResult? Function(_HistoryLoaded value)? historyLoaded,
    TResult? Function(_FavoriteToggled value)? favoriteToggled,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_PromptUpdated value)? promptUpdated,
    TResult Function(_StyleUpdated value)? styleUpdated,
    TResult Function(_HistoryLoading value)? historyLoading,
    TResult Function(_HistoryLoaded value)? historyLoaded,
    TResult Function(_FavoriteToggled value)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TattooGeneratorState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<GeneratedTattooImage> images,
      String prompt,
      TattooStyle style,
      String? designId});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$TattooGeneratorStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? prompt = null,
    Object? style = null,
    Object? designId = freezed,
  }) {
    return _then(_$LoadedImpl(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<GeneratedTattooImage>,
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as TattooStyle,
      designId: freezed == designId
          ? _value.designId
          : designId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required final List<GeneratedTattooImage> images,
      required this.prompt,
      required this.style,
      this.designId})
      : _images = images;

  final List<GeneratedTattooImage> _images;
  @override
  List<GeneratedTattooImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String prompt;
  @override
  final TattooStyle style;
  @override
  final String? designId;

  @override
  String toString() {
    return 'TattooGeneratorState.loaded(images: $images, prompt: $prompt, style: $style, designId: $designId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.designId, designId) ||
                other.designId == designId));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_images), prompt, style, designId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(String prompt) promptUpdated,
    required TResult Function(TattooStyle style) styleUpdated,
    required TResult Function() historyLoading,
    required TResult Function(
            List<UserTattooDesignDto> designs, bool favoritesOnly)
        historyLoaded,
    required TResult Function(String designId, bool isFavorite) favoriteToggled,
  }) {
    return loaded(images, prompt, style, designId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(String prompt)? promptUpdated,
    TResult? Function(TattooStyle style)? styleUpdated,
    TResult? Function()? historyLoading,
    TResult? Function(List<UserTattooDesignDto> designs, bool favoritesOnly)?
        historyLoaded,
    TResult? Function(String designId, bool isFavorite)? favoriteToggled,
  }) {
    return loaded?.call(images, prompt, style, designId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(String prompt)? promptUpdated,
    TResult Function(TattooStyle style)? styleUpdated,
    TResult Function()? historyLoading,
    TResult Function(List<UserTattooDesignDto> designs, bool favoritesOnly)?
        historyLoaded,
    TResult Function(String designId, bool isFavorite)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(images, prompt, style, designId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_PromptUpdated value) promptUpdated,
    required TResult Function(_StyleUpdated value) styleUpdated,
    required TResult Function(_HistoryLoading value) historyLoading,
    required TResult Function(_HistoryLoaded value) historyLoaded,
    required TResult Function(_FavoriteToggled value) favoriteToggled,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_PromptUpdated value)? promptUpdated,
    TResult? Function(_StyleUpdated value)? styleUpdated,
    TResult? Function(_HistoryLoading value)? historyLoading,
    TResult? Function(_HistoryLoaded value)? historyLoaded,
    TResult? Function(_FavoriteToggled value)? favoriteToggled,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_PromptUpdated value)? promptUpdated,
    TResult Function(_StyleUpdated value)? styleUpdated,
    TResult Function(_HistoryLoading value)? historyLoading,
    TResult Function(_HistoryLoaded value)? historyLoaded,
    TResult Function(_FavoriteToggled value)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements TattooGeneratorState {
  const factory _Loaded(
      {required final List<GeneratedTattooImage> images,
      required final String prompt,
      required final TattooStyle style,
      final String? designId}) = _$LoadedImpl;

  List<GeneratedTattooImage> get images;
  String get prompt;
  TattooStyle get style;
  String? get designId;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$TattooGeneratorStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'TattooGeneratorState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(String prompt) promptUpdated,
    required TResult Function(TattooStyle style) styleUpdated,
    required TResult Function() historyLoading,
    required TResult Function(
            List<UserTattooDesignDto> designs, bool favoritesOnly)
        historyLoaded,
    required TResult Function(String designId, bool isFavorite) favoriteToggled,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(String prompt)? promptUpdated,
    TResult? Function(TattooStyle style)? styleUpdated,
    TResult? Function()? historyLoading,
    TResult? Function(List<UserTattooDesignDto> designs, bool favoritesOnly)?
        historyLoaded,
    TResult? Function(String designId, bool isFavorite)? favoriteToggled,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(String prompt)? promptUpdated,
    TResult Function(TattooStyle style)? styleUpdated,
    TResult Function()? historyLoading,
    TResult Function(List<UserTattooDesignDto> designs, bool favoritesOnly)?
        historyLoaded,
    TResult Function(String designId, bool isFavorite)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_PromptUpdated value) promptUpdated,
    required TResult Function(_StyleUpdated value) styleUpdated,
    required TResult Function(_HistoryLoading value) historyLoading,
    required TResult Function(_HistoryLoaded value) historyLoaded,
    required TResult Function(_FavoriteToggled value) favoriteToggled,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_PromptUpdated value)? promptUpdated,
    TResult? Function(_StyleUpdated value)? styleUpdated,
    TResult? Function(_HistoryLoading value)? historyLoading,
    TResult? Function(_HistoryLoaded value)? historyLoaded,
    TResult? Function(_FavoriteToggled value)? favoriteToggled,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_PromptUpdated value)? promptUpdated,
    TResult Function(_StyleUpdated value)? styleUpdated,
    TResult Function(_HistoryLoading value)? historyLoading,
    TResult Function(_HistoryLoaded value)? historyLoaded,
    TResult Function(_FavoriteToggled value)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TattooGeneratorState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PromptUpdatedImplCopyWith<$Res> {
  factory _$$PromptUpdatedImplCopyWith(
          _$PromptUpdatedImpl value, $Res Function(_$PromptUpdatedImpl) then) =
      __$$PromptUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String prompt});
}

/// @nodoc
class __$$PromptUpdatedImplCopyWithImpl<$Res>
    extends _$TattooGeneratorStateCopyWithImpl<$Res, _$PromptUpdatedImpl>
    implements _$$PromptUpdatedImplCopyWith<$Res> {
  __$$PromptUpdatedImplCopyWithImpl(
      _$PromptUpdatedImpl _value, $Res Function(_$PromptUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = null,
  }) {
    return _then(_$PromptUpdatedImpl(
      prompt: null == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PromptUpdatedImpl implements _PromptUpdated {
  const _$PromptUpdatedImpl({required this.prompt});

  @override
  final String prompt;

  @override
  String toString() {
    return 'TattooGeneratorState.promptUpdated(prompt: $prompt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromptUpdatedImpl &&
            (identical(other.prompt, prompt) || other.prompt == prompt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prompt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromptUpdatedImplCopyWith<_$PromptUpdatedImpl> get copyWith =>
      __$$PromptUpdatedImplCopyWithImpl<_$PromptUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(String prompt) promptUpdated,
    required TResult Function(TattooStyle style) styleUpdated,
    required TResult Function() historyLoading,
    required TResult Function(
            List<UserTattooDesignDto> designs, bool favoritesOnly)
        historyLoaded,
    required TResult Function(String designId, bool isFavorite) favoriteToggled,
  }) {
    return promptUpdated(prompt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(String prompt)? promptUpdated,
    TResult? Function(TattooStyle style)? styleUpdated,
    TResult? Function()? historyLoading,
    TResult? Function(List<UserTattooDesignDto> designs, bool favoritesOnly)?
        historyLoaded,
    TResult? Function(String designId, bool isFavorite)? favoriteToggled,
  }) {
    return promptUpdated?.call(prompt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(String prompt)? promptUpdated,
    TResult Function(TattooStyle style)? styleUpdated,
    TResult Function()? historyLoading,
    TResult Function(List<UserTattooDesignDto> designs, bool favoritesOnly)?
        historyLoaded,
    TResult Function(String designId, bool isFavorite)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (promptUpdated != null) {
      return promptUpdated(prompt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_PromptUpdated value) promptUpdated,
    required TResult Function(_StyleUpdated value) styleUpdated,
    required TResult Function(_HistoryLoading value) historyLoading,
    required TResult Function(_HistoryLoaded value) historyLoaded,
    required TResult Function(_FavoriteToggled value) favoriteToggled,
  }) {
    return promptUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_PromptUpdated value)? promptUpdated,
    TResult? Function(_StyleUpdated value)? styleUpdated,
    TResult? Function(_HistoryLoading value)? historyLoading,
    TResult? Function(_HistoryLoaded value)? historyLoaded,
    TResult? Function(_FavoriteToggled value)? favoriteToggled,
  }) {
    return promptUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_PromptUpdated value)? promptUpdated,
    TResult Function(_StyleUpdated value)? styleUpdated,
    TResult Function(_HistoryLoading value)? historyLoading,
    TResult Function(_HistoryLoaded value)? historyLoaded,
    TResult Function(_FavoriteToggled value)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (promptUpdated != null) {
      return promptUpdated(this);
    }
    return orElse();
  }
}

abstract class _PromptUpdated implements TattooGeneratorState {
  const factory _PromptUpdated({required final String prompt}) =
      _$PromptUpdatedImpl;

  String get prompt;
  @JsonKey(ignore: true)
  _$$PromptUpdatedImplCopyWith<_$PromptUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StyleUpdatedImplCopyWith<$Res> {
  factory _$$StyleUpdatedImplCopyWith(
          _$StyleUpdatedImpl value, $Res Function(_$StyleUpdatedImpl) then) =
      __$$StyleUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TattooStyle style});
}

/// @nodoc
class __$$StyleUpdatedImplCopyWithImpl<$Res>
    extends _$TattooGeneratorStateCopyWithImpl<$Res, _$StyleUpdatedImpl>
    implements _$$StyleUpdatedImplCopyWith<$Res> {
  __$$StyleUpdatedImplCopyWithImpl(
      _$StyleUpdatedImpl _value, $Res Function(_$StyleUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = null,
  }) {
    return _then(_$StyleUpdatedImpl(
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as TattooStyle,
    ));
  }
}

/// @nodoc

class _$StyleUpdatedImpl implements _StyleUpdated {
  const _$StyleUpdatedImpl({required this.style});

  @override
  final TattooStyle style;

  @override
  String toString() {
    return 'TattooGeneratorState.styleUpdated(style: $style)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StyleUpdatedImpl &&
            (identical(other.style, style) || other.style == style));
  }

  @override
  int get hashCode => Object.hash(runtimeType, style);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StyleUpdatedImplCopyWith<_$StyleUpdatedImpl> get copyWith =>
      __$$StyleUpdatedImplCopyWithImpl<_$StyleUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(String prompt) promptUpdated,
    required TResult Function(TattooStyle style) styleUpdated,
    required TResult Function() historyLoading,
    required TResult Function(
            List<UserTattooDesignDto> designs, bool favoritesOnly)
        historyLoaded,
    required TResult Function(String designId, bool isFavorite) favoriteToggled,
  }) {
    return styleUpdated(style);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(String prompt)? promptUpdated,
    TResult? Function(TattooStyle style)? styleUpdated,
    TResult? Function()? historyLoading,
    TResult? Function(List<UserTattooDesignDto> designs, bool favoritesOnly)?
        historyLoaded,
    TResult? Function(String designId, bool isFavorite)? favoriteToggled,
  }) {
    return styleUpdated?.call(style);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(String prompt)? promptUpdated,
    TResult Function(TattooStyle style)? styleUpdated,
    TResult Function()? historyLoading,
    TResult Function(List<UserTattooDesignDto> designs, bool favoritesOnly)?
        historyLoaded,
    TResult Function(String designId, bool isFavorite)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (styleUpdated != null) {
      return styleUpdated(style);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_PromptUpdated value) promptUpdated,
    required TResult Function(_StyleUpdated value) styleUpdated,
    required TResult Function(_HistoryLoading value) historyLoading,
    required TResult Function(_HistoryLoaded value) historyLoaded,
    required TResult Function(_FavoriteToggled value) favoriteToggled,
  }) {
    return styleUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_PromptUpdated value)? promptUpdated,
    TResult? Function(_StyleUpdated value)? styleUpdated,
    TResult? Function(_HistoryLoading value)? historyLoading,
    TResult? Function(_HistoryLoaded value)? historyLoaded,
    TResult? Function(_FavoriteToggled value)? favoriteToggled,
  }) {
    return styleUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_PromptUpdated value)? promptUpdated,
    TResult Function(_StyleUpdated value)? styleUpdated,
    TResult Function(_HistoryLoading value)? historyLoading,
    TResult Function(_HistoryLoaded value)? historyLoaded,
    TResult Function(_FavoriteToggled value)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (styleUpdated != null) {
      return styleUpdated(this);
    }
    return orElse();
  }
}

abstract class _StyleUpdated implements TattooGeneratorState {
  const factory _StyleUpdated({required final TattooStyle style}) =
      _$StyleUpdatedImpl;

  TattooStyle get style;
  @JsonKey(ignore: true)
  _$$StyleUpdatedImplCopyWith<_$StyleUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HistoryLoadingImplCopyWith<$Res> {
  factory _$$HistoryLoadingImplCopyWith(_$HistoryLoadingImpl value,
          $Res Function(_$HistoryLoadingImpl) then) =
      __$$HistoryLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HistoryLoadingImplCopyWithImpl<$Res>
    extends _$TattooGeneratorStateCopyWithImpl<$Res, _$HistoryLoadingImpl>
    implements _$$HistoryLoadingImplCopyWith<$Res> {
  __$$HistoryLoadingImplCopyWithImpl(
      _$HistoryLoadingImpl _value, $Res Function(_$HistoryLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HistoryLoadingImpl implements _HistoryLoading {
  const _$HistoryLoadingImpl();

  @override
  String toString() {
    return 'TattooGeneratorState.historyLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HistoryLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(String prompt) promptUpdated,
    required TResult Function(TattooStyle style) styleUpdated,
    required TResult Function() historyLoading,
    required TResult Function(
            List<UserTattooDesignDto> designs, bool favoritesOnly)
        historyLoaded,
    required TResult Function(String designId, bool isFavorite) favoriteToggled,
  }) {
    return historyLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(String prompt)? promptUpdated,
    TResult? Function(TattooStyle style)? styleUpdated,
    TResult? Function()? historyLoading,
    TResult? Function(List<UserTattooDesignDto> designs, bool favoritesOnly)?
        historyLoaded,
    TResult? Function(String designId, bool isFavorite)? favoriteToggled,
  }) {
    return historyLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(String prompt)? promptUpdated,
    TResult Function(TattooStyle style)? styleUpdated,
    TResult Function()? historyLoading,
    TResult Function(List<UserTattooDesignDto> designs, bool favoritesOnly)?
        historyLoaded,
    TResult Function(String designId, bool isFavorite)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (historyLoading != null) {
      return historyLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_PromptUpdated value) promptUpdated,
    required TResult Function(_StyleUpdated value) styleUpdated,
    required TResult Function(_HistoryLoading value) historyLoading,
    required TResult Function(_HistoryLoaded value) historyLoaded,
    required TResult Function(_FavoriteToggled value) favoriteToggled,
  }) {
    return historyLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_PromptUpdated value)? promptUpdated,
    TResult? Function(_StyleUpdated value)? styleUpdated,
    TResult? Function(_HistoryLoading value)? historyLoading,
    TResult? Function(_HistoryLoaded value)? historyLoaded,
    TResult? Function(_FavoriteToggled value)? favoriteToggled,
  }) {
    return historyLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_PromptUpdated value)? promptUpdated,
    TResult Function(_StyleUpdated value)? styleUpdated,
    TResult Function(_HistoryLoading value)? historyLoading,
    TResult Function(_HistoryLoaded value)? historyLoaded,
    TResult Function(_FavoriteToggled value)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (historyLoading != null) {
      return historyLoading(this);
    }
    return orElse();
  }
}

abstract class _HistoryLoading implements TattooGeneratorState {
  const factory _HistoryLoading() = _$HistoryLoadingImpl;
}

/// @nodoc
abstract class _$$HistoryLoadedImplCopyWith<$Res> {
  factory _$$HistoryLoadedImplCopyWith(
          _$HistoryLoadedImpl value, $Res Function(_$HistoryLoadedImpl) then) =
      __$$HistoryLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserTattooDesignDto> designs, bool favoritesOnly});
}

/// @nodoc
class __$$HistoryLoadedImplCopyWithImpl<$Res>
    extends _$TattooGeneratorStateCopyWithImpl<$Res, _$HistoryLoadedImpl>
    implements _$$HistoryLoadedImplCopyWith<$Res> {
  __$$HistoryLoadedImplCopyWithImpl(
      _$HistoryLoadedImpl _value, $Res Function(_$HistoryLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? designs = null,
    Object? favoritesOnly = null,
  }) {
    return _then(_$HistoryLoadedImpl(
      designs: null == designs
          ? _value._designs
          : designs // ignore: cast_nullable_to_non_nullable
              as List<UserTattooDesignDto>,
      favoritesOnly: null == favoritesOnly
          ? _value.favoritesOnly
          : favoritesOnly // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HistoryLoadedImpl implements _HistoryLoaded {
  const _$HistoryLoadedImpl(
      {required final List<UserTattooDesignDto> designs,
      required this.favoritesOnly})
      : _designs = designs;

  final List<UserTattooDesignDto> _designs;
  @override
  List<UserTattooDesignDto> get designs {
    if (_designs is EqualUnmodifiableListView) return _designs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_designs);
  }

  @override
  final bool favoritesOnly;

  @override
  String toString() {
    return 'TattooGeneratorState.historyLoaded(designs: $designs, favoritesOnly: $favoritesOnly)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryLoadedImpl &&
            const DeepCollectionEquality().equals(other._designs, _designs) &&
            (identical(other.favoritesOnly, favoritesOnly) ||
                other.favoritesOnly == favoritesOnly));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_designs), favoritesOnly);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryLoadedImplCopyWith<_$HistoryLoadedImpl> get copyWith =>
      __$$HistoryLoadedImplCopyWithImpl<_$HistoryLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(String prompt) promptUpdated,
    required TResult Function(TattooStyle style) styleUpdated,
    required TResult Function() historyLoading,
    required TResult Function(
            List<UserTattooDesignDto> designs, bool favoritesOnly)
        historyLoaded,
    required TResult Function(String designId, bool isFavorite) favoriteToggled,
  }) {
    return historyLoaded(designs, favoritesOnly);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(String prompt)? promptUpdated,
    TResult? Function(TattooStyle style)? styleUpdated,
    TResult? Function()? historyLoading,
    TResult? Function(List<UserTattooDesignDto> designs, bool favoritesOnly)?
        historyLoaded,
    TResult? Function(String designId, bool isFavorite)? favoriteToggled,
  }) {
    return historyLoaded?.call(designs, favoritesOnly);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(String prompt)? promptUpdated,
    TResult Function(TattooStyle style)? styleUpdated,
    TResult Function()? historyLoading,
    TResult Function(List<UserTattooDesignDto> designs, bool favoritesOnly)?
        historyLoaded,
    TResult Function(String designId, bool isFavorite)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (historyLoaded != null) {
      return historyLoaded(designs, favoritesOnly);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_PromptUpdated value) promptUpdated,
    required TResult Function(_StyleUpdated value) styleUpdated,
    required TResult Function(_HistoryLoading value) historyLoading,
    required TResult Function(_HistoryLoaded value) historyLoaded,
    required TResult Function(_FavoriteToggled value) favoriteToggled,
  }) {
    return historyLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_PromptUpdated value)? promptUpdated,
    TResult? Function(_StyleUpdated value)? styleUpdated,
    TResult? Function(_HistoryLoading value)? historyLoading,
    TResult? Function(_HistoryLoaded value)? historyLoaded,
    TResult? Function(_FavoriteToggled value)? favoriteToggled,
  }) {
    return historyLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_PromptUpdated value)? promptUpdated,
    TResult Function(_StyleUpdated value)? styleUpdated,
    TResult Function(_HistoryLoading value)? historyLoading,
    TResult Function(_HistoryLoaded value)? historyLoaded,
    TResult Function(_FavoriteToggled value)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (historyLoaded != null) {
      return historyLoaded(this);
    }
    return orElse();
  }
}

abstract class _HistoryLoaded implements TattooGeneratorState {
  const factory _HistoryLoaded(
      {required final List<UserTattooDesignDto> designs,
      required final bool favoritesOnly}) = _$HistoryLoadedImpl;

  List<UserTattooDesignDto> get designs;
  bool get favoritesOnly;
  @JsonKey(ignore: true)
  _$$HistoryLoadedImplCopyWith<_$HistoryLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoriteToggledImplCopyWith<$Res> {
  factory _$$FavoriteToggledImplCopyWith(_$FavoriteToggledImpl value,
          $Res Function(_$FavoriteToggledImpl) then) =
      __$$FavoriteToggledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String designId, bool isFavorite});
}

/// @nodoc
class __$$FavoriteToggledImplCopyWithImpl<$Res>
    extends _$TattooGeneratorStateCopyWithImpl<$Res, _$FavoriteToggledImpl>
    implements _$$FavoriteToggledImplCopyWith<$Res> {
  __$$FavoriteToggledImplCopyWithImpl(
      _$FavoriteToggledImpl _value, $Res Function(_$FavoriteToggledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? designId = null,
    Object? isFavorite = null,
  }) {
    return _then(_$FavoriteToggledImpl(
      designId: null == designId
          ? _value.designId
          : designId // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FavoriteToggledImpl implements _FavoriteToggled {
  const _$FavoriteToggledImpl(
      {required this.designId, required this.isFavorite});

  @override
  final String designId;
  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'TattooGeneratorState.favoriteToggled(designId: $designId, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteToggledImpl &&
            (identical(other.designId, designId) ||
                other.designId == designId) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, designId, isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteToggledImplCopyWith<_$FavoriteToggledImpl> get copyWith =>
      __$$FavoriteToggledImplCopyWithImpl<_$FavoriteToggledImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(String prompt) promptUpdated,
    required TResult Function(TattooStyle style) styleUpdated,
    required TResult Function() historyLoading,
    required TResult Function(
            List<UserTattooDesignDto> designs, bool favoritesOnly)
        historyLoaded,
    required TResult Function(String designId, bool isFavorite) favoriteToggled,
  }) {
    return favoriteToggled(designId, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(String prompt)? promptUpdated,
    TResult? Function(TattooStyle style)? styleUpdated,
    TResult? Function()? historyLoading,
    TResult? Function(List<UserTattooDesignDto> designs, bool favoritesOnly)?
        historyLoaded,
    TResult? Function(String designId, bool isFavorite)? favoriteToggled,
  }) {
    return favoriteToggled?.call(designId, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GeneratedTattooImage> images, String prompt,
            TattooStyle style, String? designId)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(String prompt)? promptUpdated,
    TResult Function(TattooStyle style)? styleUpdated,
    TResult Function()? historyLoading,
    TResult Function(List<UserTattooDesignDto> designs, bool favoritesOnly)?
        historyLoaded,
    TResult Function(String designId, bool isFavorite)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (favoriteToggled != null) {
      return favoriteToggled(designId, isFavorite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_PromptUpdated value) promptUpdated,
    required TResult Function(_StyleUpdated value) styleUpdated,
    required TResult Function(_HistoryLoading value) historyLoading,
    required TResult Function(_HistoryLoaded value) historyLoaded,
    required TResult Function(_FavoriteToggled value) favoriteToggled,
  }) {
    return favoriteToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_PromptUpdated value)? promptUpdated,
    TResult? Function(_StyleUpdated value)? styleUpdated,
    TResult? Function(_HistoryLoading value)? historyLoading,
    TResult? Function(_HistoryLoaded value)? historyLoaded,
    TResult? Function(_FavoriteToggled value)? favoriteToggled,
  }) {
    return favoriteToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_PromptUpdated value)? promptUpdated,
    TResult Function(_StyleUpdated value)? styleUpdated,
    TResult Function(_HistoryLoading value)? historyLoading,
    TResult Function(_HistoryLoaded value)? historyLoaded,
    TResult Function(_FavoriteToggled value)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (favoriteToggled != null) {
      return favoriteToggled(this);
    }
    return orElse();
  }
}

abstract class _FavoriteToggled implements TattooGeneratorState {
  const factory _FavoriteToggled(
      {required final String designId,
      required final bool isFavorite}) = _$FavoriteToggledImpl;

  String get designId;
  bool get isFavorite;
  @JsonKey(ignore: true)
  _$$FavoriteToggledImplCopyWith<_$FavoriteToggledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
