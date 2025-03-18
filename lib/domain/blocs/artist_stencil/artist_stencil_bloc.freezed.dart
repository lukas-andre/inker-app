// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_stencil_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ArtistStencilEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includeHidden) loadStencils,
    required TResult Function(int stencilId) loadStencilDetail,
    required TResult Function(String title, String? description,
            bool isFeatured, bool isHidden, List<int>? tagIds, XFile? imageFile)
        createStencil,
    required TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)
        updateStencil,
    required TResult Function(int stencilId) deleteStencil,
    required TResult Function(Stencil stencil) toggleFeatured,
    required TResult Function(Stencil stencil) toggleVisibility,
    required TResult Function(int stencilId) recordView,
    required TResult Function(int stencilId) likeStencil,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterStencilsByTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadStencils,
    TResult? Function(int stencilId)? loadStencilDetail,
    TResult? Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult? Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult? Function(int stencilId)? deleteStencil,
    TResult? Function(Stencil stencil)? toggleFeatured,
    TResult? Function(Stencil stencil)? toggleVisibility,
    TResult? Function(int stencilId)? recordView,
    TResult? Function(int stencilId)? likeStencil,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterStencilsByTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadStencils,
    TResult Function(int stencilId)? loadStencilDetail,
    TResult Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult Function(int stencilId)? deleteStencil,
    TResult Function(Stencil stencil)? toggleFeatured,
    TResult Function(Stencil stencil)? toggleVisibility,
    TResult Function(int stencilId)? recordView,
    TResult Function(int stencilId)? likeStencil,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterStencilsByTag,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStencils value) loadStencils,
    required TResult Function(_LoadStencilDetail value) loadStencilDetail,
    required TResult Function(_CreateStencil value) createStencil,
    required TResult Function(_UpdateStencil value) updateStencil,
    required TResult Function(_DeleteStencil value) deleteStencil,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeStencil value) likeStencil,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterStencilsByTag value) filterStencilsByTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStencils value)? loadStencils,
    TResult? Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult? Function(_CreateStencil value)? createStencil,
    TResult? Function(_UpdateStencil value)? updateStencil,
    TResult? Function(_DeleteStencil value)? deleteStencil,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeStencil value)? likeStencil,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterStencilsByTag value)? filterStencilsByTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStencils value)? loadStencils,
    TResult Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult Function(_CreateStencil value)? createStencil,
    TResult Function(_UpdateStencil value)? updateStencil,
    TResult Function(_DeleteStencil value)? deleteStencil,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeStencil value)? likeStencil,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterStencilsByTag value)? filterStencilsByTag,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistStencilEventCopyWith<$Res> {
  factory $ArtistStencilEventCopyWith(
          ArtistStencilEvent value, $Res Function(ArtistStencilEvent) then) =
      _$ArtistStencilEventCopyWithImpl<$Res, ArtistStencilEvent>;
}

/// @nodoc
class _$ArtistStencilEventCopyWithImpl<$Res, $Val extends ArtistStencilEvent>
    implements $ArtistStencilEventCopyWith<$Res> {
  _$ArtistStencilEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadStencilsImplCopyWith<$Res> {
  factory _$$LoadStencilsImplCopyWith(
          _$LoadStencilsImpl value, $Res Function(_$LoadStencilsImpl) then) =
      __$$LoadStencilsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool includeHidden});
}

/// @nodoc
class __$$LoadStencilsImplCopyWithImpl<$Res>
    extends _$ArtistStencilEventCopyWithImpl<$Res, _$LoadStencilsImpl>
    implements _$$LoadStencilsImplCopyWith<$Res> {
  __$$LoadStencilsImplCopyWithImpl(
      _$LoadStencilsImpl _value, $Res Function(_$LoadStencilsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? includeHidden = null,
  }) {
    return _then(_$LoadStencilsImpl(
      null == includeHidden
          ? _value.includeHidden
          : includeHidden // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadStencilsImpl implements _LoadStencils {
  const _$LoadStencilsImpl([this.includeHidden = false]);

  @override
  @JsonKey()
  final bool includeHidden;

  @override
  String toString() {
    return 'ArtistStencilEvent.loadStencils(includeHidden: $includeHidden)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadStencilsImpl &&
            (identical(other.includeHidden, includeHidden) ||
                other.includeHidden == includeHidden));
  }

  @override
  int get hashCode => Object.hash(runtimeType, includeHidden);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadStencilsImplCopyWith<_$LoadStencilsImpl> get copyWith =>
      __$$LoadStencilsImplCopyWithImpl<_$LoadStencilsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includeHidden) loadStencils,
    required TResult Function(int stencilId) loadStencilDetail,
    required TResult Function(String title, String? description,
            bool isFeatured, bool isHidden, List<int>? tagIds, XFile? imageFile)
        createStencil,
    required TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)
        updateStencil,
    required TResult Function(int stencilId) deleteStencil,
    required TResult Function(Stencil stencil) toggleFeatured,
    required TResult Function(Stencil stencil) toggleVisibility,
    required TResult Function(int stencilId) recordView,
    required TResult Function(int stencilId) likeStencil,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterStencilsByTag,
  }) {
    return loadStencils(includeHidden);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadStencils,
    TResult? Function(int stencilId)? loadStencilDetail,
    TResult? Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult? Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult? Function(int stencilId)? deleteStencil,
    TResult? Function(Stencil stencil)? toggleFeatured,
    TResult? Function(Stencil stencil)? toggleVisibility,
    TResult? Function(int stencilId)? recordView,
    TResult? Function(int stencilId)? likeStencil,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterStencilsByTag,
  }) {
    return loadStencils?.call(includeHidden);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadStencils,
    TResult Function(int stencilId)? loadStencilDetail,
    TResult Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult Function(int stencilId)? deleteStencil,
    TResult Function(Stencil stencil)? toggleFeatured,
    TResult Function(Stencil stencil)? toggleVisibility,
    TResult Function(int stencilId)? recordView,
    TResult Function(int stencilId)? likeStencil,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterStencilsByTag,
    required TResult orElse(),
  }) {
    if (loadStencils != null) {
      return loadStencils(includeHidden);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStencils value) loadStencils,
    required TResult Function(_LoadStencilDetail value) loadStencilDetail,
    required TResult Function(_CreateStencil value) createStencil,
    required TResult Function(_UpdateStencil value) updateStencil,
    required TResult Function(_DeleteStencil value) deleteStencil,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeStencil value) likeStencil,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterStencilsByTag value) filterStencilsByTag,
  }) {
    return loadStencils(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStencils value)? loadStencils,
    TResult? Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult? Function(_CreateStencil value)? createStencil,
    TResult? Function(_UpdateStencil value)? updateStencil,
    TResult? Function(_DeleteStencil value)? deleteStencil,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeStencil value)? likeStencil,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterStencilsByTag value)? filterStencilsByTag,
  }) {
    return loadStencils?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStencils value)? loadStencils,
    TResult Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult Function(_CreateStencil value)? createStencil,
    TResult Function(_UpdateStencil value)? updateStencil,
    TResult Function(_DeleteStencil value)? deleteStencil,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeStencil value)? likeStencil,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterStencilsByTag value)? filterStencilsByTag,
    required TResult orElse(),
  }) {
    if (loadStencils != null) {
      return loadStencils(this);
    }
    return orElse();
  }
}

abstract class _LoadStencils implements ArtistStencilEvent {
  const factory _LoadStencils([final bool includeHidden]) = _$LoadStencilsImpl;

  bool get includeHidden;
  @JsonKey(ignore: true)
  _$$LoadStencilsImplCopyWith<_$LoadStencilsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadStencilDetailImplCopyWith<$Res> {
  factory _$$LoadStencilDetailImplCopyWith(_$LoadStencilDetailImpl value,
          $Res Function(_$LoadStencilDetailImpl) then) =
      __$$LoadStencilDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stencilId});
}

/// @nodoc
class __$$LoadStencilDetailImplCopyWithImpl<$Res>
    extends _$ArtistStencilEventCopyWithImpl<$Res, _$LoadStencilDetailImpl>
    implements _$$LoadStencilDetailImplCopyWith<$Res> {
  __$$LoadStencilDetailImplCopyWithImpl(_$LoadStencilDetailImpl _value,
      $Res Function(_$LoadStencilDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stencilId = null,
  }) {
    return _then(_$LoadStencilDetailImpl(
      null == stencilId
          ? _value.stencilId
          : stencilId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadStencilDetailImpl implements _LoadStencilDetail {
  const _$LoadStencilDetailImpl(this.stencilId);

  @override
  final int stencilId;

  @override
  String toString() {
    return 'ArtistStencilEvent.loadStencilDetail(stencilId: $stencilId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadStencilDetailImpl &&
            (identical(other.stencilId, stencilId) ||
                other.stencilId == stencilId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stencilId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadStencilDetailImplCopyWith<_$LoadStencilDetailImpl> get copyWith =>
      __$$LoadStencilDetailImplCopyWithImpl<_$LoadStencilDetailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includeHidden) loadStencils,
    required TResult Function(int stencilId) loadStencilDetail,
    required TResult Function(String title, String? description,
            bool isFeatured, bool isHidden, List<int>? tagIds, XFile? imageFile)
        createStencil,
    required TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)
        updateStencil,
    required TResult Function(int stencilId) deleteStencil,
    required TResult Function(Stencil stencil) toggleFeatured,
    required TResult Function(Stencil stencil) toggleVisibility,
    required TResult Function(int stencilId) recordView,
    required TResult Function(int stencilId) likeStencil,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterStencilsByTag,
  }) {
    return loadStencilDetail(stencilId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadStencils,
    TResult? Function(int stencilId)? loadStencilDetail,
    TResult? Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult? Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult? Function(int stencilId)? deleteStencil,
    TResult? Function(Stencil stencil)? toggleFeatured,
    TResult? Function(Stencil stencil)? toggleVisibility,
    TResult? Function(int stencilId)? recordView,
    TResult? Function(int stencilId)? likeStencil,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterStencilsByTag,
  }) {
    return loadStencilDetail?.call(stencilId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadStencils,
    TResult Function(int stencilId)? loadStencilDetail,
    TResult Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult Function(int stencilId)? deleteStencil,
    TResult Function(Stencil stencil)? toggleFeatured,
    TResult Function(Stencil stencil)? toggleVisibility,
    TResult Function(int stencilId)? recordView,
    TResult Function(int stencilId)? likeStencil,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterStencilsByTag,
    required TResult orElse(),
  }) {
    if (loadStencilDetail != null) {
      return loadStencilDetail(stencilId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStencils value) loadStencils,
    required TResult Function(_LoadStencilDetail value) loadStencilDetail,
    required TResult Function(_CreateStencil value) createStencil,
    required TResult Function(_UpdateStencil value) updateStencil,
    required TResult Function(_DeleteStencil value) deleteStencil,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeStencil value) likeStencil,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterStencilsByTag value) filterStencilsByTag,
  }) {
    return loadStencilDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStencils value)? loadStencils,
    TResult? Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult? Function(_CreateStencil value)? createStencil,
    TResult? Function(_UpdateStencil value)? updateStencil,
    TResult? Function(_DeleteStencil value)? deleteStencil,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeStencil value)? likeStencil,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterStencilsByTag value)? filterStencilsByTag,
  }) {
    return loadStencilDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStencils value)? loadStencils,
    TResult Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult Function(_CreateStencil value)? createStencil,
    TResult Function(_UpdateStencil value)? updateStencil,
    TResult Function(_DeleteStencil value)? deleteStencil,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeStencil value)? likeStencil,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterStencilsByTag value)? filterStencilsByTag,
    required TResult orElse(),
  }) {
    if (loadStencilDetail != null) {
      return loadStencilDetail(this);
    }
    return orElse();
  }
}

abstract class _LoadStencilDetail implements ArtistStencilEvent {
  const factory _LoadStencilDetail(final int stencilId) =
      _$LoadStencilDetailImpl;

  int get stencilId;
  @JsonKey(ignore: true)
  _$$LoadStencilDetailImplCopyWith<_$LoadStencilDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateStencilImplCopyWith<$Res> {
  factory _$$CreateStencilImplCopyWith(
          _$CreateStencilImpl value, $Res Function(_$CreateStencilImpl) then) =
      __$$CreateStencilImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String title,
      String? description,
      bool isFeatured,
      bool isHidden,
      List<int>? tagIds,
      XFile? imageFile});
}

/// @nodoc
class __$$CreateStencilImplCopyWithImpl<$Res>
    extends _$ArtistStencilEventCopyWithImpl<$Res, _$CreateStencilImpl>
    implements _$$CreateStencilImplCopyWith<$Res> {
  __$$CreateStencilImplCopyWithImpl(
      _$CreateStencilImpl _value, $Res Function(_$CreateStencilImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? isFeatured = null,
    Object? isHidden = null,
    Object? tagIds = freezed,
    Object? imageFile = freezed,
  }) {
    return _then(_$CreateStencilImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      tagIds: freezed == tagIds
          ? _value._tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      imageFile: freezed == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$CreateStencilImpl implements _CreateStencil {
  const _$CreateStencilImpl(
      {required this.title,
      this.description,
      this.isFeatured = false,
      this.isHidden = false,
      final List<int>? tagIds,
      this.imageFile})
      : _tagIds = tagIds;

  @override
  final String title;
  @override
  final String? description;
  @override
  @JsonKey()
  final bool isFeatured;
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
  final XFile? imageFile;

  @override
  String toString() {
    return 'ArtistStencilEvent.createStencil(title: $title, description: $description, isFeatured: $isFeatured, isHidden: $isHidden, tagIds: $tagIds, imageFile: $imageFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateStencilImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds) &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description, isFeatured,
      isHidden, const DeepCollectionEquality().hash(_tagIds), imageFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateStencilImplCopyWith<_$CreateStencilImpl> get copyWith =>
      __$$CreateStencilImplCopyWithImpl<_$CreateStencilImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includeHidden) loadStencils,
    required TResult Function(int stencilId) loadStencilDetail,
    required TResult Function(String title, String? description,
            bool isFeatured, bool isHidden, List<int>? tagIds, XFile? imageFile)
        createStencil,
    required TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)
        updateStencil,
    required TResult Function(int stencilId) deleteStencil,
    required TResult Function(Stencil stencil) toggleFeatured,
    required TResult Function(Stencil stencil) toggleVisibility,
    required TResult Function(int stencilId) recordView,
    required TResult Function(int stencilId) likeStencil,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterStencilsByTag,
  }) {
    return createStencil(
        title, description, isFeatured, isHidden, tagIds, imageFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadStencils,
    TResult? Function(int stencilId)? loadStencilDetail,
    TResult? Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult? Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult? Function(int stencilId)? deleteStencil,
    TResult? Function(Stencil stencil)? toggleFeatured,
    TResult? Function(Stencil stencil)? toggleVisibility,
    TResult? Function(int stencilId)? recordView,
    TResult? Function(int stencilId)? likeStencil,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterStencilsByTag,
  }) {
    return createStencil?.call(
        title, description, isFeatured, isHidden, tagIds, imageFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadStencils,
    TResult Function(int stencilId)? loadStencilDetail,
    TResult Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult Function(int stencilId)? deleteStencil,
    TResult Function(Stencil stencil)? toggleFeatured,
    TResult Function(Stencil stencil)? toggleVisibility,
    TResult Function(int stencilId)? recordView,
    TResult Function(int stencilId)? likeStencil,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterStencilsByTag,
    required TResult orElse(),
  }) {
    if (createStencil != null) {
      return createStencil(
          title, description, isFeatured, isHidden, tagIds, imageFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStencils value) loadStencils,
    required TResult Function(_LoadStencilDetail value) loadStencilDetail,
    required TResult Function(_CreateStencil value) createStencil,
    required TResult Function(_UpdateStencil value) updateStencil,
    required TResult Function(_DeleteStencil value) deleteStencil,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeStencil value) likeStencil,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterStencilsByTag value) filterStencilsByTag,
  }) {
    return createStencil(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStencils value)? loadStencils,
    TResult? Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult? Function(_CreateStencil value)? createStencil,
    TResult? Function(_UpdateStencil value)? updateStencil,
    TResult? Function(_DeleteStencil value)? deleteStencil,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeStencil value)? likeStencil,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterStencilsByTag value)? filterStencilsByTag,
  }) {
    return createStencil?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStencils value)? loadStencils,
    TResult Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult Function(_CreateStencil value)? createStencil,
    TResult Function(_UpdateStencil value)? updateStencil,
    TResult Function(_DeleteStencil value)? deleteStencil,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeStencil value)? likeStencil,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterStencilsByTag value)? filterStencilsByTag,
    required TResult orElse(),
  }) {
    if (createStencil != null) {
      return createStencil(this);
    }
    return orElse();
  }
}

