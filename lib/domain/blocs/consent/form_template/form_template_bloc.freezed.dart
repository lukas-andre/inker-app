// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_template_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FormTemplateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String artistId, bool? isActive)
        loadTemplatesForArtist,
    required TResult Function(String templateId) loadTemplateById,
    required TResult Function(CreateFormTemplateDto dto) createTemplate,
    required TResult Function(String templateId, CreateFormTemplateDto dto)
        updateTemplate,
    required TResult Function(String templateId) deleteTemplate,
    required TResult Function() clearSelectedTemplate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String artistId, bool? isActive)? loadTemplatesForArtist,
    TResult? Function(String templateId)? loadTemplateById,
    TResult? Function(CreateFormTemplateDto dto)? createTemplate,
    TResult? Function(String templateId, CreateFormTemplateDto dto)?
        updateTemplate,
    TResult? Function(String templateId)? deleteTemplate,
    TResult? Function()? clearSelectedTemplate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String artistId, bool? isActive)? loadTemplatesForArtist,
    TResult Function(String templateId)? loadTemplateById,
    TResult Function(CreateFormTemplateDto dto)? createTemplate,
    TResult Function(String templateId, CreateFormTemplateDto dto)?
        updateTemplate,
    TResult Function(String templateId)? deleteTemplate,
    TResult Function()? clearSelectedTemplate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadTemplatesForArtist value)
        loadTemplatesForArtist,
    required TResult Function(_LoadTemplateById value) loadTemplateById,
    required TResult Function(_CreateTemplate value) createTemplate,
    required TResult Function(_UpdateTemplate value) updateTemplate,
    required TResult Function(_DeleteTemplate value) deleteTemplate,
    required TResult Function(_ClearSelectedTemplate value)
        clearSelectedTemplate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadTemplatesForArtist value)? loadTemplatesForArtist,
    TResult? Function(_LoadTemplateById value)? loadTemplateById,
    TResult? Function(_CreateTemplate value)? createTemplate,
    TResult? Function(_UpdateTemplate value)? updateTemplate,
    TResult? Function(_DeleteTemplate value)? deleteTemplate,
    TResult? Function(_ClearSelectedTemplate value)? clearSelectedTemplate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadTemplatesForArtist value)? loadTemplatesForArtist,
    TResult Function(_LoadTemplateById value)? loadTemplateById,
    TResult Function(_CreateTemplate value)? createTemplate,
    TResult Function(_UpdateTemplate value)? updateTemplate,
    TResult Function(_DeleteTemplate value)? deleteTemplate,
    TResult Function(_ClearSelectedTemplate value)? clearSelectedTemplate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormTemplateEventCopyWith<$Res> {
  factory $FormTemplateEventCopyWith(
          FormTemplateEvent value, $Res Function(FormTemplateEvent) then) =
      _$FormTemplateEventCopyWithImpl<$Res, FormTemplateEvent>;
}

/// @nodoc
class _$FormTemplateEventCopyWithImpl<$Res, $Val extends FormTemplateEvent>
    implements $FormTemplateEventCopyWith<$Res> {
  _$FormTemplateEventCopyWithImpl(this._value, this._then);

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
    extends _$FormTemplateEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'FormTemplateEvent.started()';
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
    required TResult Function(String artistId, bool? isActive)
        loadTemplatesForArtist,
    required TResult Function(String templateId) loadTemplateById,
    required TResult Function(CreateFormTemplateDto dto) createTemplate,
    required TResult Function(String templateId, CreateFormTemplateDto dto)
        updateTemplate,
    required TResult Function(String templateId) deleteTemplate,
    required TResult Function() clearSelectedTemplate,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String artistId, bool? isActive)? loadTemplatesForArtist,
    TResult? Function(String templateId)? loadTemplateById,
    TResult? Function(CreateFormTemplateDto dto)? createTemplate,
    TResult? Function(String templateId, CreateFormTemplateDto dto)?
        updateTemplate,
    TResult? Function(String templateId)? deleteTemplate,
    TResult? Function()? clearSelectedTemplate,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String artistId, bool? isActive)? loadTemplatesForArtist,
    TResult Function(String templateId)? loadTemplateById,
    TResult Function(CreateFormTemplateDto dto)? createTemplate,
    TResult Function(String templateId, CreateFormTemplateDto dto)?
        updateTemplate,
    TResult Function(String templateId)? deleteTemplate,
    TResult Function()? clearSelectedTemplate,
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
    required TResult Function(_LoadTemplatesForArtist value)
        loadTemplatesForArtist,
    required TResult Function(_LoadTemplateById value) loadTemplateById,
    required TResult Function(_CreateTemplate value) createTemplate,
    required TResult Function(_UpdateTemplate value) updateTemplate,
    required TResult Function(_DeleteTemplate value) deleteTemplate,
    required TResult Function(_ClearSelectedTemplate value)
        clearSelectedTemplate,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadTemplatesForArtist value)? loadTemplatesForArtist,
    TResult? Function(_LoadTemplateById value)? loadTemplateById,
    TResult? Function(_CreateTemplate value)? createTemplate,
    TResult? Function(_UpdateTemplate value)? updateTemplate,
    TResult? Function(_DeleteTemplate value)? deleteTemplate,
    TResult? Function(_ClearSelectedTemplate value)? clearSelectedTemplate,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadTemplatesForArtist value)? loadTemplatesForArtist,
    TResult Function(_LoadTemplateById value)? loadTemplateById,
    TResult Function(_CreateTemplate value)? createTemplate,
    TResult Function(_UpdateTemplate value)? updateTemplate,
    TResult Function(_DeleteTemplate value)? deleteTemplate,
    TResult Function(_ClearSelectedTemplate value)? clearSelectedTemplate,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FormTemplateEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadTemplatesForArtistImplCopyWith<$Res> {
  factory _$$LoadTemplatesForArtistImplCopyWith(
          _$LoadTemplatesForArtistImpl value,
          $Res Function(_$LoadTemplatesForArtistImpl) then) =
      __$$LoadTemplatesForArtistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String artistId, bool? isActive});
}