abstract class _CreateStencil implements ArtistStencilEvent {
  const factory _CreateStencil(
      {required final String title,
      final String? description,
      final bool isFeatured,
      final bool isHidden,
      final List<int>? tagIds,
      final XFile? imageFile}) = _$CreateStencilImpl;

  String get title;
  String? get description;
  bool get isFeatured;
  bool get isHidden;
  List<int>? get tagIds;
  XFile? get imageFile;
  @JsonKey(ignore: true)
  _$$CreateStencilImplCopyWith<_$CreateStencilImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateStencilImplCopyWith<$Res> {
  factory _$$UpdateStencilImplCopyWith(
          _$UpdateStencilImpl value, $Res Function(_$UpdateStencilImpl) then) =
      __$$UpdateStencilImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int stencilId,
      String? title,
      String? description,
      bool? isFeatured,
      bool? isHidden,
      List<int>? tagIds,
      XFile? imageFile});
}

/// @nodoc
class __$$UpdateStencilImplCopyWithImpl<$Res>
    extends _$ArtistStencilEventCopyWithImpl<$Res, _$UpdateStencilImpl>
    implements _$$UpdateStencilImplCopyWith<$Res> {
  __$$UpdateStencilImplCopyWithImpl(
      _$UpdateStencilImpl _value, $Res Function(_$UpdateStencilImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stencilId = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? isFeatured = freezed,
    Object? isHidden = freezed,
    Object? tagIds = freezed,
    Object? imageFile = freezed,
  }) {
    return _then(_$UpdateStencilImpl(
      stencilId: null == stencilId
          ? _value.stencilId
          : stencilId // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isFeatured: freezed == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool?,
      isHidden: freezed == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      tagIds: freezed == tagIds
          ? _value._tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      imageFile: freezed == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$UpdateStencilImpl implements _UpdateStencil {
  const _$UpdateStencilImpl(
      {required this.stencilId,
      this.title,
      this.description,
      this.isFeatured,
      this.isHidden,
      final List<int>? tagIds,
      this.imageFile})
      : _tagIds = tagIds;

  @override
  final int stencilId;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final bool? isFeatured;
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
  final XFile? imageFile;

  @override
  String toString() {
    return 'ArtistStencilEvent.updateStencil(stencilId: $stencilId, title: $title, description: $description, isFeatured: $isFeatured, isHidden: $isHidden, tagIds: $tagIds, imageFile: $imageFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStencilImpl &&
            (identical(other.stencilId, stencilId) ||
                other.stencilId == stencilId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds) &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stencilId,
      title,
      description,
      isFeatured,
      isHidden,
      const DeepCollectionEquality().hash(_tagIds),
      imageFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStencilImplCopyWith<_$UpdateStencilImpl> get copyWith =>
      __$$UpdateStencilImplCopyWithImpl<_$UpdateStencilImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includeHidden) loadStencils,
    required TResult Function(int stencilId) loadStencilDetail,
    required TResult Function(String title, String? description,
            bool isFeatured, bool isHidden, List<int>? tagIds, XFile? imageFile)
        createStencil,
    required TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)
        updateStencil,
    required TResult Function(int stencilId) deleteStencil,
    required TResult Function(Stencil stencil) toggleFeatured,
    required TResult Function(Stencil stencil) toggleVisibility,
    required TResult Function(int stencilId) recordView,
    required TResult Function(int stencilId) likeStencil,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterStencilsByTag,
  }) {
    return updateStencil(
        stencilId, title, description, isFeatured, isHidden, tagIds, imageFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadStencils,
    TResult? Function(int stencilId)? loadStencilDetail,
    TResult? Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult? Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult? Function(int stencilId)? deleteStencil,
    TResult? Function(Stencil stencil)? toggleFeatured,
    TResult? Function(Stencil stencil)? toggleVisibility,
    TResult? Function(int stencilId)? recordView,
    TResult? Function(int stencilId)? likeStencil,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterStencilsByTag,
  }) {
    return updateStencil?.call(
        stencilId, title, description, isFeatured, isHidden, tagIds, imageFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadStencils,
    TResult Function(int stencilId)? loadStencilDetail,
    TResult Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult Function(int stencilId)? deleteStencil,
    TResult Function(Stencil stencil)? toggleFeatured,
    TResult Function(Stencil stencil)? toggleVisibility,
    TResult Function(int stencilId)? recordView,
    TResult Function(int stencilId)? likeStencil,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterStencilsByTag,
    required TResult orElse(),
  }) {
    if (updateStencil != null) {
      return updateStencil(stencilId, title, description, isFeatured, isHidden,
          tagIds, imageFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStencils value) loadStencils,
    required TResult Function(_LoadStencilDetail value) loadStencilDetail,
    required TResult Function(_CreateStencil value) createStencil,
    required TResult Function(_UpdateStencil value) updateStencil,
    required TResult Function(_DeleteStencil value) deleteStencil,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeStencil value) likeStencil,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterStencilsByTag value) filterStencilsByTag,
  }) {
    return updateStencil(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStencils value)? loadStencils,
    TResult? Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult? Function(_CreateStencil value)? createStencil,
    TResult? Function(_UpdateStencil value)? updateStencil,
    TResult? Function(_DeleteStencil value)? deleteStencil,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeStencil value)? likeStencil,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterStencilsByTag value)? filterStencilsByTag,
  }) {
    return updateStencil?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStencils value)? loadStencils,
    TResult Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult Function(_CreateStencil value)? createStencil,
    TResult Function(_UpdateStencil value)? updateStencil,
    TResult Function(_DeleteStencil value)? deleteStencil,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeStencil value)? likeStencil,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterStencilsByTag value)? filterStencilsByTag,
    required TResult orElse(),
  }) {
    if (updateStencil != null) {
      return updateStencil(this);
    }
    return orElse();
  }
}

abstract class _UpdateStencil implements ArtistStencilEvent {
  const factory _UpdateStencil(
      {required final int stencilId,
      final String? title,
      final String? description,
      final bool? isFeatured,
      final bool? isHidden,
      final List<int>? tagIds,
      final XFile? imageFile}) = _$UpdateStencilImpl;

  int get stencilId;
  String? get title;
  String? get description;
  bool? get isFeatured;
  bool? get isHidden;
  List<int>? get tagIds;
  XFile? get imageFile;
  @JsonKey(ignore: true)
  _$$UpdateStencilImplCopyWith<_$UpdateStencilImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteStencilImplCopyWith<$Res> {
  factory _$$DeleteStencilImplCopyWith(
          _$DeleteStencilImpl value, $Res Function(_$DeleteStencilImpl) then) =
      __$$DeleteStencilImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stencilId});
}

/// @nodoc
class __$$DeleteStencilImplCopyWithImpl<$Res>
    extends _$ArtistStencilEventCopyWithImpl<$Res, _$DeleteStencilImpl>
    implements _$$DeleteStencilImplCopyWith<$Res> {
  __$$DeleteStencilImplCopyWithImpl(
      _$DeleteStencilImpl _value, $Res Function(_$DeleteStencilImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stencilId = null,
  }) {
    return _then(_$DeleteStencilImpl(
      null == stencilId
          ? _value.stencilId
          : stencilId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteStencilImpl implements _DeleteStencil {
  const _$DeleteStencilImpl(this.stencilId);

  @override
  final int stencilId;

  @override
  String toString() {
    return 'ArtistStencilEvent.deleteStencil(stencilId: $stencilId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteStencilImpl &&
            (identical(other.stencilId, stencilId) ||
                other.stencilId == stencilId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stencilId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteStencilImplCopyWith<_$DeleteStencilImpl> get copyWith =>
      __$$DeleteStencilImplCopyWithImpl<_$DeleteStencilImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includeHidden) loadStencils,
    required TResult Function(int stencilId) loadStencilDetail,
    required TResult Function(String title, String? description,
            bool isFeatured, bool isHidden, List<int>? tagIds, XFile? imageFile)
        createStencil,
    required TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)
        updateStencil,
    required TResult Function(int stencilId) deleteStencil,
    required TResult Function(Stencil stencil) toggleFeatured,
    required TResult Function(Stencil stencil) toggleVisibility,
    required TResult Function(int stencilId) recordView,
    required TResult Function(int stencilId) likeStencil,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterStencilsByTag,
  }) {
    return deleteStencil(stencilId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadStencils,
    TResult? Function(int stencilId)? loadStencilDetail,
    TResult? Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult? Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult? Function(int stencilId)? deleteStencil,
    TResult? Function(Stencil stencil)? toggleFeatured,
    TResult? Function(Stencil stencil)? toggleVisibility,
    TResult? Function(int stencilId)? recordView,
    TResult? Function(int stencilId)? likeStencil,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterStencilsByTag,
  }) {
    return deleteStencil?.call(stencilId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadStencils,
    TResult Function(int stencilId)? loadStencilDetail,
    TResult Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult Function(int stencilId)? deleteStencil,
    TResult Function(Stencil stencil)? toggleFeatured,
    TResult Function(Stencil stencil)? toggleVisibility,
    TResult Function(int stencilId)? recordView,
    TResult Function(int stencilId)? likeStencil,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterStencilsByTag,
    required TResult orElse(),
  }) {
    if (deleteStencil != null) {
      return deleteStencil(stencilId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStencils value) loadStencils,
    required TResult Function(_LoadStencilDetail value) loadStencilDetail,
    required TResult Function(_CreateStencil value) createStencil,
    required TResult Function(_UpdateStencil value) updateStencil,
    required TResult Function(_DeleteStencil value) deleteStencil,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeStencil value) likeStencil,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterStencilsByTag value) filterStencilsByTag,
  }) {
    return deleteStencil(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStencils value)? loadStencils,
    TResult? Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult? Function(_CreateStencil value)? createStencil,
    TResult? Function(_UpdateStencil value)? updateStencil,
    TResult? Function(_DeleteStencil value)? deleteStencil,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeStencil value)? likeStencil,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterStencilsByTag value)? filterStencilsByTag,
  }) {
    return deleteStencil?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStencils value)? loadStencils,
    TResult Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult Function(_CreateStencil value)? createStencil,
    TResult Function(_UpdateStencil value)? updateStencil,
    TResult Function(_DeleteStencil value)? deleteStencil,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeStencil value)? likeStencil,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterStencilsByTag value)? filterStencilsByTag,
    required TResult orElse(),
  }) {
    if (deleteStencil != null) {
      return deleteStencil(this);
    }
    return orElse();
  }
}

abstract class _DeleteStencil implements ArtistStencilEvent {
  const factory _DeleteStencil(final int stencilId) = _$DeleteStencilImpl;

  int get stencilId;
  @JsonKey(ignore: true)
  _$$DeleteStencilImplCopyWith<_$DeleteStencilImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleFeaturedImplCopyWith<$Res> {
  factory _$$ToggleFeaturedImplCopyWith(_$ToggleFeaturedImpl value,
          $Res Function(_$ToggleFeaturedImpl) then) =
      __$$ToggleFeaturedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Stencil stencil});

  $StencilCopyWith<$Res> get stencil;
}

/// @nodoc
class __$$ToggleFeaturedImplCopyWithImpl<$Res>
    extends _$ArtistStencilEventCopyWithImpl<$Res, _$ToggleFeaturedImpl>
    implements _$$ToggleFeaturedImplCopyWith<$Res> {
  __$$ToggleFeaturedImplCopyWithImpl(
      _$ToggleFeaturedImpl _value, $Res Function(_$ToggleFeaturedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stencil = null,
  }) {
    return _then(_$ToggleFeaturedImpl(
      null == stencil
          ? _value.stencil
          : stencil // ignore: cast_nullable_to_non_nullable
              as Stencil,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StencilCopyWith<$Res> get stencil {
    return $StencilCopyWith<$Res>(_value.stencil, (value) {
      return _then(_value.copyWith(stencil: value));
    });
  }
}

/// @nodoc

class _$ToggleFeaturedImpl implements _ToggleFeatured {
  const _$ToggleFeaturedImpl(this.stencil);

  @override
  final Stencil stencil;

  @override
  String toString() {
    return 'ArtistStencilEvent.toggleFeatured(stencil: $stencil)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleFeaturedImpl &&
            (identical(other.stencil, stencil) || other.stencil == stencil));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stencil);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleFeaturedImplCopyWith<_$ToggleFeaturedImpl> get copyWith =>
      __$$ToggleFeaturedImplCopyWithImpl<_$ToggleFeaturedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includeHidden) loadStencils,
    required TResult Function(int stencilId) loadStencilDetail,
    required TResult Function(String title, String? description,
            bool isFeatured, bool isHidden, List<int>? tagIds, XFile? imageFile)
        createStencil,
    required TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)
        updateStencil,
    required TResult Function(int stencilId) deleteStencil,
    required TResult Function(Stencil stencil) toggleFeatured,
    required TResult Function(Stencil stencil) toggleVisibility,
    required TResult Function(int stencilId) recordView,
    required TResult Function(int stencilId) likeStencil,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterStencilsByTag,
  }) {
    return toggleFeatured(stencil);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadStencils,
    TResult? Function(int stencilId)? loadStencilDetail,
    TResult? Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult? Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult? Function(int stencilId)? deleteStencil,
    TResult? Function(Stencil stencil)? toggleFeatured,
    TResult? Function(Stencil stencil)? toggleVisibility,
    TResult? Function(int stencilId)? recordView,
    TResult? Function(int stencilId)? likeStencil,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterStencilsByTag,
  }) {
    return toggleFeatured?.call(stencil);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadStencils,
    TResult Function(int stencilId)? loadStencilDetail,
    TResult Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult Function(int stencilId)? deleteStencil,
    TResult Function(Stencil stencil)? toggleFeatured,
    TResult Function(Stencil stencil)? toggleVisibility,
    TResult Function(int stencilId)? recordView,
    TResult Function(int stencilId)? likeStencil,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterStencilsByTag,
    required TResult orElse(),
  }) {
    if (toggleFeatured != null) {
      return toggleFeatured(stencil);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStencils value) loadStencils,
    required TResult Function(_LoadStencilDetail value) loadStencilDetail,
    required TResult Function(_CreateStencil value) createStencil,
    required TResult Function(_UpdateStencil value) updateStencil,
    required TResult Function(_DeleteStencil value) deleteStencil,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeStencil value) likeStencil,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterStencilsByTag value) filterStencilsByTag,
  }) {
    return toggleFeatured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStencils value)? loadStencils,
    TResult? Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult? Function(_CreateStencil value)? createStencil,
    TResult? Function(_UpdateStencil value)? updateStencil,
    TResult? Function(_DeleteStencil value)? deleteStencil,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeStencil value)? likeStencil,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterStencilsByTag value)? filterStencilsByTag,
  }) {
    return toggleFeatured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStencils value)? loadStencils,
    TResult Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult Function(_CreateStencil value)? createStencil,
    TResult Function(_UpdateStencil value)? updateStencil,
    TResult Function(_DeleteStencil value)? deleteStencil,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeStencil value)? likeStencil,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterStencilsByTag value)? filterStencilsByTag,
    required TResult orElse(),
  }) {
    if (toggleFeatured != null) {
      return toggleFeatured(this);
    }
    return orElse();
  }
}