/// @nodoc
class __$$LoadTemplatesForArtistImplCopyWithImpl<$Res>
    extends _$FormTemplateEventCopyWithImpl<$Res, _$LoadTemplatesForArtistImpl>
    implements _$$LoadTemplatesForArtistImplCopyWith<$Res> {
  __$$LoadTemplatesForArtistImplCopyWithImpl(
      _$LoadTemplatesForArtistImpl _value,
      $Res Function(_$LoadTemplatesForArtistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistId = null,
    Object? isActive = freezed,
  }) {
    return _then(_$LoadTemplatesForArtistImpl(
      null == artistId
          ? _value.artistId
          : artistId // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$LoadTemplatesForArtistImpl implements _LoadTemplatesForArtist {
  const _$LoadTemplatesForArtistImpl(this.artistId, {this.isActive});

  @override
  final String artistId;
  @override
  final bool? isActive;

  @override
  String toString() {
    return 'FormTemplateEvent.loadTemplatesForArtist(artistId: $artistId, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTemplatesForArtistImpl &&
            (identical(other.artistId, artistId) ||
                other.artistId == artistId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artistId, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadTemplatesForArtistImplCopyWith<_$LoadTemplatesForArtistImpl>
      get copyWith => __$$LoadTemplatesForArtistImplCopyWithImpl<
          _$LoadTemplatesForArtistImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String artistId, bool? isActive)
        loadTemplatesForArtist,
    required TResult Function(String templateId) loadTemplateById,
    required TResult Function(CreateFormTemplateDto dto) createTemplate,
    required TResult Function(String templateId, CreateFormTemplateDto dto)
        updateTemplate,
    required TResult Function(String templateId) deleteTemplate,
    required TResult Function() clearSelectedTemplate,
  }) {
    return loadTemplatesForArtist(artistId, isActive);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String artistId, bool? isActive)? loadTemplatesForArtist,
    TResult? Function(String templateId)? loadTemplateById,
    TResult? Function(CreateFormTemplateDto dto)? createTemplate,
    TResult? Function(String templateId, CreateFormTemplateDto dto)?
        updateTemplate,
    TResult? Function(String templateId)? deleteTemplate,
    TResult? Function()? clearSelectedTemplate,
  }) {
    return loadTemplatesForArtist?.call(artistId, isActive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String artistId, bool? isActive)? loadTemplatesForArtist,
    TResult Function(String templateId)? loadTemplateById,
    TResult Function(CreateFormTemplateDto dto)? createTemplate,
    TResult Function(String templateId, CreateFormTemplateDto dto)?
        updateTemplate,
    TResult Function(String templateId)? deleteTemplate,
    TResult Function()? clearSelectedTemplate,
    required TResult orElse(),
  }) {
    if (loadTemplatesForArtist != null) {
      return loadTemplatesForArtist(artistId, isActive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadTemplatesForArtist value)
        loadTemplatesForArtist,
    required TResult Function(_LoadTemplateById value) loadTemplateById,
    required TResult Function(_CreateTemplate value) createTemplate,
    required TResult Function(_UpdateTemplate value) updateTemplate,
    required TResult Function(_DeleteTemplate value) deleteTemplate,
    required TResult Function(_ClearSelectedTemplate value)
        clearSelectedTemplate,
  }) {
    return loadTemplatesForArtist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadTemplatesForArtist value)? loadTemplatesForArtist,
    TResult? Function(_LoadTemplateById value)? loadTemplateById,
    TResult? Function(_CreateTemplate value)? createTemplate,
    TResult? Function(_UpdateTemplate value)? updateTemplate,
    TResult? Function(_DeleteTemplate value)? deleteTemplate,
    TResult? Function(_ClearSelectedTemplate value)? clearSelectedTemplate,
  }) {
    return loadTemplatesForArtist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadTemplatesForArtist value)? loadTemplatesForArtist,
    TResult Function(_LoadTemplateById value)? loadTemplateById,
    TResult Function(_CreateTemplate value)? createTemplate,
    TResult Function(_UpdateTemplate value)? updateTemplate,
    TResult Function(_DeleteTemplate value)? deleteTemplate,
    TResult Function(_ClearSelectedTemplate value)? clearSelectedTemplate,
    required TResult orElse(),
  }) {
    if (loadTemplatesForArtist != null) {
      return loadTemplatesForArtist(this);
    }
    return orElse();
  }
}

abstract class _LoadTemplatesForArtist implements FormTemplateEvent {
  const factory _LoadTemplatesForArtist(final String artistId,
      {final bool? isActive}) = _$LoadTemplatesForArtistImpl;

  String get artistId;
  bool? get isActive;
  @JsonKey(ignore: true)
  _$$LoadTemplatesForArtistImplCopyWith<_$LoadTemplatesForArtistImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadTemplateByIdImplCopyWith<$Res> {
  factory _$$LoadTemplateByIdImplCopyWith(_$LoadTemplateByIdImpl value,
          $Res Function(_$LoadTemplateByIdImpl) then) =
      __$$LoadTemplateByIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String templateId});
}

/// @nodoc
class __$$LoadTemplateByIdImplCopyWithImpl<$Res>
    extends _$FormTemplateEventCopyWithImpl<$Res, _$LoadTemplateByIdImpl>
    implements _$$LoadTemplateByIdImplCopyWith<$Res> {
  __$$LoadTemplateByIdImplCopyWithImpl(_$LoadTemplateByIdImpl _value,
      $Res Function(_$LoadTemplateByIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? templateId = null,
  }) {
    return _then(_$LoadTemplateByIdImpl(
      null == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadTemplateByIdImpl implements _LoadTemplateById {
  const _$LoadTemplateByIdImpl(this.templateId);

  @override
  final String templateId;

  @override
  String toString() {
    return 'FormTemplateEvent.loadTemplateById(templateId: $templateId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTemplateByIdImpl &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, templateId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadTemplateByIdImplCopyWith<_$LoadTemplateByIdImpl> get copyWith =>
      __$$LoadTemplateByIdImplCopyWithImpl<_$LoadTemplateByIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String artistId, bool? isActive)
        loadTemplatesForArtist,
    required TResult Function(String templateId) loadTemplateById,
    required TResult Function(CreateFormTemplateDto dto) createTemplate,
    required TResult Function(String templateId, CreateFormTemplateDto dto)
        updateTemplate,
    required TResult Function(String templateId) deleteTemplate,
    required TResult Function() clearSelectedTemplate,
  }) {
    return loadTemplateById(templateId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String artistId, bool? isActive)? loadTemplatesForArtist,
    TResult? Function(String templateId)? loadTemplateById,
    TResult? Function(CreateFormTemplateDto dto)? createTemplate,
    TResult? Function(String templateId, CreateFormTemplateDto dto)?
        updateTemplate,
    TResult? Function(String templateId)? deleteTemplate,
    TResult? Function()? clearSelectedTemplate,
  }) {
    return loadTemplateById?.call(templateId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String artistId, bool? isActive)? loadTemplatesForArtist,
    TResult Function(String templateId)? loadTemplateById,
    TResult Function(CreateFormTemplateDto dto)? createTemplate,
    TResult Function(String templateId, CreateFormTemplateDto dto)?
        updateTemplate,
    TResult Function(String templateId)? deleteTemplate,
    TResult Function()? clearSelectedTemplate,
    required TResult orElse(),
  }) {
    if (loadTemplateById != null) {
      return loadTemplateById(templateId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadTemplatesForArtist value)
        loadTemplatesForArtist,
    required TResult Function(_LoadTemplateById value) loadTemplateById,
    required TResult Function(_CreateTemplate value) createTemplate,
    required TResult Function(_UpdateTemplate value) updateTemplate,
    required TResult Function(_DeleteTemplate value) deleteTemplate,
    required TResult Function(_ClearSelectedTemplate value)
        clearSelectedTemplate,
  }) {
    return loadTemplateById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadTemplatesForArtist value)? loadTemplatesForArtist,
    TResult? Function(_LoadTemplateById value)? loadTemplateById,
    TResult? Function(_CreateTemplate value)? createTemplate,
    TResult? Function(_UpdateTemplate value)? updateTemplate,
    TResult? Function(_DeleteTemplate value)? deleteTemplate,
    TResult? Function(_ClearSelectedTemplate value)? clearSelectedTemplate,
  }) {
    return loadTemplateById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadTemplatesForArtist value)? loadTemplatesForArtist,
    TResult Function(_LoadTemplateById value)? loadTemplateById,
    TResult Function(_CreateTemplate value)? createTemplate,
    TResult Function(_UpdateTemplate value)? updateTemplate,
    TResult Function(_DeleteTemplate value)? deleteTemplate,
    TResult Function(_ClearSelectedTemplate value)? clearSelectedTemplate,
    required TResult orElse(),
  }) {
    if (loadTemplateById != null) {
      return loadTemplateById(this);
    }
    return orElse();
  }
}