abstract class _ToggleFeatured implements ArtistStencilEvent {
  const factory _ToggleFeatured(final Stencil stencil) = _$ToggleFeaturedImpl;

  Stencil get stencil;
  @JsonKey(ignore: true)
  _$$ToggleFeaturedImplCopyWith<_$ToggleFeaturedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleVisibilityImplCopyWith<$Res> {
  factory _$$ToggleVisibilityImplCopyWith(_$ToggleVisibilityImpl value,
          $Res Function(_$ToggleVisibilityImpl) then) =
      __$$ToggleVisibilityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Stencil stencil});

  $StencilCopyWith<$Res> get stencil;
}

/// @nodoc
class __$$ToggleVisibilityImplCopyWithImpl<$Res>
    extends _$ArtistStencilEventCopyWithImpl<$Res, _$ToggleVisibilityImpl>
    implements _$$ToggleVisibilityImplCopyWith<$Res> {
  __$$ToggleVisibilityImplCopyWithImpl(_$ToggleVisibilityImpl _value,
      $Res Function(_$ToggleVisibilityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stencil = null,
  }) {
    return _then(_$ToggleVisibilityImpl(
      null == stencil
          ? _value.stencil
          : stencil // ignore: cast_nullable_to_non_nullable
              as Stencil,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StencilCopyWith<$Res> get stencil {
    return $StencilCopyWith<$Res>(_value.stencil, (value) {
      return _then(_value.copyWith(stencil: value));
    });
  }
}

/// @nodoc

class _$ToggleVisibilityImpl implements _ToggleVisibility {
  const _$ToggleVisibilityImpl(this.stencil);

  @override
  final Stencil stencil;

  @override
  String toString() {
    return 'ArtistStencilEvent.toggleVisibility(stencil: $stencil)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleVisibilityImpl &&
            (identical(other.stencil, stencil) || other.stencil == stencil));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stencil);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleVisibilityImplCopyWith<_$ToggleVisibilityImpl> get copyWith =>
      __$$ToggleVisibilityImplCopyWithImpl<_$ToggleVisibilityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includeHidden) loadStencils,
    required TResult Function(int stencilId) loadStencilDetail,
    required TResult Function(String title, String? description,
            bool isFeatured, bool isHidden, List<int>? tagIds, XFile? imageFile)
        createStencil,
    required TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)
        updateStencil,
    required TResult Function(int stencilId) deleteStencil,
    required TResult Function(Stencil stencil) toggleFeatured,
    required TResult Function(Stencil stencil) toggleVisibility,
    required TResult Function(int stencilId) recordView,
    required TResult Function(int stencilId) likeStencil,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterStencilsByTag,
  }) {
    return toggleVisibility(stencil);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadStencils,
    TResult? Function(int stencilId)? loadStencilDetail,
    TResult? Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult? Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult? Function(int stencilId)? deleteStencil,
    TResult? Function(Stencil stencil)? toggleFeatured,
    TResult? Function(Stencil stencil)? toggleVisibility,
    TResult? Function(int stencilId)? recordView,
    TResult? Function(int stencilId)? likeStencil,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterStencilsByTag,
  }) {
    return toggleVisibility?.call(stencil);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadStencils,
    TResult Function(int stencilId)? loadStencilDetail,
    TResult Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult Function(int stencilId)? deleteStencil,
    TResult Function(Stencil stencil)? toggleFeatured,
    TResult Function(Stencil stencil)? toggleVisibility,
    TResult Function(int stencilId)? recordView,
    TResult Function(int stencilId)? likeStencil,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterStencilsByTag,
    required TResult orElse(),
  }) {
    if (toggleVisibility != null) {
      return toggleVisibility(stencil);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStencils value) loadStencils,
    required TResult Function(_LoadStencilDetail value) loadStencilDetail,
    required TResult Function(_CreateStencil value) createStencil,
    required TResult Function(_UpdateStencil value) updateStencil,
    required TResult Function(_DeleteStencil value) deleteStencil,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeStencil value) likeStencil,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterStencilsByTag value) filterStencilsByTag,
  }) {
    return toggleVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStencils value)? loadStencils,
    TResult? Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult? Function(_CreateStencil value)? createStencil,
    TResult? Function(_UpdateStencil value)? updateStencil,
    TResult? Function(_DeleteStencil value)? deleteStencil,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeStencil value)? likeStencil,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterStencilsByTag value)? filterStencilsByTag,
  }) {
    return toggleVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStencils value)? loadStencils,
    TResult Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult Function(_CreateStencil value)? createStencil,
    TResult Function(_UpdateStencil value)? updateStencil,
    TResult Function(_DeleteStencil value)? deleteStencil,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeStencil value)? likeStencil,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterStencilsByTag value)? filterStencilsByTag,
    required TResult orElse(),
  }) {
    if (toggleVisibility != null) {
      return toggleVisibility(this);
    }
    return orElse();
  }
}

abstract class _ToggleVisibility implements ArtistStencilEvent {
  const factory _ToggleVisibility(final Stencil stencil) =
      _$ToggleVisibilityImpl;

  Stencil get stencil;
  @JsonKey(ignore: true)
  _$$ToggleVisibilityImplCopyWith<_$ToggleVisibilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecordViewImplCopyWith<$Res> {
  factory _$$RecordViewImplCopyWith(
          _$RecordViewImpl value, $Res Function(_$RecordViewImpl) then) =
      __$$RecordViewImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stencilId});
}

/// @nodoc
class __$$RecordViewImplCopyWithImpl<$Res>
    extends _$ArtistStencilEventCopyWithImpl<$Res, _$RecordViewImpl>
    implements _$$RecordViewImplCopyWith<$Res> {
  __$$RecordViewImplCopyWithImpl(
      _$RecordViewImpl _value, $Res Function(_$RecordViewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stencilId = null,
  }) {
    return _then(_$RecordViewImpl(
      null == stencilId
          ? _value.stencilId
          : stencilId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RecordViewImpl implements _RecordView {
  const _$RecordViewImpl(this.stencilId);

  @override
  final int stencilId;

  @override
  String toString() {
    return 'ArtistStencilEvent.recordView(stencilId: $stencilId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordViewImpl &&
            (identical(other.stencilId, stencilId) ||
                other.stencilId == stencilId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stencilId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordViewImplCopyWith<_$RecordViewImpl> get copyWith =>
      __$$RecordViewImplCopyWithImpl<_$RecordViewImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includeHidden) loadStencils,
    required TResult Function(int stencilId) loadStencilDetail,
    required TResult Function(String title, String? description,
            bool isFeatured, bool isHidden, List<int>? tagIds, XFile? imageFile)
        createStencil,
    required TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)
        updateStencil,
    required TResult Function(int stencilId) deleteStencil,
    required TResult Function(Stencil stencil) toggleFeatured,
    required TResult Function(Stencil stencil) toggleVisibility,
    required TResult Function(int stencilId) recordView,
    required TResult Function(int stencilId) likeStencil,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterStencilsByTag,
  }) {
    return recordView(stencilId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadStencils,
    TResult? Function(int stencilId)? loadStencilDetail,
    TResult? Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult? Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult? Function(int stencilId)? deleteStencil,
    TResult? Function(Stencil stencil)? toggleFeatured,
    TResult? Function(Stencil stencil)? toggleVisibility,
    TResult? Function(int stencilId)? recordView,
    TResult? Function(int stencilId)? likeStencil,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterStencilsByTag,
  }) {
    return recordView?.call(stencilId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadStencils,
    TResult Function(int stencilId)? loadStencilDetail,
    TResult Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult Function(int stencilId)? deleteStencil,
    TResult Function(Stencil stencil)? toggleFeatured,
    TResult Function(Stencil stencil)? toggleVisibility,
    TResult Function(int stencilId)? recordView,
    TResult Function(int stencilId)? likeStencil,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterStencilsByTag,
    required TResult orElse(),
  }) {
    if (recordView != null) {
      return recordView(stencilId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStencils value) loadStencils,
    required TResult Function(_LoadStencilDetail value) loadStencilDetail,
    required TResult Function(_CreateStencil value) createStencil,
    required TResult Function(_UpdateStencil value) updateStencil,
    required TResult Function(_DeleteStencil value) deleteStencil,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeStencil value) likeStencil,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterStencilsByTag value) filterStencilsByTag,
  }) {
    return recordView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStencils value)? loadStencils,
    TResult? Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult? Function(_CreateStencil value)? createStencil,
    TResult? Function(_UpdateStencil value)? updateStencil,
    TResult? Function(_DeleteStencil value)? deleteStencil,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeStencil value)? likeStencil,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterStencilsByTag value)? filterStencilsByTag,
  }) {
    return recordView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStencils value)? loadStencils,
    TResult Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult Function(_CreateStencil value)? createStencil,
    TResult Function(_UpdateStencil value)? updateStencil,
    TResult Function(_DeleteStencil value)? deleteStencil,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeStencil value)? likeStencil,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterStencilsByTag value)? filterStencilsByTag,
    required TResult orElse(),
  }) {
    if (recordView != null) {
      return recordView(this);
    }
    return orElse();
  }
}

abstract class _RecordView implements ArtistStencilEvent {
  const factory _RecordView(final int stencilId) = _$RecordViewImpl;

  int get stencilId;
  @JsonKey(ignore: true)
  _$$RecordViewImplCopyWith<_$RecordViewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LikeStencilImplCopyWith<$Res> {
  factory _$$LikeStencilImplCopyWith(
          _$LikeStencilImpl value, $Res Function(_$LikeStencilImpl) then) =
      __$$LikeStencilImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stencilId});
}

/// @nodoc
class __$$LikeStencilImplCopyWithImpl<$Res>
    extends _$ArtistStencilEventCopyWithImpl<$Res, _$LikeStencilImpl>
    implements _$$LikeStencilImplCopyWith<$Res> {
  __$$LikeStencilImplCopyWithImpl(
      _$LikeStencilImpl _value, $Res Function(_$LikeStencilImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stencilId = null,
  }) {
    return _then(_$LikeStencilImpl(
      null == stencilId
          ? _value.stencilId
          : stencilId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LikeStencilImpl implements _LikeStencil {
  const _$LikeStencilImpl(this.stencilId);

  @override
  final int stencilId;

  @override
  String toString() {
    return 'ArtistStencilEvent.likeStencil(stencilId: $stencilId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeStencilImpl &&
            (identical(other.stencilId, stencilId) ||
                other.stencilId == stencilId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stencilId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeStencilImplCopyWith<_$LikeStencilImpl> get copyWith =>
      __$$LikeStencilImplCopyWithImpl<_$LikeStencilImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includeHidden) loadStencils,
    required TResult Function(int stencilId) loadStencilDetail,
    required TResult Function(String title, String? description,
            bool isFeatured, bool isHidden, List<int>? tagIds, XFile? imageFile)
        createStencil,
    required TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)
        updateStencil,
    required TResult Function(int stencilId) deleteStencil,
    required TResult Function(Stencil stencil) toggleFeatured,
    required TResult Function(Stencil stencil) toggleVisibility,
    required TResult Function(int stencilId) recordView,
    required TResult Function(int stencilId) likeStencil,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterStencilsByTag,
  }) {
    return likeStencil(stencilId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadStencils,
    TResult? Function(int stencilId)? loadStencilDetail,
    TResult? Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult? Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult? Function(int stencilId)? deleteStencil,
    TResult? Function(Stencil stencil)? toggleFeatured,
    TResult? Function(Stencil stencil)? toggleVisibility,
    TResult? Function(int stencilId)? recordView,
    TResult? Function(int stencilId)? likeStencil,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterStencilsByTag,
  }) {
    return likeStencil?.call(stencilId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadStencils,
    TResult Function(int stencilId)? loadStencilDetail,
    TResult Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult Function(int stencilId)? deleteStencil,
    TResult Function(Stencil stencil)? toggleFeatured,
    TResult Function(Stencil stencil)? toggleVisibility,
    TResult Function(int stencilId)? recordView,
    TResult Function(int stencilId)? likeStencil,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterStencilsByTag,
    required TResult orElse(),
  }) {
    if (likeStencil != null) {
      return likeStencil(stencilId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStencils value) loadStencils,
    required TResult Function(_LoadStencilDetail value) loadStencilDetail,
    required TResult Function(_CreateStencil value) createStencil,
    required TResult Function(_UpdateStencil value) updateStencil,
    required TResult Function(_DeleteStencil value) deleteStencil,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeStencil value) likeStencil,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterStencilsByTag value) filterStencilsByTag,
  }) {
    return likeStencil(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStencils value)? loadStencils,
    TResult? Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult? Function(_CreateStencil value)? createStencil,
    TResult? Function(_UpdateStencil value)? updateStencil,
    TResult? Function(_DeleteStencil value)? deleteStencil,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeStencil value)? likeStencil,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterStencilsByTag value)? filterStencilsByTag,
  }) {
    return likeStencil?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStencils value)? loadStencils,
    TResult Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult Function(_CreateStencil value)? createStencil,
    TResult Function(_UpdateStencil value)? updateStencil,
    TResult Function(_DeleteStencil value)? deleteStencil,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeStencil value)? likeStencil,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterStencilsByTag value)? filterStencilsByTag,
    required TResult orElse(),
  }) {
    if (likeStencil != null) {
      return likeStencil(this);
    }
    return orElse();
  }
}

abstract class _LikeStencil implements ArtistStencilEvent {
  const factory _LikeStencil(final int stencilId) = _$LikeStencilImpl;

  int get stencilId;
  @JsonKey(ignore: true)
  _$$LikeStencilImplCopyWith<_$LikeStencilImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTagSuggestionsImplCopyWith<$Res> {
  factory _$$GetTagSuggestionsImplCopyWith(_$GetTagSuggestionsImpl value,
          $Res Function(_$GetTagSuggestionsImpl) then) =
      __$$GetTagSuggestionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String prefix});
}

/// @nodoc
class __$$GetTagSuggestionsImplCopyWithImpl<$Res>
    extends _$ArtistStencilEventCopyWithImpl<$Res, _$GetTagSuggestionsImpl>
    implements _$$GetTagSuggestionsImplCopyWith<$Res> {
  __$$GetTagSuggestionsImplCopyWithImpl(_$GetTagSuggestionsImpl _value,
      $Res Function(_$GetTagSuggestionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefix = null,
  }) {
    return _then(_$GetTagSuggestionsImpl(
      null == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTagSuggestionsImpl implements _GetTagSuggestions {
  const _$GetTagSuggestionsImpl(this.prefix);

  @override
  final String prefix;

  @override
  String toString() {
    return 'ArtistStencilEvent.getTagSuggestions(prefix: $prefix)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTagSuggestionsImpl &&
            (identical(other.prefix, prefix) || other.prefix == prefix));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prefix);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTagSuggestionsImplCopyWith<_$GetTagSuggestionsImpl> get copyWith =>
      __$$GetTagSuggestionsImplCopyWithImpl<_$GetTagSuggestionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includeHidden) loadStencils,
    required TResult Function(int stencilId) loadStencilDetail,
    required TResult Function(String title, String? description,
            bool isFeatured, bool isHidden, List<int>? tagIds, XFile? imageFile)
        createStencil,
    required TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)
        updateStencil,
    required TResult Function(int stencilId) deleteStencil,
    required TResult Function(Stencil stencil) toggleFeatured,
    required TResult Function(Stencil stencil) toggleVisibility,
    required TResult Function(int stencilId) recordView,
    required TResult Function(int stencilId) likeStencil,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterStencilsByTag,
  }) {
    return getTagSuggestions(prefix);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadStencils,
    TResult? Function(int stencilId)? loadStencilDetail,
    TResult? Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult? Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult? Function(int stencilId)? deleteStencil,
    TResult? Function(Stencil stencil)? toggleFeatured,
    TResult? Function(Stencil stencil)? toggleVisibility,
    TResult? Function(int stencilId)? recordView,
    TResult? Function(int stencilId)? likeStencil,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterStencilsByTag,
  }) {
    return getTagSuggestions?.call(prefix);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadStencils,
    TResult Function(int stencilId)? loadStencilDetail,
    TResult Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult Function(int stencilId)? deleteStencil,
    TResult Function(Stencil stencil)? toggleFeatured,
    TResult Function(Stencil stencil)? toggleVisibility,
    TResult Function(int stencilId)? recordView,
    TResult Function(int stencilId)? likeStencil,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterStencilsByTag,
    required TResult orElse(),
  }) {
    if (getTagSuggestions != null) {
      return getTagSuggestions(prefix);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStencils value) loadStencils,
    required TResult Function(_LoadStencilDetail value) loadStencilDetail,
    required TResult Function(_CreateStencil value) createStencil,
    required TResult Function(_UpdateStencil value) updateStencil,
    required TResult Function(_DeleteStencil value) deleteStencil,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeStencil value) likeStencil,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterStencilsByTag value) filterStencilsByTag,
  }) {
    return getTagSuggestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStencils value)? loadStencils,
    TResult? Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult? Function(_CreateStencil value)? createStencil,
    TResult? Function(_UpdateStencil value)? updateStencil,
    TResult? Function(_DeleteStencil value)? deleteStencil,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeStencil value)? likeStencil,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterStencilsByTag value)? filterStencilsByTag,
  }) {
    return getTagSuggestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStencils value)? loadStencils,
    TResult Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult Function(_CreateStencil value)? createStencil,
    TResult Function(_UpdateStencil value)? updateStencil,
    TResult Function(_DeleteStencil value)? deleteStencil,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeStencil value)? likeStencil,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterStencilsByTag value)? filterStencilsByTag,
    required TResult orElse(),
  }) {
    if (getTagSuggestions != null) {
      return getTagSuggestions(this);
    }
    return orElse();
  }
}

abstract class _GetTagSuggestions implements ArtistStencilEvent {
  const factory _GetTagSuggestions(final String prefix) =
      _$GetTagSuggestionsImpl;

  String get prefix;
  @JsonKey(ignore: true)
  _$$GetTagSuggestionsImplCopyWith<_$GetTagSuggestionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPopularTagsImplCopyWith<$Res> {
  factory _$$GetPopularTagsImplCopyWith(_$GetPopularTagsImpl value,
          $Res Function(_$GetPopularTagsImpl) then) =
      __$$GetPopularTagsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPopularTagsImplCopyWithImpl<$Res>
    extends _$ArtistStencilEventCopyWithImpl<$Res, _$GetPopularTagsImpl>
    implements _$$GetPopularTagsImplCopyWith<$Res> {
  __$$GetPopularTagsImplCopyWithImpl(
      _$GetPopularTagsImpl _value, $Res Function(_$GetPopularTagsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPopularTagsImpl implements _GetPopularTags {
  const _$GetPopularTagsImpl();

  @override
  String toString() {
    return 'ArtistStencilEvent.getPopularTags()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPopularTagsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includeHidden) loadStencils,
    required TResult Function(int stencilId) loadStencilDetail,
    required TResult Function(String title, String? description,
            bool isFeatured, bool isHidden, List<int>? tagIds, XFile? imageFile)
        createStencil,
    required TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)
        updateStencil,
    required TResult Function(int stencilId) deleteStencil,
    required TResult Function(Stencil stencil) toggleFeatured,
    required TResult Function(Stencil stencil) toggleVisibility,
    required TResult Function(int stencilId) recordView,
    required TResult Function(int stencilId) likeStencil,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterStencilsByTag,
  }) {
    return getPopularTags();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadStencils,
    TResult? Function(int stencilId)? loadStencilDetail,
    TResult? Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult? Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult? Function(int stencilId)? deleteStencil,
    TResult? Function(Stencil stencil)? toggleFeatured,
    TResult? Function(Stencil stencil)? toggleVisibility,
    TResult? Function(int stencilId)? recordView,
    TResult? Function(int stencilId)? likeStencil,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterStencilsByTag,
  }) {
    return getPopularTags?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadStencils,
    TResult Function(int stencilId)? loadStencilDetail,
    TResult Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult Function(int stencilId)? deleteStencil,
    TResult Function(Stencil stencil)? toggleFeatured,
    TResult Function(Stencil stencil)? toggleVisibility,
    TResult Function(int stencilId)? recordView,
    TResult Function(int stencilId)? likeStencil,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterStencilsByTag,
    required TResult orElse(),
  }) {
    if (getPopularTags != null) {
      return getPopularTags();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStencils value) loadStencils,
    required TResult Function(_LoadStencilDetail value) loadStencilDetail,
    required TResult Function(_CreateStencil value) createStencil,
    required TResult Function(_UpdateStencil value) updateStencil,
    required TResult Function(_DeleteStencil value) deleteStencil,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeStencil value) likeStencil,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterStencilsByTag value) filterStencilsByTag,
  }) {
    return getPopularTags(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStencils value)? loadStencils,
    TResult? Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult? Function(_CreateStencil value)? createStencil,
    TResult? Function(_UpdateStencil value)? updateStencil,
    TResult? Function(_DeleteStencil value)? deleteStencil,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeStencil value)? likeStencil,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterStencilsByTag value)? filterStencilsByTag,
  }) {
    return getPopularTags?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStencils value)? loadStencils,
    TResult Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult Function(_CreateStencil value)? createStencil,
    TResult Function(_UpdateStencil value)? updateStencil,
    TResult Function(_DeleteStencil value)? deleteStencil,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeStencil value)? likeStencil,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterStencilsByTag value)? filterStencilsByTag,
    required TResult orElse(),
  }) {
    if (getPopularTags != null) {
      return getPopularTags(this);
    }
    return orElse();
  }
}

abstract class _GetPopularTags implements ArtistStencilEvent {
  const factory _GetPopularTags() = _$GetPopularTagsImpl;
}

/// @nodoc
abstract class _$$CreateTagImplCopyWith<$Res> {
  factory _$$CreateTagImplCopyWith(
          _$CreateTagImpl value, $Res Function(_$CreateTagImpl) then) =
      __$$CreateTagImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$CreateTagImplCopyWithImpl<$Res>
    extends _$ArtistStencilEventCopyWithImpl<$Res, _$CreateTagImpl>
    implements _$$CreateTagImplCopyWith<$Res> {
  __$$CreateTagImplCopyWithImpl(
      _$CreateTagImpl _value, $Res Function(_$CreateTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$CreateTagImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateTagImpl implements _CreateTag {
  const _$CreateTagImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'ArtistStencilEvent.createTag(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTagImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTagImplCopyWith<_$CreateTagImpl> get copyWith =>
      __$$CreateTagImplCopyWithImpl<_$CreateTagImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includeHidden) loadStencils,
    required TResult Function(int stencilId) loadStencilDetail,
    required TResult Function(String title, String? description,
            bool isFeatured, bool isHidden, List<int>? tagIds, XFile? imageFile)
        createStencil,
    required TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)
        updateStencil,
    required TResult Function(int stencilId) deleteStencil,
    required TResult Function(Stencil stencil) toggleFeatured,
    required TResult Function(Stencil stencil) toggleVisibility,
    required TResult Function(int stencilId) recordView,
    required TResult Function(int stencilId) likeStencil,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterStencilsByTag,
  }) {
    return createTag(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadStencils,
    TResult? Function(int stencilId)? loadStencilDetail,
    TResult? Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult? Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult? Function(int stencilId)? deleteStencil,
    TResult? Function(Stencil stencil)? toggleFeatured,
    TResult? Function(Stencil stencil)? toggleVisibility,
    TResult? Function(int stencilId)? recordView,
    TResult? Function(int stencilId)? likeStencil,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterStencilsByTag,
  }) {
    return createTag?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadStencils,
    TResult Function(int stencilId)? loadStencilDetail,
    TResult Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult Function(int stencilId)? deleteStencil,
    TResult Function(Stencil stencil)? toggleFeatured,
    TResult Function(Stencil stencil)? toggleVisibility,
    TResult Function(int stencilId)? recordView,
    TResult Function(int stencilId)? likeStencil,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterStencilsByTag,
    required TResult orElse(),
  }) {
    if (createTag != null) {
      return createTag(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStencils value) loadStencils,
    required TResult Function(_LoadStencilDetail value) loadStencilDetail,
    required TResult Function(_CreateStencil value) createStencil,
    required TResult Function(_UpdateStencil value) updateStencil,
    required TResult Function(_DeleteStencil value) deleteStencil,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeStencil value) likeStencil,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterStencilsByTag value) filterStencilsByTag,
  }) {
    return createTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStencils value)? loadStencils,
    TResult? Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult? Function(_CreateStencil value)? createStencil,
    TResult? Function(_UpdateStencil value)? updateStencil,
    TResult? Function(_DeleteStencil value)? deleteStencil,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeStencil value)? likeStencil,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterStencilsByTag value)? filterStencilsByTag,
  }) {
    return createTag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStencils value)? loadStencils,
    TResult Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult Function(_CreateStencil value)? createStencil,
    TResult Function(_UpdateStencil value)? updateStencil,
    TResult Function(_DeleteStencil value)? deleteStencil,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeStencil value)? likeStencil,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterStencilsByTag value)? filterStencilsByTag,
    required TResult orElse(),
  }) {
    if (createTag != null) {
      return createTag(this);
    }
    return orElse();
  }
}

abstract class _CreateTag implements ArtistStencilEvent {
  const factory _CreateTag(final String name) = _$CreateTagImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$CreateTagImplCopyWith<_$CreateTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterStencilsByTagImplCopyWith<$Res> {
  factory _$$FilterStencilsByTagImplCopyWith(_$FilterStencilsByTagImpl value,
          $Res Function(_$FilterStencilsByTagImpl) then) =
      __$$FilterStencilsByTagImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int tagId});
}

/// @nodoc
class __$$FilterStencilsByTagImplCopyWithImpl<$Res>
    extends _$ArtistStencilEventCopyWithImpl<$Res, _$FilterStencilsByTagImpl>
    implements _$$FilterStencilsByTagImplCopyWith<$Res> {
  __$$FilterStencilsByTagImplCopyWithImpl(_$FilterStencilsByTagImpl _value,
      $Res Function(_$FilterStencilsByTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagId = null,
  }) {
    return _then(_$FilterStencilsByTagImpl(
      null == tagId
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FilterStencilsByTagImpl implements _FilterStencilsByTag {
  const _$FilterStencilsByTagImpl(this.tagId);

  @override
  final int tagId;

  @override
  String toString() {
    return 'ArtistStencilEvent.filterStencilsByTag(tagId: $tagId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterStencilsByTagImpl &&
            (identical(other.tagId, tagId) || other.tagId == tagId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tagId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterStencilsByTagImplCopyWith<_$FilterStencilsByTagImpl> get copyWith =>
      __$$FilterStencilsByTagImplCopyWithImpl<_$FilterStencilsByTagImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includeHidden) loadStencils,
    required TResult Function(int stencilId) loadStencilDetail,
    required TResult Function(String title, String? description,
            bool isFeatured, bool isHidden, List<int>? tagIds, XFile? imageFile)
        createStencil,
    required TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)
        updateStencil,
    required TResult Function(int stencilId) deleteStencil,
    required TResult Function(Stencil stencil) toggleFeatured,
    required TResult Function(Stencil stencil) toggleVisibility,
    required TResult Function(int stencilId) recordView,
    required TResult Function(int stencilId) likeStencil,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterStencilsByTag,
  }) {
    return filterStencilsByTag(tagId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadStencils,
    TResult? Function(int stencilId)? loadStencilDetail,
    TResult? Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult? Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult? Function(int stencilId)? deleteStencil,
    TResult? Function(Stencil stencil)? toggleFeatured,
    TResult? Function(Stencil stencil)? toggleVisibility,
    TResult? Function(int stencilId)? recordView,
    TResult? Function(int stencilId)? likeStencil,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterStencilsByTag,
  }) {
    return filterStencilsByTag?.call(tagId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadStencils,
    TResult Function(int stencilId)? loadStencilDetail,
    TResult Function(String title, String? description, bool isFeatured,
            bool isHidden, List<int>? tagIds, XFile? imageFile)?
        createStencil,
    TResult Function(
            int stencilId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile)?
        updateStencil,
    TResult Function(int stencilId)? deleteStencil,
    TResult Function(Stencil stencil)? toggleFeatured,
    TResult Function(Stencil stencil)? toggleVisibility,
    TResult Function(int stencilId)? recordView,
    TResult Function(int stencilId)? likeStencil,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterStencilsByTag,
    required TResult orElse(),
  }) {
    if (filterStencilsByTag != null) {
      return filterStencilsByTag(tagId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadStencils value) loadStencils,
    required TResult Function(_LoadStencilDetail value) loadStencilDetail,
    required TResult Function(_CreateStencil value) createStencil,
    required TResult Function(_UpdateStencil value) updateStencil,
    required TResult Function(_DeleteStencil value) deleteStencil,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeStencil value) likeStencil,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterStencilsByTag value) filterStencilsByTag,
  }) {
    return filterStencilsByTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadStencils value)? loadStencils,
    TResult? Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult? Function(_CreateStencil value)? createStencil,
    TResult? Function(_UpdateStencil value)? updateStencil,
    TResult? Function(_DeleteStencil value)? deleteStencil,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeStencil value)? likeStencil,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterStencilsByTag value)? filterStencilsByTag,
  }) {
    return filterStencilsByTag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadStencils value)? loadStencils,
    TResult Function(_LoadStencilDetail value)? loadStencilDetail,
    TResult Function(_CreateStencil value)? createStencil,
    TResult Function(_UpdateStencil value)? updateStencil,
    TResult Function(_DeleteStencil value)? deleteStencil,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeStencil value)? likeStencil,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterStencilsByTag value)? filterStencilsByTag,
    required TResult orElse(),
  }) {
    if (filterStencilsByTag != null) {
      return filterStencilsByTag(this);
    }
    return orElse();
  }
}

abstract class _FilterStencilsByTag implements ArtistStencilEvent {
  const factory _FilterStencilsByTag(final int tagId) =
      _$FilterStencilsByTagImpl;

  int get tagId;
  @JsonKey(ignore: true)
  _$$FilterStencilsByTagImplCopyWith<_$FilterStencilsByTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ArtistStencilState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Stencil> stencils) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Stencil stencil) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Stencil stencil) stencilCreated,
    required TResult Function(Stencil stencil) stencilUpdated,
    required TResult Function() stencilDeleted,
    required TResult Function(int stencilId, int viewCount) viewRecorded,
    required TResult Function(int stencilId, int likeCount) stencilLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Stencil> stencils, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Stencil> stencils)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Stencil stencil)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Stencil stencil)? stencilCreated,
    TResult? Function(Stencil stencil)? stencilUpdated,
    TResult? Function()? stencilDeleted,
    TResult? Function(int stencilId, int viewCount)? viewRecorded,
    TResult? Function(int stencilId, int likeCount)? stencilLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Stencil> stencils)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Stencil stencil)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Stencil stencil)? stencilCreated,
    TResult Function(Stencil stencil)? stencilUpdated,
    TResult Function()? stencilDeleted,
    TResult Function(int stencilId, int viewCount)? viewRecorded,
    TResult Function(int stencilId, int likeCount)? stencilLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoading value) detailLoading,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_StencilCreated value) stencilCreated,
    required TResult Function(_StencilUpdated value) stencilUpdated,
    required TResult Function(_StencilDeleted value) stencilDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_StencilLiked value) stencilLiked,
    required TResult Function(_TagSuggestionsLoaded value) tagSuggestionsLoaded,
    required TResult Function(_PopularTagsLoaded value) popularTagsLoaded,
    required TResult Function(_TagCreated value) tagCreated,
    required TResult Function(_FilteredByTag value) filteredByTag,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoading value)? detailLoading,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_StencilCreated value)? stencilCreated,
    TResult? Function(_StencilUpdated value)? stencilUpdated,
    TResult? Function(_StencilDeleted value)? stencilDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_StencilLiked value)? stencilLiked,
    TResult? Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult? Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult? Function(_TagCreated value)? tagCreated,
    TResult? Function(_FilteredByTag value)? filteredByTag,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoading value)? detailLoading,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_StencilCreated value)? stencilCreated,
    TResult Function(_StencilUpdated value)? stencilUpdated,
    TResult Function(_StencilDeleted value)? stencilDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_StencilLiked value)? stencilLiked,
    TResult Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult Function(_TagCreated value)? tagCreated,
    TResult Function(_FilteredByTag value)? filteredByTag,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistStencilStateCopyWith<$Res> {
  factory $ArtistStencilStateCopyWith(
          ArtistStencilState value, $Res Function(ArtistStencilState) then) =
      _$ArtistStencilStateCopyWithImpl<$Res, ArtistStencilState>;
}