abstract class _LoadTemplateById implements FormTemplateEvent {
  const factory _LoadTemplateById(final String templateId) =
      _$LoadTemplateByIdImpl;

  String get templateId;
  @JsonKey(ignore: true)
  _$$LoadTemplateByIdImplCopyWith<_$LoadTemplateByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateTemplateImplCopyWith<$Res> {
  factory _$$CreateTemplateImplCopyWith(_$CreateTemplateImpl value,
          $Res Function(_$CreateTemplateImpl) then) =
      __$$CreateTemplateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateFormTemplateDto dto});

  $CreateFormTemplateDtoCopyWith<$Res> get dto;
}

/// @nodoc
class __$$CreateTemplateImplCopyWithImpl<$Res>
    extends _$FormTemplateEventCopyWithImpl<$Res, _$CreateTemplateImpl>
    implements _$$CreateTemplateImplCopyWith<$Res> {
  __$$CreateTemplateImplCopyWithImpl(
      _$CreateTemplateImpl _value, $Res Function(_$CreateTemplateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dto = null,
  }) {
    return _then(_$CreateTemplateImpl(
      null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as CreateFormTemplateDto,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateFormTemplateDtoCopyWith<$Res> get dto {
    return $CreateFormTemplateDtoCopyWith<$Res>(_value.dto, (value) {
      return _then(_value.copyWith(dto: value));
    });
  }
}

/// @nodoc

class _$CreateTemplateImpl implements _CreateTemplate {
  const _$CreateTemplateImpl(this.dto);

  @override
  final CreateFormTemplateDto dto;

  @override
  String toString() {
    return 'FormTemplateEvent.createTemplate(dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTemplateImpl &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTemplateImplCopyWith<_$CreateTemplateImpl> get copyWith =>
      __$$CreateTemplateImplCopyWithImpl<_$CreateTemplateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String artistId, bool? isActive)
        loadTemplatesForArtist,
    required TResult Function(String templateId) loadTemplateById,
    required TResult Function(CreateFormTemplateDto dto) createTemplate,
    required TResult Function(String templateId, CreateFormTemplateDto dto)
        updateTemplate,
    required TResult Function(String templateId) deleteTemplate,
    required TResult Function() clearSelectedTemplate,
  }) {
    return createTemplate(dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String artistId, bool? isActive)? loadTemplatesForArtist,
    TResult? Function(String templateId)? loadTemplateById,
    TResult? Function(CreateFormTemplateDto dto)? createTemplate,
    TResult? Function(String templateId, CreateFormTemplateDto dto)?
        updateTemplate,
    TResult? Function(String templateId)? deleteTemplate,
    TResult? Function()? clearSelectedTemplate,
  }) {
    return createTemplate?.call(dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String artistId, bool? isActive)? loadTemplatesForArtist,
    TResult Function(String templateId)? loadTemplateById,
    TResult Function(CreateFormTemplateDto dto)? createTemplate,
    TResult Function(String templateId, CreateFormTemplateDto dto)?
        updateTemplate,
    TResult Function(String templateId)? deleteTemplate,
    TResult Function()? clearSelectedTemplate,
    required TResult orElse(),
  }) {
    if (createTemplate != null) {
      return createTemplate(dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadTemplatesForArtist value)
        loadTemplatesForArtist,
    required TResult Function(_LoadTemplateById value) loadTemplateById,
    required TResult Function(_CreateTemplate value) createTemplate,
    required TResult Function(_UpdateTemplate value) updateTemplate,
    required TResult Function(_DeleteTemplate value) deleteTemplate,
    required TResult Function(_ClearSelectedTemplate value)
        clearSelectedTemplate,
  }) {
    return createTemplate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadTemplatesForArtist value)? loadTemplatesForArtist,
    TResult? Function(_LoadTemplateById value)? loadTemplateById,
    TResult? Function(_CreateTemplate value)? createTemplate,
    TResult? Function(_UpdateTemplate value)? updateTemplate,
    TResult? Function(_DeleteTemplate value)? deleteTemplate,
    TResult? Function(_ClearSelectedTemplate value)? clearSelectedTemplate,
  }) {
    return createTemplate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadTemplatesForArtist value)? loadTemplatesForArtist,
    TResult Function(_LoadTemplateById value)? loadTemplateById,
    TResult Function(_CreateTemplate value)? createTemplate,
    TResult Function(_UpdateTemplate value)? updateTemplate,
    TResult Function(_DeleteTemplate value)? deleteTemplate,
    TResult Function(_ClearSelectedTemplate value)? clearSelectedTemplate,
    required TResult orElse(),
  }) {
    if (createTemplate != null) {
      return createTemplate(this);
    }
    return orElse();
  }
}

abstract class _CreateTemplate implements FormTemplateEvent {
  const factory _CreateTemplate(final CreateFormTemplateDto dto) =
      _$CreateTemplateImpl;

  CreateFormTemplateDto get dto;
  @JsonKey(ignore: true)
  _$$CreateTemplateImplCopyWith<_$CreateTemplateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTemplateImplCopyWith<$Res> {
  factory _$$UpdateTemplateImplCopyWith(_$UpdateTemplateImpl value,
          $Res Function(_$UpdateTemplateImpl) then) =
      __$$UpdateTemplateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String templateId, CreateFormTemplateDto dto});

  $CreateFormTemplateDtoCopyWith<$Res> get dto;
}

/// @nodoc
class __$$UpdateTemplateImplCopyWithImpl<$Res>
    extends _$FormTemplateEventCopyWithImpl<$Res, _$UpdateTemplateImpl>
    implements _$$UpdateTemplateImplCopyWith<$Res> {
  __$$UpdateTemplateImplCopyWithImpl(
      _$UpdateTemplateImpl _value, $Res Function(_$UpdateTemplateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? templateId = null,
    Object? dto = null,
  }) {
    return _then(_$UpdateTemplateImpl(
      null == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String,
      null == dto
          ? _value.dto
          : dto // ignore: cast_nullable_to_non_nullable
              as CreateFormTemplateDto,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateFormTemplateDtoCopyWith<$Res> get dto {
    return $CreateFormTemplateDtoCopyWith<$Res>(_value.dto, (value) {
      return _then(_value.copyWith(dto: value));
    });
  }
}

/// @nodoc

class _$UpdateTemplateImpl implements _UpdateTemplate {
  const _$UpdateTemplateImpl(this.templateId, this.dto);

  @override
  final String templateId;
  @override
  final CreateFormTemplateDto dto;

  @override
  String toString() {
    return 'FormTemplateEvent.updateTemplate(templateId: $templateId, dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTemplateImpl &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId) &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, templateId, dto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTemplateImplCopyWith<_$UpdateTemplateImpl> get copyWith =>
      __$$UpdateTemplateImplCopyWithImpl<_$UpdateTemplateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String artistId, bool? isActive)
        loadTemplatesForArtist,
    required TResult Function(String templateId) loadTemplateById,
    required TResult Function(CreateFormTemplateDto dto) createTemplate,
    required TResult Function(String templateId, CreateFormTemplateDto dto)
        updateTemplate,
    required TResult Function(String templateId) deleteTemplate,
    required TResult Function() clearSelectedTemplate,
  }) {
    return updateTemplate(templateId, dto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String artistId, bool? isActive)? loadTemplatesForArtist,
    TResult? Function(String templateId)? loadTemplateById,
    TResult? Function(CreateFormTemplateDto dto)? createTemplate,
    TResult? Function(String templateId, CreateFormTemplateDto dto)?
        updateTemplate,
    TResult? Function(String templateId)? deleteTemplate,
    TResult? Function()? clearSelectedTemplate,
  }) {
    return updateTemplate?.call(templateId, dto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String artistId, bool? isActive)? loadTemplatesForArtist,
    TResult Function(String templateId)? loadTemplateById,
    TResult Function(CreateFormTemplateDto dto)? createTemplate,
    TResult Function(String templateId, CreateFormTemplateDto dto)?
        updateTemplate,
    TResult Function(String templateId)? deleteTemplate,
    TResult Function()? clearSelectedTemplate,
    required TResult orElse(),
  }) {
    if (updateTemplate != null) {
      return updateTemplate(templateId, dto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadTemplatesForArtist value)
        loadTemplatesForArtist,
    required TResult Function(_LoadTemplateById value) loadTemplateById,
    required TResult Function(_CreateTemplate value) createTemplate,
    required TResult Function(_UpdateTemplate value) updateTemplate,
    required TResult Function(_DeleteTemplate value) deleteTemplate,
    required TResult Function(_ClearSelectedTemplate value)
        clearSelectedTemplate,
  }) {
    return updateTemplate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadTemplatesForArtist value)? loadTemplatesForArtist,
    TResult? Function(_LoadTemplateById value)? loadTemplateById,
    TResult? Function(_CreateTemplate value)? createTemplate,
    TResult? Function(_UpdateTemplate value)? updateTemplate,
    TResult? Function(_DeleteTemplate value)? deleteTemplate,
    TResult? Function(_ClearSelectedTemplate value)? clearSelectedTemplate,
  }) {
    return updateTemplate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadTemplatesForArtist value)? loadTemplatesForArtist,
    TResult Function(_LoadTemplateById value)? loadTemplateById,
    TResult Function(_CreateTemplate value)? createTemplate,
    TResult Function(_UpdateTemplate value)? updateTemplate,
    TResult Function(_DeleteTemplate value)? deleteTemplate,
    TResult Function(_ClearSelectedTemplate value)? clearSelectedTemplate,
    required TResult orElse(),
  }) {
    if (updateTemplate != null) {
      return updateTemplate(this);
    }
    return orElse();
  }
}

abstract class _UpdateTemplate implements FormTemplateEvent {
  const factory _UpdateTemplate(
          final String templateId, final CreateFormTemplateDto dto) =
      _$UpdateTemplateImpl;

  String get templateId;
  CreateFormTemplateDto get dto;
  @JsonKey(ignore: true)
  _$$UpdateTemplateImplCopyWith<_$UpdateTemplateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTemplateImplCopyWith<$Res> {
  factory _$$DeleteTemplateImplCopyWith(_$DeleteTemplateImpl value,
          $Res Function(_$DeleteTemplateImpl) then) =
      __$$DeleteTemplateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String templateId});
}