/// @nodoc
class _$ArtistStencilStateCopyWithImpl<$Res, $Val extends ArtistStencilState>
    implements $ArtistStencilStateCopyWith<$Res> {
  _$ArtistStencilStateCopyWithImpl(this._value, this._then);

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
    extends _$ArtistStencilStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ArtistStencilState.initial()';
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
    required TResult Function(List<Stencil> stencils) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Stencil stencil) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Stencil stencil) stencilCreated,
    required TResult Function(Stencil stencil) stencilUpdated,
    required TResult Function() stencilDeleted,
    required TResult Function(int stencilId, int viewCount) viewRecorded,
    required TResult Function(int stencilId, int likeCount) stencilLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Stencil> stencils, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Stencil> stencils)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Stencil stencil)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Stencil stencil)? stencilCreated,
    TResult? Function(Stencil stencil)? stencilUpdated,
    TResult? Function()? stencilDeleted,
    TResult? Function(int stencilId, int viewCount)? viewRecorded,
    TResult? Function(int stencilId, int likeCount)? stencilLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Stencil> stencils)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Stencil stencil)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Stencil stencil)? stencilCreated,
    TResult Function(Stencil stencil)? stencilUpdated,
    TResult Function()? stencilDeleted,
    TResult Function(int stencilId, int viewCount)? viewRecorded,
    TResult Function(int stencilId, int likeCount)? stencilLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Stencil> stencils, int tagId)? filteredByTag,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoading value) detailLoading,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_StencilCreated value) stencilCreated,
    required TResult Function(_StencilUpdated value) stencilUpdated,
    required TResult Function(_StencilDeleted value) stencilDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_StencilLiked value) stencilLiked,
    required TResult Function(_TagSuggestionsLoaded value) tagSuggestionsLoaded,
    required TResult Function(_PopularTagsLoaded value) popularTagsLoaded,
    required TResult Function(_TagCreated value) tagCreated,
    required TResult Function(_FilteredByTag value) filteredByTag,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoading value)? detailLoading,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_StencilCreated value)? stencilCreated,
    TResult? Function(_StencilUpdated value)? stencilUpdated,
    TResult? Function(_StencilDeleted value)? stencilDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_StencilLiked value)? stencilLiked,
    TResult? Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult? Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult? Function(_TagCreated value)? tagCreated,
    TResult? Function(_FilteredByTag value)? filteredByTag,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoading value)? detailLoading,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_StencilCreated value)? stencilCreated,
    TResult Function(_StencilUpdated value)? stencilUpdated,
    TResult Function(_StencilDeleted value)? stencilDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_StencilLiked value)? stencilLiked,
    TResult Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult Function(_TagCreated value)? tagCreated,
    TResult Function(_FilteredByTag value)? filteredByTag,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ArtistStencilState {
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
    extends _$ArtistStencilStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'ArtistStencilState.loading()';
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
    required TResult Function(List<Stencil> stencils) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Stencil stencil) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Stencil stencil) stencilCreated,
    required TResult Function(Stencil stencil) stencilUpdated,
    required TResult Function() stencilDeleted,
    required TResult Function(int stencilId, int viewCount) viewRecorded,
    required TResult Function(int stencilId, int likeCount) stencilLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Stencil> stencils, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Stencil> stencils)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Stencil stencil)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Stencil stencil)? stencilCreated,
    TResult? Function(Stencil stencil)? stencilUpdated,
    TResult? Function()? stencilDeleted,
    TResult? Function(int stencilId, int viewCount)? viewRecorded,
    TResult? Function(int stencilId, int likeCount)? stencilLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Stencil> stencils)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Stencil stencil)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Stencil stencil)? stencilCreated,
    TResult Function(Stencil stencil)? stencilUpdated,
    TResult Function()? stencilDeleted,
    TResult Function(int stencilId, int viewCount)? viewRecorded,
    TResult Function(int stencilId, int likeCount)? stencilLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Stencil> stencils, int tagId)? filteredByTag,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoading value) detailLoading,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_StencilCreated value) stencilCreated,
    required TResult Function(_StencilUpdated value) stencilUpdated,
    required TResult Function(_StencilDeleted value) stencilDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_StencilLiked value) stencilLiked,
    required TResult Function(_TagSuggestionsLoaded value) tagSuggestionsLoaded,
    required TResult Function(_PopularTagsLoaded value) popularTagsLoaded,
    required TResult Function(_TagCreated value) tagCreated,
    required TResult Function(_FilteredByTag value) filteredByTag,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoading value)? detailLoading,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_StencilCreated value)? stencilCreated,
    TResult? Function(_StencilUpdated value)? stencilUpdated,
    TResult? Function(_StencilDeleted value)? stencilDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_StencilLiked value)? stencilLiked,
    TResult? Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult? Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult? Function(_TagCreated value)? tagCreated,
    TResult? Function(_FilteredByTag value)? filteredByTag,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoading value)? detailLoading,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_StencilCreated value)? stencilCreated,
    TResult Function(_StencilUpdated value)? stencilUpdated,
    TResult Function(_StencilDeleted value)? stencilDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_StencilLiked value)? stencilLiked,
    TResult Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult Function(_TagCreated value)? tagCreated,
    TResult Function(_FilteredByTag value)? filteredByTag,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ArtistStencilState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Stencil> stencils});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ArtistStencilStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stencils = null,
  }) {
    return _then(_$LoadedImpl(
      null == stencils
          ? _value._stencils
          : stencils // ignore: cast_nullable_to_non_nullable
              as List<Stencil>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<Stencil> stencils) : _stencils = stencils;

  final List<Stencil> _stencils;
  @override
  List<Stencil> get stencils {
    if (_stencils is EqualUnmodifiableListView) return _stencils;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stencils);
  }

  @override
  String toString() {
    return 'ArtistStencilState.loaded(stencils: $stencils)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._stencils, _stencils));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stencils));

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
    required TResult Function(List<Stencil> stencils) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Stencil stencil) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Stencil stencil) stencilCreated,
    required TResult Function(Stencil stencil) stencilUpdated,
    required TResult Function() stencilDeleted,
    required TResult Function(int stencilId, int viewCount) viewRecorded,
    required TResult Function(int stencilId, int likeCount) stencilLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Stencil> stencils, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return loaded(stencils);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Stencil> stencils)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Stencil stencil)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Stencil stencil)? stencilCreated,
    TResult? Function(Stencil stencil)? stencilUpdated,
    TResult? Function()? stencilDeleted,
    TResult? Function(int stencilId, int viewCount)? viewRecorded,
    TResult? Function(int stencilId, int likeCount)? stencilLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(stencils);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Stencil> stencils)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Stencil stencil)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Stencil stencil)? stencilCreated,
    TResult Function(Stencil stencil)? stencilUpdated,
    TResult Function()? stencilDeleted,
    TResult Function(int stencilId, int viewCount)? viewRecorded,
    TResult Function(int stencilId, int likeCount)? stencilLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(stencils);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoading value) detailLoading,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_StencilCreated value) stencilCreated,
    required TResult Function(_StencilUpdated value) stencilUpdated,
    required TResult Function(_StencilDeleted value) stencilDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_StencilLiked value) stencilLiked,
    required TResult Function(_TagSuggestionsLoaded value) tagSuggestionsLoaded,
    required TResult Function(_PopularTagsLoaded value) popularTagsLoaded,
    required TResult Function(_TagCreated value) tagCreated,
    required TResult Function(_FilteredByTag value) filteredByTag,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoading value)? detailLoading,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_StencilCreated value)? stencilCreated,
    TResult? Function(_StencilUpdated value)? stencilUpdated,
    TResult? Function(_StencilDeleted value)? stencilDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_StencilLiked value)? stencilLiked,
    TResult? Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult? Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult? Function(_TagCreated value)? tagCreated,
    TResult? Function(_FilteredByTag value)? filteredByTag,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoading value)? detailLoading,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_StencilCreated value)? stencilCreated,
    TResult Function(_StencilUpdated value)? stencilUpdated,
    TResult Function(_StencilDeleted value)? stencilDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_StencilLiked value)? stencilLiked,
    TResult Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult Function(_TagCreated value)? tagCreated,
    TResult Function(_FilteredByTag value)? filteredByTag,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ArtistStencilState {
  const factory _Loaded(final List<Stencil> stencils) = _$LoadedImpl;

  List<Stencil> get stencils;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailLoadingImplCopyWith<$Res> {
  factory _$$DetailLoadingImplCopyWith(
          _$DetailLoadingImpl value, $Res Function(_$DetailLoadingImpl) then) =
      __$$DetailLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DetailLoadingImplCopyWithImpl<$Res>
    extends _$ArtistStencilStateCopyWithImpl<$Res, _$DetailLoadingImpl>
    implements _$$DetailLoadingImplCopyWith<$Res> {
  __$$DetailLoadingImplCopyWithImpl(
      _$DetailLoadingImpl _value, $Res Function(_$DetailLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DetailLoadingImpl implements _DetailLoading {
  const _$DetailLoadingImpl();

  @override
  String toString() {
    return 'ArtistStencilState.detailLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DetailLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Stencil> stencils) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Stencil stencil) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Stencil stencil) stencilCreated,
    required TResult Function(Stencil stencil) stencilUpdated,
    required TResult Function() stencilDeleted,
    required TResult Function(int stencilId, int viewCount) viewRecorded,
    required TResult Function(int stencilId, int likeCount) stencilLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Stencil> stencils, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return detailLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Stencil> stencils)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Stencil stencil)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Stencil stencil)? stencilCreated,
    TResult? Function(Stencil stencil)? stencilUpdated,
    TResult? Function()? stencilDeleted,
    TResult? Function(int stencilId, int viewCount)? viewRecorded,
    TResult? Function(int stencilId, int likeCount)? stencilLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return detailLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Stencil> stencils)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Stencil stencil)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Stencil stencil)? stencilCreated,
    TResult Function(Stencil stencil)? stencilUpdated,
    TResult Function()? stencilDeleted,
    TResult Function(int stencilId, int viewCount)? viewRecorded,
    TResult Function(int stencilId, int likeCount)? stencilLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (detailLoading != null) {
      return detailLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoading value) detailLoading,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_StencilCreated value) stencilCreated,
    required TResult Function(_StencilUpdated value) stencilUpdated,
    required TResult Function(_StencilDeleted value) stencilDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_StencilLiked value) stencilLiked,
    required TResult Function(_TagSuggestionsLoaded value) tagSuggestionsLoaded,
    required TResult Function(_PopularTagsLoaded value) popularTagsLoaded,
    required TResult Function(_TagCreated value) tagCreated,
    required TResult Function(_FilteredByTag value) filteredByTag,
    required TResult Function(_Error value) error,
  }) {
    return detailLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoading value)? detailLoading,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_StencilCreated value)? stencilCreated,
    TResult? Function(_StencilUpdated value)? stencilUpdated,
    TResult? Function(_StencilDeleted value)? stencilDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_StencilLiked value)? stencilLiked,
    TResult? Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult? Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult? Function(_TagCreated value)? tagCreated,
    TResult? Function(_FilteredByTag value)? filteredByTag,
    TResult? Function(_Error value)? error,
  }) {
    return detailLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoading value)? detailLoading,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_StencilCreated value)? stencilCreated,
    TResult Function(_StencilUpdated value)? stencilUpdated,
    TResult Function(_StencilDeleted value)? stencilDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_StencilLiked value)? stencilLiked,
    TResult Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult Function(_TagCreated value)? tagCreated,
    TResult Function(_FilteredByTag value)? filteredByTag,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (detailLoading != null) {
      return detailLoading(this);
    }
    return orElse();
  }
}

abstract class _DetailLoading implements ArtistStencilState {
  const factory _DetailLoading() = _$DetailLoadingImpl;
}

/// @nodoc
abstract class _$$DetailLoadedImplCopyWith<$Res> {
  factory _$$DetailLoadedImplCopyWith(
          _$DetailLoadedImpl value, $Res Function(_$DetailLoadedImpl) then) =
      __$$DetailLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Stencil stencil});

  $StencilCopyWith<$Res> get stencil;
}

/// @nodoc
class __$$DetailLoadedImplCopyWithImpl<$Res>
    extends _$ArtistStencilStateCopyWithImpl<$Res, _$DetailLoadedImpl>
    implements _$$DetailLoadedImplCopyWith<$Res> {
  __$$DetailLoadedImplCopyWithImpl(
      _$DetailLoadedImpl _value, $Res Function(_$DetailLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stencil = null,
  }) {
    return _then(_$DetailLoadedImpl(
      null == stencil
          ? _value.stencil
          : stencil // ignore: cast_nullable_to_non_nullable
              as Stencil,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StencilCopyWith<$Res> get stencil {
    return $StencilCopyWith<$Res>(_value.stencil, (value) {
      return _then(_value.copyWith(stencil: value));
    });
  }
}

/// @nodoc

class _$DetailLoadedImpl implements _DetailLoaded {
  const _$DetailLoadedImpl(this.stencil);

  @override
  final Stencil stencil;

  @override
  String toString() {
    return 'ArtistStencilState.detailLoaded(stencil: $stencil)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailLoadedImpl &&
            (identical(other.stencil, stencil) || other.stencil == stencil));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stencil);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailLoadedImplCopyWith<_$DetailLoadedImpl> get copyWith =>
      __$$DetailLoadedImplCopyWithImpl<_$DetailLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Stencil> stencils) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Stencil stencil) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Stencil stencil) stencilCreated,
    required TResult Function(Stencil stencil) stencilUpdated,
    required TResult Function() stencilDeleted,
    required TResult Function(int stencilId, int viewCount) viewRecorded,
    required TResult Function(int stencilId, int likeCount) stencilLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Stencil> stencils, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return detailLoaded(stencil);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Stencil> stencils)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Stencil stencil)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Stencil stencil)? stencilCreated,
    TResult? Function(Stencil stencil)? stencilUpdated,
    TResult? Function()? stencilDeleted,
    TResult? Function(int stencilId, int viewCount)? viewRecorded,
    TResult? Function(int stencilId, int likeCount)? stencilLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return detailLoaded?.call(stencil);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Stencil> stencils)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Stencil stencil)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Stencil stencil)? stencilCreated,
    TResult Function(Stencil stencil)? stencilUpdated,
    TResult Function()? stencilDeleted,
    TResult Function(int stencilId, int viewCount)? viewRecorded,
    TResult Function(int stencilId, int likeCount)? stencilLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (detailLoaded != null) {
      return detailLoaded(stencil);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoading value) detailLoading,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_StencilCreated value) stencilCreated,
    required TResult Function(_StencilUpdated value) stencilUpdated,
    required TResult Function(_StencilDeleted value) stencilDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_StencilLiked value) stencilLiked,
    required TResult Function(_TagSuggestionsLoaded value) tagSuggestionsLoaded,
    required TResult Function(_PopularTagsLoaded value) popularTagsLoaded,
    required TResult Function(_TagCreated value) tagCreated,
    required TResult Function(_FilteredByTag value) filteredByTag,
    required TResult Function(_Error value) error,
  }) {
    return detailLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoading value)? detailLoading,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_StencilCreated value)? stencilCreated,
    TResult? Function(_StencilUpdated value)? stencilUpdated,
    TResult? Function(_StencilDeleted value)? stencilDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_StencilLiked value)? stencilLiked,
    TResult? Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult? Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult? Function(_TagCreated value)? tagCreated,
    TResult? Function(_FilteredByTag value)? filteredByTag,
    TResult? Function(_Error value)? error,
  }) {
    return detailLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoading value)? detailLoading,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_StencilCreated value)? stencilCreated,
    TResult Function(_StencilUpdated value)? stencilUpdated,
    TResult Function(_StencilDeleted value)? stencilDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_StencilLiked value)? stencilLiked,
    TResult Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult Function(_TagCreated value)? tagCreated,
    TResult Function(_FilteredByTag value)? filteredByTag,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (detailLoaded != null) {
      return detailLoaded(this);
    }
    return orElse();
  }
}