/// @nodoc
class __$$DeleteTemplateImplCopyWithImpl<$Res>
    extends _$FormTemplateEventCopyWithImpl<$Res, _$DeleteTemplateImpl>
    implements _$$DeleteTemplateImplCopyWith<$Res> {
  __$$DeleteTemplateImplCopyWithImpl(
      _$DeleteTemplateImpl _value, $Res Function(_$DeleteTemplateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? templateId = null,
  }) {
    return _then(_$DeleteTemplateImpl(
      null == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteTemplateImpl implements _DeleteTemplate {
  const _$DeleteTemplateImpl(this.templateId);

  @override
  final String templateId;

  @override
  String toString() {
    return 'FormTemplateEvent.deleteTemplate(templateId: $templateId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTemplateImpl &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, templateId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTemplateImplCopyWith<_$DeleteTemplateImpl> get copyWith =>
      __$$DeleteTemplateImplCopyWithImpl<_$DeleteTemplateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String artistId, bool? isActive)
        loadTemplatesForArtist,
    required TResult Function(String templateId) loadTemplateById,
    required TResult Function(CreateFormTemplateDto dto) createTemplate,
    required TResult Function(String templateId, CreateFormTemplateDto dto)
        updateTemplate,
    required TResult Function(String templateId) deleteTemplate,
    required TResult Function() clearSelectedTemplate,
  }) {
    return deleteTemplate(templateId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String artistId, bool? isActive)? loadTemplatesForArtist,
    TResult? Function(String templateId)? loadTemplateById,
    TResult? Function(CreateFormTemplateDto dto)? createTemplate,
    TResult? Function(String templateId, CreateFormTemplateDto dto)?
        updateTemplate,
    TResult? Function(String templateId)? deleteTemplate,
    TResult? Function()? clearSelectedTemplate,
  }) {
    return deleteTemplate?.call(templateId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String artistId, bool? isActive)? loadTemplatesForArtist,
    TResult Function(String templateId)? loadTemplateById,
    TResult Function(CreateFormTemplateDto dto)? createTemplate,
    TResult Function(String templateId, CreateFormTemplateDto dto)?
        updateTemplate,
    TResult Function(String templateId)? deleteTemplate,
    TResult Function()? clearSelectedTemplate,
    required TResult orElse(),
  }) {
    if (deleteTemplate != null) {
      return deleteTemplate(templateId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadTemplatesForArtist value)
        loadTemplatesForArtist,
    required TResult Function(_LoadTemplateById value) loadTemplateById,
    required TResult Function(_CreateTemplate value) createTemplate,
    required TResult Function(_UpdateTemplate value) updateTemplate,
    required TResult Function(_DeleteTemplate value) deleteTemplate,
    required TResult Function(_ClearSelectedTemplate value)
        clearSelectedTemplate,
  }) {
    return deleteTemplate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadTemplatesForArtist value)? loadTemplatesForArtist,
    TResult? Function(_LoadTemplateById value)? loadTemplateById,
    TResult? Function(_CreateTemplate value)? createTemplate,
    TResult? Function(_UpdateTemplate value)? updateTemplate,
    TResult? Function(_DeleteTemplate value)? deleteTemplate,
    TResult? Function(_ClearSelectedTemplate value)? clearSelectedTemplate,
  }) {
    return deleteTemplate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadTemplatesForArtist value)? loadTemplatesForArtist,
    TResult Function(_LoadTemplateById value)? loadTemplateById,
    TResult Function(_CreateTemplate value)? createTemplate,
    TResult Function(_UpdateTemplate value)? updateTemplate,
    TResult Function(_DeleteTemplate value)? deleteTemplate,
    TResult Function(_ClearSelectedTemplate value)? clearSelectedTemplate,
    required TResult orElse(),
  }) {
    if (deleteTemplate != null) {
      return deleteTemplate(this);
    }
    return orElse();
  }
}

abstract class _DeleteTemplate implements FormTemplateEvent {
  const factory _DeleteTemplate(final String templateId) = _$DeleteTemplateImpl;

  String get templateId;
  @JsonKey(ignore: true)
  _$$DeleteTemplateImplCopyWith<_$DeleteTemplateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearSelectedTemplateImplCopyWith<$Res> {
  factory _$$ClearSelectedTemplateImplCopyWith(
          _$ClearSelectedTemplateImpl value,
          $Res Function(_$ClearSelectedTemplateImpl) then) =
      __$$ClearSelectedTemplateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearSelectedTemplateImplCopyWithImpl<$Res>
    extends _$FormTemplateEventCopyWithImpl<$Res, _$ClearSelectedTemplateImpl>
    implements _$$ClearSelectedTemplateImplCopyWith<$Res> {
  __$$ClearSelectedTemplateImplCopyWithImpl(_$ClearSelectedTemplateImpl _value,
      $Res Function(_$ClearSelectedTemplateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearSelectedTemplateImpl implements _ClearSelectedTemplate {
  const _$ClearSelectedTemplateImpl();

  @override
  String toString() {
    return 'FormTemplateEvent.clearSelectedTemplate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearSelectedTemplateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String artistId, bool? isActive)
        loadTemplatesForArtist,
    required TResult Function(String templateId) loadTemplateById,
    required TResult Function(CreateFormTemplateDto dto) createTemplate,
    required TResult Function(String templateId, CreateFormTemplateDto dto)
        updateTemplate,
    required TResult Function(String templateId) deleteTemplate,
    required TResult Function() clearSelectedTemplate,
  }) {
    return clearSelectedTemplate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String artistId, bool? isActive)? loadTemplatesForArtist,
    TResult? Function(String templateId)? loadTemplateById,
    TResult? Function(CreateFormTemplateDto dto)? createTemplate,
    TResult? Function(String templateId, CreateFormTemplateDto dto)?
        updateTemplate,
    TResult? Function(String templateId)? deleteTemplate,
    TResult? Function()? clearSelectedTemplate,
  }) {
    return clearSelectedTemplate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String artistId, bool? isActive)? loadTemplatesForArtist,
    TResult Function(String templateId)? loadTemplateById,
    TResult Function(CreateFormTemplateDto dto)? createTemplate,
    TResult Function(String templateId, CreateFormTemplateDto dto)?
        updateTemplate,
    TResult Function(String templateId)? deleteTemplate,
    TResult Function()? clearSelectedTemplate,
    required TResult orElse(),
  }) {
    if (clearSelectedTemplate != null) {
      return clearSelectedTemplate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadTemplatesForArtist value)
        loadTemplatesForArtist,
    required TResult Function(_LoadTemplateById value) loadTemplateById,
    required TResult Function(_CreateTemplate value) createTemplate,
    required TResult Function(_UpdateTemplate value) updateTemplate,
    required TResult Function(_DeleteTemplate value) deleteTemplate,
    required TResult Function(_ClearSelectedTemplate value)
        clearSelectedTemplate,
  }) {
    return clearSelectedTemplate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadTemplatesForArtist value)? loadTemplatesForArtist,
    TResult? Function(_LoadTemplateById value)? loadTemplateById,
    TResult? Function(_CreateTemplate value)? createTemplate,
    TResult? Function(_UpdateTemplate value)? updateTemplate,
    TResult? Function(_DeleteTemplate value)? deleteTemplate,
    TResult? Function(_ClearSelectedTemplate value)? clearSelectedTemplate,
  }) {
    return clearSelectedTemplate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadTemplatesForArtist value)? loadTemplatesForArtist,
    TResult Function(_LoadTemplateById value)? loadTemplateById,
    TResult Function(_CreateTemplate value)? createTemplate,
    TResult Function(_UpdateTemplate value)? updateTemplate,
    TResult Function(_DeleteTemplate value)? deleteTemplate,
    TResult Function(_ClearSelectedTemplate value)? clearSelectedTemplate,
    required TResult orElse(),
  }) {
    if (clearSelectedTemplate != null) {
      return clearSelectedTemplate(this);
    }
    return orElse();
  }
}

abstract class _ClearSelectedTemplate implements FormTemplateEvent {
  const factory _ClearSelectedTemplate() = _$ClearSelectedTemplateImpl;
}

/// @nodoc
mixin _$FormTemplateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<FormTemplate> templates, FormTemplate? selectedTemplate)
        loaded,
    required TResult Function() actionInProgress,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<FormTemplate> templates, FormTemplate? selectedTemplate)?
        loaded,
    TResult? Function()? actionInProgress,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<FormTemplate> templates, FormTemplate? selectedTemplate)?
        loaded,
    TResult Function()? actionInProgress,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormTemplateInitial value) initial,
    required TResult Function(FormTemplateLoading value) loading,
    required TResult Function(FormTemplateLoaded value) loaded,
    required TResult Function(FormTemplateActionInProgress value)
        actionInProgress,
    required TResult Function(FormTemplateActionSuccess value) actionSuccess,
    required TResult Function(FormTemplateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormTemplateInitial value)? initial,
    TResult? Function(FormTemplateLoading value)? loading,
    TResult? Function(FormTemplateLoaded value)? loaded,
    TResult? Function(FormTemplateActionInProgress value)? actionInProgress,
    TResult? Function(FormTemplateActionSuccess value)? actionSuccess,
    TResult? Function(FormTemplateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormTemplateInitial value)? initial,
    TResult Function(FormTemplateLoading value)? loading,
    TResult Function(FormTemplateLoaded value)? loaded,
    TResult Function(FormTemplateActionInProgress value)? actionInProgress,
    TResult Function(FormTemplateActionSuccess value)? actionSuccess,
    TResult Function(FormTemplateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormTemplateStateCopyWith<$Res> {
  factory $FormTemplateStateCopyWith(
          FormTemplateState value, $Res Function(FormTemplateState) then) =
      _$FormTemplateStateCopyWithImpl<$Res, FormTemplateState>;
}

/// @nodoc
class _$FormTemplateStateCopyWithImpl<$Res, $Val extends FormTemplateState>
    implements $FormTemplateStateCopyWith<$Res> {
  _$FormTemplateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FormTemplateInitialImplCopyWith<$Res> {
  factory _$$FormTemplateInitialImplCopyWith(_$FormTemplateInitialImpl value,
          $Res Function(_$FormTemplateInitialImpl) then) =
      __$$FormTemplateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormTemplateInitialImplCopyWithImpl<$Res>
    extends _$FormTemplateStateCopyWithImpl<$Res, _$FormTemplateInitialImpl>
    implements _$$FormTemplateInitialImplCopyWith<$Res> {
  __$$FormTemplateInitialImplCopyWithImpl(_$FormTemplateInitialImpl _value,
      $Res Function(_$FormTemplateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FormTemplateInitialImpl implements FormTemplateInitial {
  const _$FormTemplateInitialImpl();

  @override
  String toString() {
    return 'FormTemplateState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormTemplateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<FormTemplate> templates, FormTemplate? selectedTemplate)
        loaded,
    required TResult Function() actionInProgress,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<FormTemplate> templates, FormTemplate? selectedTemplate)?
        loaded,
    TResult? Function()? actionInProgress,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<FormTemplate> templates, FormTemplate? selectedTemplate)?
        loaded,
    TResult Function()? actionInProgress,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
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
    required TResult Function(FormTemplateInitial value) initial,
    required TResult Function(FormTemplateLoading value) loading,
    required TResult Function(FormTemplateLoaded value) loaded,
    required TResult Function(FormTemplateActionInProgress value)
        actionInProgress,
    required TResult Function(FormTemplateActionSuccess value) actionSuccess,
    required TResult Function(FormTemplateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormTemplateInitial value)? initial,
    TResult? Function(FormTemplateLoading value)? loading,
    TResult? Function(FormTemplateLoaded value)? loaded,
    TResult? Function(FormTemplateActionInProgress value)? actionInProgress,
    TResult? Function(FormTemplateActionSuccess value)? actionSuccess,
    TResult? Function(FormTemplateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormTemplateInitial value)? initial,
    TResult Function(FormTemplateLoading value)? loading,
    TResult Function(FormTemplateLoaded value)? loaded,
    TResult Function(FormTemplateActionInProgress value)? actionInProgress,
    TResult Function(FormTemplateActionSuccess value)? actionSuccess,
    TResult Function(FormTemplateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FormTemplateInitial implements FormTemplateState {
  const factory FormTemplateInitial() = _$FormTemplateInitialImpl;
}

/// @nodoc
abstract class _$$FormTemplateLoadingImplCopyWith<$Res> {
  factory _$$FormTemplateLoadingImplCopyWith(_$FormTemplateLoadingImpl value,
          $Res Function(_$FormTemplateLoadingImpl) then) =
      __$$FormTemplateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormTemplateLoadingImplCopyWithImpl<$Res>
    extends _$FormTemplateStateCopyWithImpl<$Res, _$FormTemplateLoadingImpl>
    implements _$$FormTemplateLoadingImplCopyWith<$Res> {
  __$$FormTemplateLoadingImplCopyWithImpl(_$FormTemplateLoadingImpl _value,
      $Res Function(_$FormTemplateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FormTemplateLoadingImpl implements FormTemplateLoading {
  const _$FormTemplateLoadingImpl();

  @override
  String toString() {
    return 'FormTemplateState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormTemplateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<FormTemplate> templates, FormTemplate? selectedTemplate)
        loaded,
    required TResult Function() actionInProgress,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<FormTemplate> templates, FormTemplate? selectedTemplate)?
        loaded,
    TResult? Function()? actionInProgress,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<FormTemplate> templates, FormTemplate? selectedTemplate)?
        loaded,
    TResult Function()? actionInProgress,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
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
    required TResult Function(FormTemplateInitial value) initial,
    required TResult Function(FormTemplateLoading value) loading,
    required TResult Function(FormTemplateLoaded value) loaded,
    required TResult Function(FormTemplateActionInProgress value)
        actionInProgress,
    required TResult Function(FormTemplateActionSuccess value) actionSuccess,
    required TResult Function(FormTemplateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormTemplateInitial value)? initial,
    TResult? Function(FormTemplateLoading value)? loading,
    TResult? Function(FormTemplateLoaded value)? loaded,
    TResult? Function(FormTemplateActionInProgress value)? actionInProgress,
    TResult? Function(FormTemplateActionSuccess value)? actionSuccess,
    TResult? Function(FormTemplateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormTemplateInitial value)? initial,
    TResult Function(FormTemplateLoading value)? loading,
    TResult Function(FormTemplateLoaded value)? loaded,
    TResult Function(FormTemplateActionInProgress value)? actionInProgress,
    TResult Function(FormTemplateActionSuccess value)? actionSuccess,
    TResult Function(FormTemplateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FormTemplateLoading implements FormTemplateState {
  const factory FormTemplateLoading() = _$FormTemplateLoadingImpl;
}

/// @nodoc
abstract class _$$FormTemplateLoadedImplCopyWith<$Res> {
  factory _$$FormTemplateLoadedImplCopyWith(_$FormTemplateLoadedImpl value,
          $Res Function(_$FormTemplateLoadedImpl) then) =
      __$$FormTemplateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FormTemplate> templates, FormTemplate? selectedTemplate});

  $FormTemplateCopyWith<$Res>? get selectedTemplate;
}

/// @nodoc
class __$$FormTemplateLoadedImplCopyWithImpl<$Res>
    extends _$FormTemplateStateCopyWithImpl<$Res, _$FormTemplateLoadedImpl>
    implements _$$FormTemplateLoadedImplCopyWith<$Res> {
  __$$FormTemplateLoadedImplCopyWithImpl(_$FormTemplateLoadedImpl _value,
      $Res Function(_$FormTemplateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? templates = null,
    Object? selectedTemplate = freezed,
  }) {
    return _then(_$FormTemplateLoadedImpl(
      templates: null == templates
          ? _value._templates
          : templates // ignore: cast_nullable_to_non_nullable
              as List<FormTemplate>,
      selectedTemplate: freezed == selectedTemplate
          ? _value.selectedTemplate
          : selectedTemplate // ignore: cast_nullable_to_non_nullable
              as FormTemplate?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FormTemplateCopyWith<$Res>? get selectedTemplate {
    if (_value.selectedTemplate == null) {
      return null;
    }

    return $FormTemplateCopyWith<$Res>(_value.selectedTemplate!, (value) {
      return _then(_value.copyWith(selectedTemplate: value));
    });
  }
}

/// @nodoc

class _$FormTemplateLoadedImpl implements FormTemplateLoaded {
  const _$FormTemplateLoadedImpl(
      {required final List<FormTemplate> templates, this.selectedTemplate})
      : _templates = templates;

  final List<FormTemplate> _templates;
  @override
  List<FormTemplate> get templates {
    if (_templates is EqualUnmodifiableListView) return _templates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_templates);
  }

  @override
  final FormTemplate? selectedTemplate;

  @override
  String toString() {
    return 'FormTemplateState.loaded(templates: $templates, selectedTemplate: $selectedTemplate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormTemplateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._templates, _templates) &&
            (identical(other.selectedTemplate, selectedTemplate) ||
                other.selectedTemplate == selectedTemplate));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_templates), selectedTemplate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormTemplateLoadedImplCopyWith<_$FormTemplateLoadedImpl> get copyWith =>
      __$$FormTemplateLoadedImplCopyWithImpl<_$FormTemplateLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<FormTemplate> templates, FormTemplate? selectedTemplate)
        loaded,
    required TResult Function() actionInProgress,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return loaded(templates, selectedTemplate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<FormTemplate> templates, FormTemplate? selectedTemplate)?
        loaded,
    TResult? Function()? actionInProgress,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(templates, selectedTemplate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<FormTemplate> templates, FormTemplate? selectedTemplate)?
        loaded,
    TResult Function()? actionInProgress,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(templates, selectedTemplate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormTemplateInitial value) initial,
    required TResult Function(FormTemplateLoading value) loading,
    required TResult Function(FormTemplateLoaded value) loaded,
    required TResult Function(FormTemplateActionInProgress value)
        actionInProgress,
    required TResult Function(FormTemplateActionSuccess value) actionSuccess,
    required TResult Function(FormTemplateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormTemplateInitial value)? initial,
    TResult? Function(FormTemplateLoading value)? loading,
    TResult? Function(FormTemplateLoaded value)? loaded,
    TResult? Function(FormTemplateActionInProgress value)? actionInProgress,
    TResult? Function(FormTemplateActionSuccess value)? actionSuccess,
    TResult? Function(FormTemplateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormTemplateInitial value)? initial,
    TResult Function(FormTemplateLoading value)? loading,
    TResult Function(FormTemplateLoaded value)? loaded,
    TResult Function(FormTemplateActionInProgress value)? actionInProgress,
    TResult Function(FormTemplateActionSuccess value)? actionSuccess,
    TResult Function(FormTemplateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FormTemplateLoaded implements FormTemplateState {
  const factory FormTemplateLoaded(
      {required final List<FormTemplate> templates,
      final FormTemplate? selectedTemplate}) = _$FormTemplateLoadedImpl;

  List<FormTemplate> get templates;
  FormTemplate? get selectedTemplate;
  @JsonKey(ignore: true)
  _$$FormTemplateLoadedImplCopyWith<_$FormTemplateLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormTemplateActionInProgressImplCopyWith<$Res> {
  factory _$$FormTemplateActionInProgressImplCopyWith(
          _$FormTemplateActionInProgressImpl value,
          $Res Function(_$FormTemplateActionInProgressImpl) then) =
      __$$FormTemplateActionInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormTemplateActionInProgressImplCopyWithImpl<$Res>
    extends _$FormTemplateStateCopyWithImpl<$Res,
        _$FormTemplateActionInProgressImpl>
    implements _$$FormTemplateActionInProgressImplCopyWith<$Res> {
  __$$FormTemplateActionInProgressImplCopyWithImpl(
      _$FormTemplateActionInProgressImpl _value,
      $Res Function(_$FormTemplateActionInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FormTemplateActionInProgressImpl
    implements FormTemplateActionInProgress {
  const _$FormTemplateActionInProgressImpl();

  @override
  String toString() {
    return 'FormTemplateState.actionInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormTemplateActionInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<FormTemplate> templates, FormTemplate? selectedTemplate)
        loaded,
    required TResult Function() actionInProgress,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<FormTemplate> templates, FormTemplate? selectedTemplate)?
        loaded,
    TResult? Function()? actionInProgress,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<FormTemplate> templates, FormTemplate? selectedTemplate)?
        loaded,
    TResult Function()? actionInProgress,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormTemplateInitial value) initial,
    required TResult Function(FormTemplateLoading value) loading,
    required TResult Function(FormTemplateLoaded value) loaded,
    required TResult Function(FormTemplateActionInProgress value)
        actionInProgress,
    required TResult Function(FormTemplateActionSuccess value) actionSuccess,
    required TResult Function(FormTemplateError value) error,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormTemplateInitial value)? initial,
    TResult? Function(FormTemplateLoading value)? loading,
    TResult? Function(FormTemplateLoaded value)? loaded,
    TResult? Function(FormTemplateActionInProgress value)? actionInProgress,
    TResult? Function(FormTemplateActionSuccess value)? actionSuccess,
    TResult? Function(FormTemplateError value)? error,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormTemplateInitial value)? initial,
    TResult Function(FormTemplateLoading value)? loading,
    TResult Function(FormTemplateLoaded value)? loaded,
    TResult Function(FormTemplateActionInProgress value)? actionInProgress,
    TResult Function(FormTemplateActionSuccess value)? actionSuccess,
    TResult Function(FormTemplateError value)? error,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class FormTemplateActionInProgress implements FormTemplateState {
  const factory FormTemplateActionInProgress() =
      _$FormTemplateActionInProgressImpl;
}

/// @nodoc
abstract class _$$FormTemplateActionSuccessImplCopyWith<$Res> {
  factory _$$FormTemplateActionSuccessImplCopyWith(
          _$FormTemplateActionSuccessImpl value,
          $Res Function(_$FormTemplateActionSuccessImpl) then) =
      __$$FormTemplateActionSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FormTemplateActionSuccessImplCopyWithImpl<$Res>
    extends _$FormTemplateStateCopyWithImpl<$Res,
        _$FormTemplateActionSuccessImpl>
    implements _$$FormTemplateActionSuccessImplCopyWith<$Res> {
  __$$FormTemplateActionSuccessImplCopyWithImpl(
      _$FormTemplateActionSuccessImpl _value,
      $Res Function(_$FormTemplateActionSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FormTemplateActionSuccessImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FormTemplateActionSuccessImpl implements FormTemplateActionSuccess {
  const _$FormTemplateActionSuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'FormTemplateState.actionSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormTemplateActionSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormTemplateActionSuccessImplCopyWith<_$FormTemplateActionSuccessImpl>
      get copyWith => __$$FormTemplateActionSuccessImplCopyWithImpl<
          _$FormTemplateActionSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<FormTemplate> templates, FormTemplate? selectedTemplate)
        loaded,
    required TResult Function() actionInProgress,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return actionSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<FormTemplate> templates, FormTemplate? selectedTemplate)?
        loaded,
    TResult? Function()? actionInProgress,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return actionSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<FormTemplate> templates, FormTemplate? selectedTemplate)?
        loaded,
    TResult Function()? actionInProgress,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormTemplateInitial value) initial,
    required TResult Function(FormTemplateLoading value) loading,
    required TResult Function(FormTemplateLoaded value) loaded,
    required TResult Function(FormTemplateActionInProgress value)
        actionInProgress,
    required TResult Function(FormTemplateActionSuccess value) actionSuccess,
    required TResult Function(FormTemplateError value) error,
  }) {
    return actionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormTemplateInitial value)? initial,
    TResult? Function(FormTemplateLoading value)? loading,
    TResult? Function(FormTemplateLoaded value)? loaded,
    TResult? Function(FormTemplateActionInProgress value)? actionInProgress,
    TResult? Function(FormTemplateActionSuccess value)? actionSuccess,
    TResult? Function(FormTemplateError value)? error,
  }) {
    return actionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormTemplateInitial value)? initial,
    TResult Function(FormTemplateLoading value)? loading,
    TResult Function(FormTemplateLoaded value)? loaded,
    TResult Function(FormTemplateActionInProgress value)? actionInProgress,
    TResult Function(FormTemplateActionSuccess value)? actionSuccess,
    TResult Function(FormTemplateError value)? error,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(this);
    }
    return orElse();
  }
}

abstract class FormTemplateActionSuccess implements FormTemplateState {
  const factory FormTemplateActionSuccess(final String message) =
      _$FormTemplateActionSuccessImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FormTemplateActionSuccessImplCopyWith<_$FormTemplateActionSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormTemplateErrorImplCopyWith<$Res> {
  factory _$$FormTemplateErrorImplCopyWith(_$FormTemplateErrorImpl value,
          $Res Function(_$FormTemplateErrorImpl) then) =
      __$$FormTemplateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FormTemplateErrorImplCopyWithImpl<$Res>
    extends _$FormTemplateStateCopyWithImpl<$Res, _$FormTemplateErrorImpl>
    implements _$$FormTemplateErrorImplCopyWith<$Res> {
  __$$FormTemplateErrorImplCopyWithImpl(_$FormTemplateErrorImpl _value,
      $Res Function(_$FormTemplateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FormTemplateErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FormTemplateErrorImpl implements FormTemplateError {
  const _$FormTemplateErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'FormTemplateState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormTemplateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormTemplateErrorImplCopyWith<_$FormTemplateErrorImpl> get copyWith =>
      __$$FormTemplateErrorImplCopyWithImpl<_$FormTemplateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<FormTemplate> templates, FormTemplate? selectedTemplate)
        loaded,
    required TResult Function() actionInProgress,
    required TResult Function(String message) actionSuccess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<FormTemplate> templates, FormTemplate? selectedTemplate)?
        loaded,
    TResult? Function()? actionInProgress,
    TResult? Function(String message)? actionSuccess,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<FormTemplate> templates, FormTemplate? selectedTemplate)?
        loaded,
    TResult Function()? actionInProgress,
    TResult Function(String message)? actionSuccess,
    TResult Function(String message)? error,
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
    required TResult Function(FormTemplateInitial value) initial,
    required TResult Function(FormTemplateLoading value) loading,
    required TResult Function(FormTemplateLoaded value) loaded,
    required TResult Function(FormTemplateActionInProgress value)
        actionInProgress,
    required TResult Function(FormTemplateActionSuccess value) actionSuccess,
    required TResult Function(FormTemplateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormTemplateInitial value)? initial,
    TResult? Function(FormTemplateLoading value)? loading,
    TResult? Function(FormTemplateLoaded value)? loaded,
    TResult? Function(FormTemplateActionInProgress value)? actionInProgress,
    TResult? Function(FormTemplateActionSuccess value)? actionSuccess,
    TResult? Function(FormTemplateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormTemplateInitial value)? initial,
    TResult Function(FormTemplateLoading value)? loading,
    TResult Function(FormTemplateLoaded value)? loaded,
    TResult Function(FormTemplateActionInProgress value)? actionInProgress,
    TResult Function(FormTemplateActionSuccess value)? actionSuccess,
    TResult Function(FormTemplateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FormTemplateError implements FormTemplateState {
  const factory FormTemplateError(final String message) =
      _$FormTemplateErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FormTemplateErrorImplCopyWith<_$FormTemplateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