abstract class _DetailLoaded implements ArtistStencilState {
  const factory _DetailLoaded(final Stencil stencil) = _$DetailLoadedImpl;

  Stencil get stencil;
  @JsonKey(ignore: true)
  _$$DetailLoadedImplCopyWith<_$DetailLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmittingImplCopyWith<$Res> {
  factory _$$SubmittingImplCopyWith(
          _$SubmittingImpl value, $Res Function(_$SubmittingImpl) then) =
      __$$SubmittingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmittingImplCopyWithImpl<$Res>
    extends _$ArtistStencilStateCopyWithImpl<$Res, _$SubmittingImpl>
    implements _$$SubmittingImplCopyWith<$Res> {
  __$$SubmittingImplCopyWithImpl(
      _$SubmittingImpl _value, $Res Function(_$SubmittingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmittingImpl implements _Submitting {
  const _$SubmittingImpl();

  @override
  String toString() {
    return 'ArtistStencilState.submitting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmittingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Stencil> stencils) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Stencil stencil) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Stencil stencil) stencilCreated,
    required TResult Function(Stencil stencil) stencilUpdated,
    required TResult Function() stencilDeleted,
    required TResult Function(int stencilId, int viewCount) viewRecorded,
    required TResult Function(int stencilId, int likeCount) stencilLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Stencil> stencils, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return submitting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Stencil> stencils)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Stencil stencil)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Stencil stencil)? stencilCreated,
    TResult? Function(Stencil stencil)? stencilUpdated,
    TResult? Function()? stencilDeleted,
    TResult? Function(int stencilId, int viewCount)? viewRecorded,
    TResult? Function(int stencilId, int likeCount)? stencilLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return submitting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Stencil> stencils)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Stencil stencil)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Stencil stencil)? stencilCreated,
    TResult Function(Stencil stencil)? stencilUpdated,
    TResult Function()? stencilDeleted,
    TResult Function(int stencilId, int viewCount)? viewRecorded,
    TResult Function(int stencilId, int likeCount)? stencilLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoading value) detailLoading,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_StencilCreated value) stencilCreated,
    required TResult Function(_StencilUpdated value) stencilUpdated,
    required TResult Function(_StencilDeleted value) stencilDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_StencilLiked value) stencilLiked,
    required TResult Function(_TagSuggestionsLoaded value) tagSuggestionsLoaded,
    required TResult Function(_PopularTagsLoaded value) popularTagsLoaded,
    required TResult Function(_TagCreated value) tagCreated,
    required TResult Function(_FilteredByTag value) filteredByTag,
    required TResult Function(_Error value) error,
  }) {
    return submitting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoading value)? detailLoading,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_StencilCreated value)? stencilCreated,
    TResult? Function(_StencilUpdated value)? stencilUpdated,
    TResult? Function(_StencilDeleted value)? stencilDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_StencilLiked value)? stencilLiked,
    TResult? Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult? Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult? Function(_TagCreated value)? tagCreated,
    TResult? Function(_FilteredByTag value)? filteredByTag,
    TResult? Function(_Error value)? error,
  }) {
    return submitting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoading value)? detailLoading,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_StencilCreated value)? stencilCreated,
    TResult Function(_StencilUpdated value)? stencilUpdated,
    TResult Function(_StencilDeleted value)? stencilDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_StencilLiked value)? stencilLiked,
    TResult Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult Function(_TagCreated value)? tagCreated,
    TResult Function(_FilteredByTag value)? filteredByTag,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (submitting != null) {
      return submitting(this);
    }
    return orElse();
  }
}

abstract class _Submitting implements ArtistStencilState {
  const factory _Submitting() = _$SubmittingImpl;
}

/// @nodoc
abstract class _$$StencilCreatedImplCopyWith<$Res> {
  factory _$$StencilCreatedImplCopyWith(_$StencilCreatedImpl value,
          $Res Function(_$StencilCreatedImpl) then) =
      __$$StencilCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Stencil stencil});

  $StencilCopyWith<$Res> get stencil;
}

/// @nodoc
class __$$StencilCreatedImplCopyWithImpl<$Res>
    extends _$ArtistStencilStateCopyWithImpl<$Res, _$StencilCreatedImpl>
    implements _$$StencilCreatedImplCopyWith<$Res> {
  __$$StencilCreatedImplCopyWithImpl(
      _$StencilCreatedImpl _value, $Res Function(_$StencilCreatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stencil = null,
  }) {
    return _then(_$StencilCreatedImpl(
      null == stencil
          ? _value.stencil
          : stencil // ignore: cast_nullable_to_non_nullable
              as Stencil,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StencilCopyWith<$Res> get stencil {
    return $StencilCopyWith<$Res>(_value.stencil, (value) {
      return _then(_value.copyWith(stencil: value));
    });
  }
}

/// @nodoc

class _$StencilCreatedImpl implements _StencilCreated {
  const _$StencilCreatedImpl(this.stencil);

  @override
  final Stencil stencil;

  @override
  String toString() {
    return 'ArtistStencilState.stencilCreated(stencil: $stencil)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StencilCreatedImpl &&
            (identical(other.stencil, stencil) || other.stencil == stencil));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stencil);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StencilCreatedImplCopyWith<_$StencilCreatedImpl> get copyWith =>
      __$$StencilCreatedImplCopyWithImpl<_$StencilCreatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Stencil> stencils) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Stencil stencil) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Stencil stencil) stencilCreated,
    required TResult Function(Stencil stencil) stencilUpdated,
    required TResult Function() stencilDeleted,
    required TResult Function(int stencilId, int viewCount) viewRecorded,
    required TResult Function(int stencilId, int likeCount) stencilLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Stencil> stencils, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return stencilCreated(stencil);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Stencil> stencils)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Stencil stencil)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Stencil stencil)? stencilCreated,
    TResult? Function(Stencil stencil)? stencilUpdated,
    TResult? Function()? stencilDeleted,
    TResult? Function(int stencilId, int viewCount)? viewRecorded,
    TResult? Function(int stencilId, int likeCount)? stencilLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return stencilCreated?.call(stencil);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Stencil> stencils)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Stencil stencil)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Stencil stencil)? stencilCreated,
    TResult Function(Stencil stencil)? stencilUpdated,
    TResult Function()? stencilDeleted,
    TResult Function(int stencilId, int viewCount)? viewRecorded,
    TResult Function(int stencilId, int likeCount)? stencilLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (stencilCreated != null) {
      return stencilCreated(stencil);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoading value) detailLoading,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_StencilCreated value) stencilCreated,
    required TResult Function(_StencilUpdated value) stencilUpdated,
    required TResult Function(_StencilDeleted value) stencilDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_StencilLiked value) stencilLiked,
    required TResult Function(_TagSuggestionsLoaded value) tagSuggestionsLoaded,
    required TResult Function(_PopularTagsLoaded value) popularTagsLoaded,
    required TResult Function(_TagCreated value) tagCreated,
    required TResult Function(_FilteredByTag value) filteredByTag,
    required TResult Function(_Error value) error,
  }) {
    return stencilCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoading value)? detailLoading,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_StencilCreated value)? stencilCreated,
    TResult? Function(_StencilUpdated value)? stencilUpdated,
    TResult? Function(_StencilDeleted value)? stencilDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_StencilLiked value)? stencilLiked,
    TResult? Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult? Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult? Function(_TagCreated value)? tagCreated,
    TResult? Function(_FilteredByTag value)? filteredByTag,
    TResult? Function(_Error value)? error,
  }) {
    return stencilCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoading value)? detailLoading,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_StencilCreated value)? stencilCreated,
    TResult Function(_StencilUpdated value)? stencilUpdated,
    TResult Function(_StencilDeleted value)? stencilDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_StencilLiked value)? stencilLiked,
    TResult Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult Function(_TagCreated value)? tagCreated,
    TResult Function(_FilteredByTag value)? filteredByTag,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (stencilCreated != null) {
      return stencilCreated(this);
    }
    return orElse();
  }
}

abstract class _StencilCreated implements ArtistStencilState {
  const factory _StencilCreated(final Stencil stencil) = _$StencilCreatedImpl;

  Stencil get stencil;
  @JsonKey(ignore: true)
  _$$StencilCreatedImplCopyWith<_$StencilCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StencilUpdatedImplCopyWith<$Res> {
  factory _$$StencilUpdatedImplCopyWith(_$StencilUpdatedImpl value,
          $Res Function(_$StencilUpdatedImpl) then) =
      __$$StencilUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Stencil stencil});

  $StencilCopyWith<$Res> get stencil;
}

/// @nodoc
class __$$StencilUpdatedImplCopyWithImpl<$Res>
    extends _$ArtistStencilStateCopyWithImpl<$Res, _$StencilUpdatedImpl>
    implements _$$StencilUpdatedImplCopyWith<$Res> {
  __$$StencilUpdatedImplCopyWithImpl(
      _$StencilUpdatedImpl _value, $Res Function(_$StencilUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stencil = null,
  }) {
    return _then(_$StencilUpdatedImpl(
      null == stencil
          ? _value.stencil
          : stencil // ignore: cast_nullable_to_non_nullable
              as Stencil,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StencilCopyWith<$Res> get stencil {
    return $StencilCopyWith<$Res>(_value.stencil, (value) {
      return _then(_value.copyWith(stencil: value));
    });
  }
}

/// @nodoc

class _$StencilUpdatedImpl implements _StencilUpdated {
  const _$StencilUpdatedImpl(this.stencil);

  @override
  final Stencil stencil;

  @override
  String toString() {
    return 'ArtistStencilState.stencilUpdated(stencil: $stencil)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StencilUpdatedImpl &&
            (identical(other.stencil, stencil) || other.stencil == stencil));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stencil);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StencilUpdatedImplCopyWith<_$StencilUpdatedImpl> get copyWith =>
      __$$StencilUpdatedImplCopyWithImpl<_$StencilUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Stencil> stencils) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Stencil stencil) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Stencil stencil) stencilCreated,
    required TResult Function(Stencil stencil) stencilUpdated,
    required TResult Function() stencilDeleted,
    required TResult Function(int stencilId, int viewCount) viewRecorded,
    required TResult Function(int stencilId, int likeCount) stencilLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Stencil> stencils, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return stencilUpdated(stencil);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Stencil> stencils)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Stencil stencil)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Stencil stencil)? stencilCreated,
    TResult? Function(Stencil stencil)? stencilUpdated,
    TResult? Function()? stencilDeleted,
    TResult? Function(int stencilId, int viewCount)? viewRecorded,
    TResult? Function(int stencilId, int likeCount)? stencilLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return stencilUpdated?.call(stencil);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Stencil> stencils)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Stencil stencil)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Stencil stencil)? stencilCreated,
    TResult Function(Stencil stencil)? stencilUpdated,
    TResult Function()? stencilDeleted,
    TResult Function(int stencilId, int viewCount)? viewRecorded,
    TResult Function(int stencilId, int likeCount)? stencilLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (stencilUpdated != null) {
      return stencilUpdated(stencil);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoading value) detailLoading,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_StencilCreated value) stencilCreated,
    required TResult Function(_StencilUpdated value) stencilUpdated,
    required TResult Function(_StencilDeleted value) stencilDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_StencilLiked value) stencilLiked,
    required TResult Function(_TagSuggestionsLoaded value) tagSuggestionsLoaded,
    required TResult Function(_PopularTagsLoaded value) popularTagsLoaded,
    required TResult Function(_TagCreated value) tagCreated,
    required TResult Function(_FilteredByTag value) filteredByTag,
    required TResult Function(_Error value) error,
  }) {
    return stencilUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoading value)? detailLoading,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_StencilCreated value)? stencilCreated,
    TResult? Function(_StencilUpdated value)? stencilUpdated,
    TResult? Function(_StencilDeleted value)? stencilDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_StencilLiked value)? stencilLiked,
    TResult? Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult? Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult? Function(_TagCreated value)? tagCreated,
    TResult? Function(_FilteredByTag value)? filteredByTag,
    TResult? Function(_Error value)? error,
  }) {
    return stencilUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoading value)? detailLoading,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_StencilCreated value)? stencilCreated,
    TResult Function(_StencilUpdated value)? stencilUpdated,
    TResult Function(_StencilDeleted value)? stencilDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_StencilLiked value)? stencilLiked,
    TResult Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult Function(_TagCreated value)? tagCreated,
    TResult Function(_FilteredByTag value)? filteredByTag,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (stencilUpdated != null) {
      return stencilUpdated(this);
    }
    return orElse();
  }
}

abstract class _StencilUpdated implements ArtistStencilState {
  const factory _StencilUpdated(final Stencil stencil) = _$StencilUpdatedImpl;

  Stencil get stencil;
  @JsonKey(ignore: true)
  _$$StencilUpdatedImplCopyWith<_$StencilUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StencilDeletedImplCopyWith<$Res> {
  factory _$$StencilDeletedImplCopyWith(_$StencilDeletedImpl value,
          $Res Function(_$StencilDeletedImpl) then) =
      __$$StencilDeletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StencilDeletedImplCopyWithImpl<$Res>
    extends _$ArtistStencilStateCopyWithImpl<$Res, _$StencilDeletedImpl>
    implements _$$StencilDeletedImplCopyWith<$Res> {
  __$$StencilDeletedImplCopyWithImpl(
      _$StencilDeletedImpl _value, $Res Function(_$StencilDeletedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StencilDeletedImpl implements _StencilDeleted {
  const _$StencilDeletedImpl();

  @override
  String toString() {
    return 'ArtistStencilState.stencilDeleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StencilDeletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Stencil> stencils) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Stencil stencil) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Stencil stencil) stencilCreated,
    required TResult Function(Stencil stencil) stencilUpdated,
    required TResult Function() stencilDeleted,
    required TResult Function(int stencilId, int viewCount) viewRecorded,
    required TResult Function(int stencilId, int likeCount) stencilLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Stencil> stencils, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return stencilDeleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Stencil> stencils)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Stencil stencil)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Stencil stencil)? stencilCreated,
    TResult? Function(Stencil stencil)? stencilUpdated,
    TResult? Function()? stencilDeleted,
    TResult? Function(int stencilId, int viewCount)? viewRecorded,
    TResult? Function(int stencilId, int likeCount)? stencilLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return stencilDeleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Stencil> stencils)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Stencil stencil)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Stencil stencil)? stencilCreated,
    TResult Function(Stencil stencil)? stencilUpdated,
    TResult Function()? stencilDeleted,
    TResult Function(int stencilId, int viewCount)? viewRecorded,
    TResult Function(int stencilId, int likeCount)? stencilLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (stencilDeleted != null) {
      return stencilDeleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoading value) detailLoading,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_StencilCreated value) stencilCreated,
    required TResult Function(_StencilUpdated value) stencilUpdated,
    required TResult Function(_StencilDeleted value) stencilDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_StencilLiked value) stencilLiked,
    required TResult Function(_TagSuggestionsLoaded value) tagSuggestionsLoaded,
    required TResult Function(_PopularTagsLoaded value) popularTagsLoaded,
    required TResult Function(_TagCreated value) tagCreated,
    required TResult Function(_FilteredByTag value) filteredByTag,
    required TResult Function(_Error value) error,
  }) {
    return stencilDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoading value)? detailLoading,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_StencilCreated value)? stencilCreated,
    TResult? Function(_StencilUpdated value)? stencilUpdated,
    TResult? Function(_StencilDeleted value)? stencilDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_StencilLiked value)? stencilLiked,
    TResult? Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult? Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult? Function(_TagCreated value)? tagCreated,
    TResult? Function(_FilteredByTag value)? filteredByTag,
    TResult? Function(_Error value)? error,
  }) {
    return stencilDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoading value)? detailLoading,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_StencilCreated value)? stencilCreated,
    TResult Function(_StencilUpdated value)? stencilUpdated,
    TResult Function(_StencilDeleted value)? stencilDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_StencilLiked value)? stencilLiked,
    TResult Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult Function(_TagCreated value)? tagCreated,
    TResult Function(_FilteredByTag value)? filteredByTag,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (stencilDeleted != null) {
      return stencilDeleted(this);
    }
    return orElse();
  }
}

abstract class _StencilDeleted implements ArtistStencilState {
  const factory _StencilDeleted() = _$StencilDeletedImpl;
}

/// @nodoc
abstract class _$$ViewRecordedImplCopyWith<$Res> {
  factory _$$ViewRecordedImplCopyWith(
          _$ViewRecordedImpl value, $Res Function(_$ViewRecordedImpl) then) =
      __$$ViewRecordedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stencilId, int viewCount});
}

/// @nodoc
class __$$ViewRecordedImplCopyWithImpl<$Res>
    extends _$ArtistStencilStateCopyWithImpl<$Res, _$ViewRecordedImpl>
    implements _$$ViewRecordedImplCopyWith<$Res> {
  __$$ViewRecordedImplCopyWithImpl(
      _$ViewRecordedImpl _value, $Res Function(_$ViewRecordedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stencilId = null,
    Object? viewCount = null,
  }) {
    return _then(_$ViewRecordedImpl(
      null == stencilId
          ? _value.stencilId
          : stencilId // ignore: cast_nullable_to_non_nullable
              as int,
      null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ViewRecordedImpl implements _ViewRecorded {
  const _$ViewRecordedImpl(this.stencilId, this.viewCount);

  @override
  final int stencilId;
  @override
  final int viewCount;

  @override
  String toString() {
    return 'ArtistStencilState.viewRecorded(stencilId: $stencilId, viewCount: $viewCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewRecordedImpl &&
            (identical(other.stencilId, stencilId) ||
                other.stencilId == stencilId) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stencilId, viewCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewRecordedImplCopyWith<_$ViewRecordedImpl> get copyWith =>
      __$$ViewRecordedImplCopyWithImpl<_$ViewRecordedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Stencil> stencils) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Stencil stencil) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Stencil stencil) stencilCreated,
    required TResult Function(Stencil stencil) stencilUpdated,
    required TResult Function() stencilDeleted,
    required TResult Function(int stencilId, int viewCount) viewRecorded,
    required TResult Function(int stencilId, int likeCount) stencilLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Stencil> stencils, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return viewRecorded(stencilId, viewCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Stencil> stencils)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Stencil stencil)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Stencil stencil)? stencilCreated,
    TResult? Function(Stencil stencil)? stencilUpdated,
    TResult? Function()? stencilDeleted,
    TResult? Function(int stencilId, int viewCount)? viewRecorded,
    TResult? Function(int stencilId, int likeCount)? stencilLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return viewRecorded?.call(stencilId, viewCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Stencil> stencils)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Stencil stencil)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Stencil stencil)? stencilCreated,
    TResult Function(Stencil stencil)? stencilUpdated,
    TResult Function()? stencilDeleted,
    TResult Function(int stencilId, int viewCount)? viewRecorded,
    TResult Function(int stencilId, int likeCount)? stencilLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (viewRecorded != null) {
      return viewRecorded(stencilId, viewCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoading value) detailLoading,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_StencilCreated value) stencilCreated,
    required TResult Function(_StencilUpdated value) stencilUpdated,
    required TResult Function(_StencilDeleted value) stencilDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_StencilLiked value) stencilLiked,
    required TResult Function(_TagSuggestionsLoaded value) tagSuggestionsLoaded,
    required TResult Function(_PopularTagsLoaded value) popularTagsLoaded,
    required TResult Function(_TagCreated value) tagCreated,
    required TResult Function(_FilteredByTag value) filteredByTag,
    required TResult Function(_Error value) error,
  }) {
    return viewRecorded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoading value)? detailLoading,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_StencilCreated value)? stencilCreated,
    TResult? Function(_StencilUpdated value)? stencilUpdated,
    TResult? Function(_StencilDeleted value)? stencilDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_StencilLiked value)? stencilLiked,
    TResult? Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult? Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult? Function(_TagCreated value)? tagCreated,
    TResult? Function(_FilteredByTag value)? filteredByTag,
    TResult? Function(_Error value)? error,
  }) {
    return viewRecorded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoading value)? detailLoading,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_StencilCreated value)? stencilCreated,
    TResult Function(_StencilUpdated value)? stencilUpdated,
    TResult Function(_StencilDeleted value)? stencilDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_StencilLiked value)? stencilLiked,
    TResult Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult Function(_TagCreated value)? tagCreated,
    TResult Function(_FilteredByTag value)? filteredByTag,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (viewRecorded != null) {
      return viewRecorded(this);
    }
    return orElse();
  }
}

abstract class _ViewRecorded implements ArtistStencilState {
  const factory _ViewRecorded(final int stencilId, final int viewCount) =
      _$ViewRecordedImpl;

  int get stencilId;
  int get viewCount;
  @JsonKey(ignore: true)
  _$$ViewRecordedImplCopyWith<_$ViewRecordedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StencilLikedImplCopyWith<$Res> {
  factory _$$StencilLikedImplCopyWith(
          _$StencilLikedImpl value, $Res Function(_$StencilLikedImpl) then) =
      __$$StencilLikedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int stencilId, int likeCount});
}

/// @nodoc
class __$$StencilLikedImplCopyWithImpl<$Res>
    extends _$ArtistStencilStateCopyWithImpl<$Res, _$StencilLikedImpl>
    implements _$$StencilLikedImplCopyWith<$Res> {
  __$$StencilLikedImplCopyWithImpl(
      _$StencilLikedImpl _value, $Res Function(_$StencilLikedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stencilId = null,
    Object? likeCount = null,
  }) {
    return _then(_$StencilLikedImpl(
      null == stencilId
          ? _value.stencilId
          : stencilId // ignore: cast_nullable_to_non_nullable
              as int,
      null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StencilLikedImpl implements _StencilLiked {
  const _$StencilLikedImpl(this.stencilId, this.likeCount);

  @override
  final int stencilId;
  @override
  final int likeCount;

  @override
  String toString() {
    return 'ArtistStencilState.stencilLiked(stencilId: $stencilId, likeCount: $likeCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StencilLikedImpl &&
            (identical(other.stencilId, stencilId) ||
                other.stencilId == stencilId) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stencilId, likeCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StencilLikedImplCopyWith<_$StencilLikedImpl> get copyWith =>
      __$$StencilLikedImplCopyWithImpl<_$StencilLikedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Stencil> stencils) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Stencil stencil) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Stencil stencil) stencilCreated,
    required TResult Function(Stencil stencil) stencilUpdated,
    required TResult Function() stencilDeleted,
    required TResult Function(int stencilId, int viewCount) viewRecorded,
    required TResult Function(int stencilId, int likeCount) stencilLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Stencil> stencils, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return stencilLiked(stencilId, likeCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Stencil> stencils)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Stencil stencil)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Stencil stencil)? stencilCreated,
    TResult? Function(Stencil stencil)? stencilUpdated,
    TResult? Function()? stencilDeleted,
    TResult? Function(int stencilId, int viewCount)? viewRecorded,
    TResult? Function(int stencilId, int likeCount)? stencilLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return stencilLiked?.call(stencilId, likeCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Stencil> stencils)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Stencil stencil)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Stencil stencil)? stencilCreated,
    TResult Function(Stencil stencil)? stencilUpdated,
    TResult Function()? stencilDeleted,
    TResult Function(int stencilId, int viewCount)? viewRecorded,
    TResult Function(int stencilId, int likeCount)? stencilLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (stencilLiked != null) {
      return stencilLiked(stencilId, likeCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoading value) detailLoading,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_StencilCreated value) stencilCreated,
    required TResult Function(_StencilUpdated value) stencilUpdated,
    required TResult Function(_StencilDeleted value) stencilDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_StencilLiked value) stencilLiked,
    required TResult Function(_TagSuggestionsLoaded value) tagSuggestionsLoaded,
    required TResult Function(_PopularTagsLoaded value) popularTagsLoaded,
    required TResult Function(_TagCreated value) tagCreated,
    required TResult Function(_FilteredByTag value) filteredByTag,
    required TResult Function(_Error value) error,
  }) {
    return stencilLiked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoading value)? detailLoading,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_StencilCreated value)? stencilCreated,
    TResult? Function(_StencilUpdated value)? stencilUpdated,
    TResult? Function(_StencilDeleted value)? stencilDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_StencilLiked value)? stencilLiked,
    TResult? Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult? Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult? Function(_TagCreated value)? tagCreated,
    TResult? Function(_FilteredByTag value)? filteredByTag,
    TResult? Function(_Error value)? error,
  }) {
    return stencilLiked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoading value)? detailLoading,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_StencilCreated value)? stencilCreated,
    TResult Function(_StencilUpdated value)? stencilUpdated,
    TResult Function(_StencilDeleted value)? stencilDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_StencilLiked value)? stencilLiked,
    TResult Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult Function(_TagCreated value)? tagCreated,
    TResult Function(_FilteredByTag value)? filteredByTag,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (stencilLiked != null) {
      return stencilLiked(this);
    }
    return orElse();
  }
}

abstract class _StencilLiked implements ArtistStencilState {
  const factory _StencilLiked(final int stencilId, final int likeCount) =
      _$StencilLikedImpl;

  int get stencilId;
  int get likeCount;
  @JsonKey(ignore: true)
  _$$StencilLikedImplCopyWith<_$StencilLikedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TagSuggestionsLoadedImplCopyWith<$Res> {
  factory _$$TagSuggestionsLoadedImplCopyWith(_$TagSuggestionsLoadedImpl value,
          $Res Function(_$TagSuggestionsLoadedImpl) then) =
      __$$TagSuggestionsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TagSuggestionResponseDto> suggestions});
}

/// @nodoc
class __$$TagSuggestionsLoadedImplCopyWithImpl<$Res>
    extends _$ArtistStencilStateCopyWithImpl<$Res, _$TagSuggestionsLoadedImpl>
    implements _$$TagSuggestionsLoadedImplCopyWith<$Res> {
  __$$TagSuggestionsLoadedImplCopyWithImpl(_$TagSuggestionsLoadedImpl _value,
      $Res Function(_$TagSuggestionsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestions = null,
  }) {
    return _then(_$TagSuggestionsLoadedImpl(
      null == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<TagSuggestionResponseDto>,
    ));
  }
}

/// @nodoc

class _$TagSuggestionsLoadedImpl implements _TagSuggestionsLoaded {
  const _$TagSuggestionsLoadedImpl(
      final List<TagSuggestionResponseDto> suggestions)
      : _suggestions = suggestions;

  final List<TagSuggestionResponseDto> _suggestions;
  @override
  List<TagSuggestionResponseDto> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  String toString() {
    return 'ArtistStencilState.tagSuggestionsLoaded(suggestions: $suggestions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagSuggestionsLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_suggestions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagSuggestionsLoadedImplCopyWith<_$TagSuggestionsLoadedImpl>
      get copyWith =>
          __$$TagSuggestionsLoadedImplCopyWithImpl<_$TagSuggestionsLoadedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Stencil> stencils) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Stencil stencil) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Stencil stencil) stencilCreated,
    required TResult Function(Stencil stencil) stencilUpdated,
    required TResult Function() stencilDeleted,
    required TResult Function(int stencilId, int viewCount) viewRecorded,
    required TResult Function(int stencilId, int likeCount) stencilLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Stencil> stencils, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return tagSuggestionsLoaded(suggestions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Stencil> stencils)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Stencil stencil)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Stencil stencil)? stencilCreated,
    TResult? Function(Stencil stencil)? stencilUpdated,
    TResult? Function()? stencilDeleted,
    TResult? Function(int stencilId, int viewCount)? viewRecorded,
    TResult? Function(int stencilId, int likeCount)? stencilLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return tagSuggestionsLoaded?.call(suggestions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Stencil> stencils)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Stencil stencil)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Stencil stencil)? stencilCreated,
    TResult Function(Stencil stencil)? stencilUpdated,
    TResult Function()? stencilDeleted,
    TResult Function(int stencilId, int viewCount)? viewRecorded,
    TResult Function(int stencilId, int likeCount)? stencilLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (tagSuggestionsLoaded != null) {
      return tagSuggestionsLoaded(suggestions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoading value) detailLoading,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_StencilCreated value) stencilCreated,
    required TResult Function(_StencilUpdated value) stencilUpdated,
    required TResult Function(_StencilDeleted value) stencilDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_StencilLiked value) stencilLiked,
    required TResult Function(_TagSuggestionsLoaded value) tagSuggestionsLoaded,
    required TResult Function(_PopularTagsLoaded value) popularTagsLoaded,
    required TResult Function(_TagCreated value) tagCreated,
    required TResult Function(_FilteredByTag value) filteredByTag,
    required TResult Function(_Error value) error,
  }) {
    return tagSuggestionsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoading value)? detailLoading,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_StencilCreated value)? stencilCreated,
    TResult? Function(_StencilUpdated value)? stencilUpdated,
    TResult? Function(_StencilDeleted value)? stencilDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_StencilLiked value)? stencilLiked,
    TResult? Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult? Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult? Function(_TagCreated value)? tagCreated,
    TResult? Function(_FilteredByTag value)? filteredByTag,
    TResult? Function(_Error value)? error,
  }) {
    return tagSuggestionsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoading value)? detailLoading,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_StencilCreated value)? stencilCreated,
    TResult Function(_StencilUpdated value)? stencilUpdated,
    TResult Function(_StencilDeleted value)? stencilDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_StencilLiked value)? stencilLiked,
    TResult Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult Function(_TagCreated value)? tagCreated,
    TResult Function(_FilteredByTag value)? filteredByTag,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (tagSuggestionsLoaded != null) {
      return tagSuggestionsLoaded(this);
    }
    return orElse();
  }
}

abstract class _TagSuggestionsLoaded implements ArtistStencilState {
  const factory _TagSuggestionsLoaded(
          final List<TagSuggestionResponseDto> suggestions) =
      _$TagSuggestionsLoadedImpl;

  List<TagSuggestionResponseDto> get suggestions;
  @JsonKey(ignore: true)
  _$$TagSuggestionsLoadedImplCopyWith<_$TagSuggestionsLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PopularTagsLoadedImplCopyWith<$Res> {
  factory _$$PopularTagsLoadedImplCopyWith(_$PopularTagsLoadedImpl value,
          $Res Function(_$PopularTagsLoadedImpl) then) =
      __$$PopularTagsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TagSuggestionResponseDto> popularTags});
}

/// @nodoc
class __$$PopularTagsLoadedImplCopyWithImpl<$Res>
    extends _$ArtistStencilStateCopyWithImpl<$Res, _$PopularTagsLoadedImpl>
    implements _$$PopularTagsLoadedImplCopyWith<$Res> {
  __$$PopularTagsLoadedImplCopyWithImpl(_$PopularTagsLoadedImpl _value,
      $Res Function(_$PopularTagsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? popularTags = null,
  }) {
    return _then(_$PopularTagsLoadedImpl(
      null == popularTags
          ? _value._popularTags
          : popularTags // ignore: cast_nullable_to_non_nullable
              as List<TagSuggestionResponseDto>,
    ));
  }
}

/// @nodoc

class _$PopularTagsLoadedImpl implements _PopularTagsLoaded {
  const _$PopularTagsLoadedImpl(
      final List<TagSuggestionResponseDto> popularTags)
      : _popularTags = popularTags;

  final List<TagSuggestionResponseDto> _popularTags;
  @override
  List<TagSuggestionResponseDto> get popularTags {
    if (_popularTags is EqualUnmodifiableListView) return _popularTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularTags);
  }

  @override
  String toString() {
    return 'ArtistStencilState.popularTagsLoaded(popularTags: $popularTags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularTagsLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._popularTags, _popularTags));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_popularTags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopularTagsLoadedImplCopyWith<_$PopularTagsLoadedImpl> get copyWith =>
      __$$PopularTagsLoadedImplCopyWithImpl<_$PopularTagsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Stencil> stencils) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Stencil stencil) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Stencil stencil) stencilCreated,
    required TResult Function(Stencil stencil) stencilUpdated,
    required TResult Function() stencilDeleted,
    required TResult Function(int stencilId, int viewCount) viewRecorded,
    required TResult Function(int stencilId, int likeCount) stencilLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Stencil> stencils, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return popularTagsLoaded(popularTags);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Stencil> stencils)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Stencil stencil)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Stencil stencil)? stencilCreated,
    TResult? Function(Stencil stencil)? stencilUpdated,
    TResult? Function()? stencilDeleted,
    TResult? Function(int stencilId, int viewCount)? viewRecorded,
    TResult? Function(int stencilId, int likeCount)? stencilLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return popularTagsLoaded?.call(popularTags);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Stencil> stencils)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Stencil stencil)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Stencil stencil)? stencilCreated,
    TResult Function(Stencil stencil)? stencilUpdated,
    TResult Function()? stencilDeleted,
    TResult Function(int stencilId, int viewCount)? viewRecorded,
    TResult Function(int stencilId, int likeCount)? stencilLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (popularTagsLoaded != null) {
      return popularTagsLoaded(popularTags);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoading value) detailLoading,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_StencilCreated value) stencilCreated,
    required TResult Function(_StencilUpdated value) stencilUpdated,
    required TResult Function(_StencilDeleted value) stencilDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_StencilLiked value) stencilLiked,
    required TResult Function(_TagSuggestionsLoaded value) tagSuggestionsLoaded,
    required TResult Function(_PopularTagsLoaded value) popularTagsLoaded,
    required TResult Function(_TagCreated value) tagCreated,
    required TResult Function(_FilteredByTag value) filteredByTag,
    required TResult Function(_Error value) error,
  }) {
    return popularTagsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoading value)? detailLoading,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_StencilCreated value)? stencilCreated,
    TResult? Function(_StencilUpdated value)? stencilUpdated,
    TResult? Function(_StencilDeleted value)? stencilDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_StencilLiked value)? stencilLiked,
    TResult? Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult? Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult? Function(_TagCreated value)? tagCreated,
    TResult? Function(_FilteredByTag value)? filteredByTag,
    TResult? Function(_Error value)? error,
  }) {
    return popularTagsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoading value)? detailLoading,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_StencilCreated value)? stencilCreated,
    TResult Function(_StencilUpdated value)? stencilUpdated,
    TResult Function(_StencilDeleted value)? stencilDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_StencilLiked value)? stencilLiked,
    TResult Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult Function(_TagCreated value)? tagCreated,
    TResult Function(_FilteredByTag value)? filteredByTag,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (popularTagsLoaded != null) {
      return popularTagsLoaded(this);
    }
    return orElse();
  }
}

abstract class _PopularTagsLoaded implements ArtistStencilState {
  const factory _PopularTagsLoaded(
          final List<TagSuggestionResponseDto> popularTags) =
      _$PopularTagsLoadedImpl;

  List<TagSuggestionResponseDto> get popularTags;
  @JsonKey(ignore: true)
  _$$PopularTagsLoadedImplCopyWith<_$PopularTagsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TagCreatedImplCopyWith<$Res> {
  factory _$$TagCreatedImplCopyWith(
          _$TagCreatedImpl value, $Res Function(_$TagCreatedImpl) then) =
      __$$TagCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TagSuggestionResponseDto tag});

  $TagSuggestionResponseDtoCopyWith<$Res> get tag;
}

/// @nodoc
class __$$TagCreatedImplCopyWithImpl<$Res>
    extends _$ArtistStencilStateCopyWithImpl<$Res, _$TagCreatedImpl>
    implements _$$TagCreatedImplCopyWith<$Res> {
  __$$TagCreatedImplCopyWithImpl(
      _$TagCreatedImpl _value, $Res Function(_$TagCreatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
  }) {
    return _then(_$TagCreatedImpl(
      null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as TagSuggestionResponseDto,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TagSuggestionResponseDtoCopyWith<$Res> get tag {
    return $TagSuggestionResponseDtoCopyWith<$Res>(_value.tag, (value) {
      return _then(_value.copyWith(tag: value));
    });
  }
}

/// @nodoc

class _$TagCreatedImpl implements _TagCreated {
  const _$TagCreatedImpl(this.tag);

  @override
  final TagSuggestionResponseDto tag;

  @override
  String toString() {
    return 'ArtistStencilState.tagCreated(tag: $tag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagCreatedImpl &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagCreatedImplCopyWith<_$TagCreatedImpl> get copyWith =>
      __$$TagCreatedImplCopyWithImpl<_$TagCreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Stencil> stencils) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Stencil stencil) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Stencil stencil) stencilCreated,
    required TResult Function(Stencil stencil) stencilUpdated,
    required TResult Function() stencilDeleted,
    required TResult Function(int stencilId, int viewCount) viewRecorded,
    required TResult Function(int stencilId, int likeCount) stencilLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Stencil> stencils, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return tagCreated(tag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Stencil> stencils)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Stencil stencil)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Stencil stencil)? stencilCreated,
    TResult? Function(Stencil stencil)? stencilUpdated,
    TResult? Function()? stencilDeleted,
    TResult? Function(int stencilId, int viewCount)? viewRecorded,
    TResult? Function(int stencilId, int likeCount)? stencilLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return tagCreated?.call(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Stencil> stencils)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Stencil stencil)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Stencil stencil)? stencilCreated,
    TResult Function(Stencil stencil)? stencilUpdated,
    TResult Function()? stencilDeleted,
    TResult Function(int stencilId, int viewCount)? viewRecorded,
    TResult Function(int stencilId, int likeCount)? stencilLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (tagCreated != null) {
      return tagCreated(tag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoading value) detailLoading,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_StencilCreated value) stencilCreated,
    required TResult Function(_StencilUpdated value) stencilUpdated,
    required TResult Function(_StencilDeleted value) stencilDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_StencilLiked value) stencilLiked,
    required TResult Function(_TagSuggestionsLoaded value) tagSuggestionsLoaded,
    required TResult Function(_PopularTagsLoaded value) popularTagsLoaded,
    required TResult Function(_TagCreated value) tagCreated,
    required TResult Function(_FilteredByTag value) filteredByTag,
    required TResult Function(_Error value) error,
  }) {
    return tagCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoading value)? detailLoading,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_StencilCreated value)? stencilCreated,
    TResult? Function(_StencilUpdated value)? stencilUpdated,
    TResult? Function(_StencilDeleted value)? stencilDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_StencilLiked value)? stencilLiked,
    TResult? Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult? Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult? Function(_TagCreated value)? tagCreated,
    TResult? Function(_FilteredByTag value)? filteredByTag,
    TResult? Function(_Error value)? error,
  }) {
    return tagCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoading value)? detailLoading,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_StencilCreated value)? stencilCreated,
    TResult Function(_StencilUpdated value)? stencilUpdated,
    TResult Function(_StencilDeleted value)? stencilDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_StencilLiked value)? stencilLiked,
    TResult Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult Function(_TagCreated value)? tagCreated,
    TResult Function(_FilteredByTag value)? filteredByTag,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (tagCreated != null) {
      return tagCreated(this);
    }
    return orElse();
  }
}

abstract class _TagCreated implements ArtistStencilState {
  const factory _TagCreated(final TagSuggestionResponseDto tag) =
      _$TagCreatedImpl;

  TagSuggestionResponseDto get tag;
  @JsonKey(ignore: true)
  _$$TagCreatedImplCopyWith<_$TagCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilteredByTagImplCopyWith<$Res> {
  factory _$$FilteredByTagImplCopyWith(
          _$FilteredByTagImpl value, $Res Function(_$FilteredByTagImpl) then) =
      __$$FilteredByTagImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Stencil> stencils, int tagId});
}

/// @nodoc
class __$$FilteredByTagImplCopyWithImpl<$Res>
    extends _$ArtistStencilStateCopyWithImpl<$Res, _$FilteredByTagImpl>
    implements _$$FilteredByTagImplCopyWith<$Res> {
  __$$FilteredByTagImplCopyWithImpl(
      _$FilteredByTagImpl _value, $Res Function(_$FilteredByTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stencils = null,
    Object? tagId = null,
  }) {
    return _then(_$FilteredByTagImpl(
      null == stencils
          ? _value._stencils
          : stencils // ignore: cast_nullable_to_non_nullable
              as List<Stencil>,
      null == tagId
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FilteredByTagImpl implements _FilteredByTag {
  const _$FilteredByTagImpl(final List<Stencil> stencils, this.tagId)
      : _stencils = stencils;

  final List<Stencil> _stencils;
  @override
  List<Stencil> get stencils {
    if (_stencils is EqualUnmodifiableListView) return _stencils;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stencils);
  }

  @override
  final int tagId;

  @override
  String toString() {
    return 'ArtistStencilState.filteredByTag(stencils: $stencils, tagId: $tagId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilteredByTagImpl &&
            const DeepCollectionEquality().equals(other._stencils, _stencils) &&
            (identical(other.tagId, tagId) || other.tagId == tagId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_stencils), tagId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilteredByTagImplCopyWith<_$FilteredByTagImpl> get copyWith =>
      __$$FilteredByTagImplCopyWithImpl<_$FilteredByTagImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Stencil> stencils) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Stencil stencil) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Stencil stencil) stencilCreated,
    required TResult Function(Stencil stencil) stencilUpdated,
    required TResult Function() stencilDeleted,
    required TResult Function(int stencilId, int viewCount) viewRecorded,
    required TResult Function(int stencilId, int likeCount) stencilLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Stencil> stencils, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return filteredByTag(stencils, tagId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Stencil> stencils)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Stencil stencil)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Stencil stencil)? stencilCreated,
    TResult? Function(Stencil stencil)? stencilUpdated,
    TResult? Function()? stencilDeleted,
    TResult? Function(int stencilId, int viewCount)? viewRecorded,
    TResult? Function(int stencilId, int likeCount)? stencilLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return filteredByTag?.call(stencils, tagId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Stencil> stencils)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Stencil stencil)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Stencil stencil)? stencilCreated,
    TResult Function(Stencil stencil)? stencilUpdated,
    TResult Function()? stencilDeleted,
    TResult Function(int stencilId, int viewCount)? viewRecorded,
    TResult Function(int stencilId, int likeCount)? stencilLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (filteredByTag != null) {
      return filteredByTag(stencils, tagId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoading value) detailLoading,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_StencilCreated value) stencilCreated,
    required TResult Function(_StencilUpdated value) stencilUpdated,
    required TResult Function(_StencilDeleted value) stencilDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_StencilLiked value) stencilLiked,
    required TResult Function(_TagSuggestionsLoaded value) tagSuggestionsLoaded,
    required TResult Function(_PopularTagsLoaded value) popularTagsLoaded,
    required TResult Function(_TagCreated value) tagCreated,
    required TResult Function(_FilteredByTag value) filteredByTag,
    required TResult Function(_Error value) error,
  }) {
    return filteredByTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoading value)? detailLoading,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_StencilCreated value)? stencilCreated,
    TResult? Function(_StencilUpdated value)? stencilUpdated,
    TResult? Function(_StencilDeleted value)? stencilDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_StencilLiked value)? stencilLiked,
    TResult? Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult? Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult? Function(_TagCreated value)? tagCreated,
    TResult? Function(_FilteredByTag value)? filteredByTag,
    TResult? Function(_Error value)? error,
  }) {
    return filteredByTag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoading value)? detailLoading,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_StencilCreated value)? stencilCreated,
    TResult Function(_StencilUpdated value)? stencilUpdated,
    TResult Function(_StencilDeleted value)? stencilDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_StencilLiked value)? stencilLiked,
    TResult Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult Function(_TagCreated value)? tagCreated,
    TResult Function(_FilteredByTag value)? filteredByTag,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (filteredByTag != null) {
      return filteredByTag(this);
    }
    return orElse();
  }
}

abstract class _FilteredByTag implements ArtistStencilState {
  const factory _FilteredByTag(final List<Stencil> stencils, final int tagId) =
      _$FilteredByTagImpl;

  List<Stencil> get stencils;
  int get tagId;
  @JsonKey(ignore: true)
  _$$FilteredByTagImplCopyWith<_$FilteredByTagImpl> get copyWith =>
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
    extends _$ArtistStencilStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'ArtistStencilState.error(message: $message)';
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
    required TResult Function(List<Stencil> stencils) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Stencil stencil) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Stencil stencil) stencilCreated,
    required TResult Function(Stencil stencil) stencilUpdated,
    required TResult Function() stencilDeleted,
    required TResult Function(int stencilId, int viewCount) viewRecorded,
    required TResult Function(int stencilId, int likeCount) stencilLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Stencil> stencils, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Stencil> stencils)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Stencil stencil)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Stencil stencil)? stencilCreated,
    TResult? Function(Stencil stencil)? stencilUpdated,
    TResult? Function()? stencilDeleted,
    TResult? Function(int stencilId, int viewCount)? viewRecorded,
    TResult? Function(int stencilId, int likeCount)? stencilLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Stencil> stencils, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Stencil> stencils)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Stencil stencil)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Stencil stencil)? stencilCreated,
    TResult Function(Stencil stencil)? stencilUpdated,
    TResult Function()? stencilDeleted,
    TResult Function(int stencilId, int viewCount)? viewRecorded,
    TResult Function(int stencilId, int likeCount)? stencilLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Stencil> stencils, int tagId)? filteredByTag,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DetailLoading value) detailLoading,
    required TResult Function(_DetailLoaded value) detailLoaded,
    required TResult Function(_Submitting value) submitting,
    required TResult Function(_StencilCreated value) stencilCreated,
    required TResult Function(_StencilUpdated value) stencilUpdated,
    required TResult Function(_StencilDeleted value) stencilDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_StencilLiked value) stencilLiked,
    required TResult Function(_TagSuggestionsLoaded value) tagSuggestionsLoaded,
    required TResult Function(_PopularTagsLoaded value) popularTagsLoaded,
    required TResult Function(_TagCreated value) tagCreated,
    required TResult Function(_FilteredByTag value) filteredByTag,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DetailLoading value)? detailLoading,
    TResult? Function(_DetailLoaded value)? detailLoaded,
    TResult? Function(_Submitting value)? submitting,
    TResult? Function(_StencilCreated value)? stencilCreated,
    TResult? Function(_StencilUpdated value)? stencilUpdated,
    TResult? Function(_StencilDeleted value)? stencilDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_StencilLiked value)? stencilLiked,
    TResult? Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult? Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult? Function(_TagCreated value)? tagCreated,
    TResult? Function(_FilteredByTag value)? filteredByTag,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DetailLoading value)? detailLoading,
    TResult Function(_DetailLoaded value)? detailLoaded,
    TResult Function(_Submitting value)? submitting,
    TResult Function(_StencilCreated value)? stencilCreated,
    TResult Function(_StencilUpdated value)? stencilUpdated,
    TResult Function(_StencilDeleted value)? stencilDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_StencilLiked value)? stencilLiked,
    TResult Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult Function(_TagCreated value)? tagCreated,
    TResult Function(_FilteredByTag value)? filteredByTag,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ArtistStencilState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
