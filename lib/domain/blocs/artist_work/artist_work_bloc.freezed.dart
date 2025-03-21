// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_work_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ArtistWorkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includeHidden) loadWorks,
    required TResult Function(int workId) loadWorkDetail,
    required TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)
        createWork,
    required TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)
        updateWork,
    required TResult Function(int workId) deleteWork,
    required TResult Function(Work work) toggleFeatured,
    required TResult Function(Work work) toggleVisibility,
    required TResult Function(int workId) recordView,
    required TResult Function(int workId) likeWork,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterWorksByTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadWorks,
    TResult? Function(int workId)? loadWorkDetail,
    TResult? Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult? Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult? Function(int workId)? deleteWork,
    TResult? Function(Work work)? toggleFeatured,
    TResult? Function(Work work)? toggleVisibility,
    TResult? Function(int workId)? recordView,
    TResult? Function(int workId)? likeWork,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterWorksByTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadWorks,
    TResult Function(int workId)? loadWorkDetail,
    TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult Function(int workId)? deleteWork,
    TResult Function(Work work)? toggleFeatured,
    TResult Function(Work work)? toggleVisibility,
    TResult Function(int workId)? recordView,
    TResult Function(int workId)? likeWork,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterWorksByTag,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadWorks value) loadWorks,
    required TResult Function(_LoadWorkDetail value) loadWorkDetail,
    required TResult Function(_CreateWork value) createWork,
    required TResult Function(_UpdateWork value) updateWork,
    required TResult Function(_DeleteWork value) deleteWork,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeWork value) likeWork,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterWorksByTag value) filterWorksByTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadWorks value)? loadWorks,
    TResult? Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult? Function(_CreateWork value)? createWork,
    TResult? Function(_UpdateWork value)? updateWork,
    TResult? Function(_DeleteWork value)? deleteWork,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeWork value)? likeWork,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterWorksByTag value)? filterWorksByTag,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadWorks value)? loadWorks,
    TResult Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult Function(_CreateWork value)? createWork,
    TResult Function(_UpdateWork value)? updateWork,
    TResult Function(_DeleteWork value)? deleteWork,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeWork value)? likeWork,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterWorksByTag value)? filterWorksByTag,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistWorkEventCopyWith<$Res> {
  factory $ArtistWorkEventCopyWith(
          ArtistWorkEvent value, $Res Function(ArtistWorkEvent) then) =
      _$ArtistWorkEventCopyWithImpl<$Res, ArtistWorkEvent>;
}

/// @nodoc
class _$ArtistWorkEventCopyWithImpl<$Res, $Val extends ArtistWorkEvent>
    implements $ArtistWorkEventCopyWith<$Res> {
  _$ArtistWorkEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadWorksImplCopyWith<$Res> {
  factory _$$LoadWorksImplCopyWith(
          _$LoadWorksImpl value, $Res Function(_$LoadWorksImpl) then) =
      __$$LoadWorksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool includeHidden});
}

/// @nodoc
class __$$LoadWorksImplCopyWithImpl<$Res>
    extends _$ArtistWorkEventCopyWithImpl<$Res, _$LoadWorksImpl>
    implements _$$LoadWorksImplCopyWith<$Res> {
  __$$LoadWorksImplCopyWithImpl(
      _$LoadWorksImpl _value, $Res Function(_$LoadWorksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? includeHidden = null,
  }) {
    return _then(_$LoadWorksImpl(
      null == includeHidden
          ? _value.includeHidden
          : includeHidden // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadWorksImpl implements _LoadWorks {
  const _$LoadWorksImpl([this.includeHidden = false]);

  @override
  @JsonKey()
  final bool includeHidden;

  @override
  String toString() {
    return 'ArtistWorkEvent.loadWorks(includeHidden: $includeHidden)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadWorksImpl &&
            (identical(other.includeHidden, includeHidden) ||
                other.includeHidden == includeHidden));
  }

  @override
  int get hashCode => Object.hash(runtimeType, includeHidden);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadWorksImplCopyWith<_$LoadWorksImpl> get copyWith =>
      __$$LoadWorksImplCopyWithImpl<_$LoadWorksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includeHidden) loadWorks,
    required TResult Function(int workId) loadWorkDetail,
    required TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)
        createWork,
    required TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)
        updateWork,
    required TResult Function(int workId) deleteWork,
    required TResult Function(Work work) toggleFeatured,
    required TResult Function(Work work) toggleVisibility,
    required TResult Function(int workId) recordView,
    required TResult Function(int workId) likeWork,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterWorksByTag,
  }) {
    return loadWorks(includeHidden);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadWorks,
    TResult? Function(int workId)? loadWorkDetail,
    TResult? Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult? Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult? Function(int workId)? deleteWork,
    TResult? Function(Work work)? toggleFeatured,
    TResult? Function(Work work)? toggleVisibility,
    TResult? Function(int workId)? recordView,
    TResult? Function(int workId)? likeWork,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterWorksByTag,
  }) {
    return loadWorks?.call(includeHidden);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadWorks,
    TResult Function(int workId)? loadWorkDetail,
    TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult Function(int workId)? deleteWork,
    TResult Function(Work work)? toggleFeatured,
    TResult Function(Work work)? toggleVisibility,
    TResult Function(int workId)? recordView,
    TResult Function(int workId)? likeWork,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterWorksByTag,
    required TResult orElse(),
  }) {
    if (loadWorks != null) {
      return loadWorks(includeHidden);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadWorks value) loadWorks,
    required TResult Function(_LoadWorkDetail value) loadWorkDetail,
    required TResult Function(_CreateWork value) createWork,
    required TResult Function(_UpdateWork value) updateWork,
    required TResult Function(_DeleteWork value) deleteWork,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeWork value) likeWork,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterWorksByTag value) filterWorksByTag,
  }) {
    return loadWorks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadWorks value)? loadWorks,
    TResult? Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult? Function(_CreateWork value)? createWork,
    TResult? Function(_UpdateWork value)? updateWork,
    TResult? Function(_DeleteWork value)? deleteWork,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeWork value)? likeWork,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterWorksByTag value)? filterWorksByTag,
  }) {
    return loadWorks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadWorks value)? loadWorks,
    TResult Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult Function(_CreateWork value)? createWork,
    TResult Function(_UpdateWork value)? updateWork,
    TResult Function(_DeleteWork value)? deleteWork,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeWork value)? likeWork,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterWorksByTag value)? filterWorksByTag,
    required TResult orElse(),
  }) {
    if (loadWorks != null) {
      return loadWorks(this);
    }
    return orElse();
  }
}

abstract class _LoadWorks implements ArtistWorkEvent {
  const factory _LoadWorks([final bool includeHidden]) = _$LoadWorksImpl;

  bool get includeHidden;
  @JsonKey(ignore: true)
  _$$LoadWorksImplCopyWith<_$LoadWorksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadWorkDetailImplCopyWith<$Res> {
  factory _$$LoadWorkDetailImplCopyWith(_$LoadWorkDetailImpl value,
          $Res Function(_$LoadWorkDetailImpl) then) =
      __$$LoadWorkDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int workId});
}

/// @nodoc
class __$$LoadWorkDetailImplCopyWithImpl<$Res>
    extends _$ArtistWorkEventCopyWithImpl<$Res, _$LoadWorkDetailImpl>
    implements _$$LoadWorkDetailImplCopyWith<$Res> {
  __$$LoadWorkDetailImplCopyWithImpl(
      _$LoadWorkDetailImpl _value, $Res Function(_$LoadWorkDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workId = null,
  }) {
    return _then(_$LoadWorkDetailImpl(
      null == workId
          ? _value.workId
          : workId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadWorkDetailImpl implements _LoadWorkDetail {
  const _$LoadWorkDetailImpl(this.workId);

  @override
  final int workId;

  @override
  String toString() {
    return 'ArtistWorkEvent.loadWorkDetail(workId: $workId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadWorkDetailImpl &&
            (identical(other.workId, workId) || other.workId == workId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadWorkDetailImplCopyWith<_$LoadWorkDetailImpl> get copyWith =>
      __$$LoadWorkDetailImplCopyWithImpl<_$LoadWorkDetailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includeHidden) loadWorks,
    required TResult Function(int workId) loadWorkDetail,
    required TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)
        createWork,
    required TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)
        updateWork,
    required TResult Function(int workId) deleteWork,
    required TResult Function(Work work) toggleFeatured,
    required TResult Function(Work work) toggleVisibility,
    required TResult Function(int workId) recordView,
    required TResult Function(int workId) likeWork,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterWorksByTag,
  }) {
    return loadWorkDetail(workId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadWorks,
    TResult? Function(int workId)? loadWorkDetail,
    TResult? Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult? Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult? Function(int workId)? deleteWork,
    TResult? Function(Work work)? toggleFeatured,
    TResult? Function(Work work)? toggleVisibility,
    TResult? Function(int workId)? recordView,
    TResult? Function(int workId)? likeWork,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterWorksByTag,
  }) {
    return loadWorkDetail?.call(workId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadWorks,
    TResult Function(int workId)? loadWorkDetail,
    TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult Function(int workId)? deleteWork,
    TResult Function(Work work)? toggleFeatured,
    TResult Function(Work work)? toggleVisibility,
    TResult Function(int workId)? recordView,
    TResult Function(int workId)? likeWork,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterWorksByTag,
    required TResult orElse(),
  }) {
    if (loadWorkDetail != null) {
      return loadWorkDetail(workId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadWorks value) loadWorks,
    required TResult Function(_LoadWorkDetail value) loadWorkDetail,
    required TResult Function(_CreateWork value) createWork,
    required TResult Function(_UpdateWork value) updateWork,
    required TResult Function(_DeleteWork value) deleteWork,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeWork value) likeWork,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterWorksByTag value) filterWorksByTag,
  }) {
    return loadWorkDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadWorks value)? loadWorks,
    TResult? Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult? Function(_CreateWork value)? createWork,
    TResult? Function(_UpdateWork value)? updateWork,
    TResult? Function(_DeleteWork value)? deleteWork,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeWork value)? likeWork,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterWorksByTag value)? filterWorksByTag,
  }) {
    return loadWorkDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadWorks value)? loadWorks,
    TResult Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult Function(_CreateWork value)? createWork,
    TResult Function(_UpdateWork value)? updateWork,
    TResult Function(_DeleteWork value)? deleteWork,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeWork value)? likeWork,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterWorksByTag value)? filterWorksByTag,
    required TResult orElse(),
  }) {
    if (loadWorkDetail != null) {
      return loadWorkDetail(this);
    }
    return orElse();
  }
}

abstract class _LoadWorkDetail implements ArtistWorkEvent {
  const factory _LoadWorkDetail(final int workId) = _$LoadWorkDetailImpl;

  int get workId;
  @JsonKey(ignore: true)
  _$$LoadWorkDetailImplCopyWith<_$LoadWorkDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateWorkImplCopyWith<$Res> {
  factory _$$CreateWorkImplCopyWith(
          _$CreateWorkImpl value, $Res Function(_$CreateWorkImpl) then) =
      __$$CreateWorkImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String title,
      String? description,
      bool isFeatured,
      bool isHidden,
      List<int>? tagIds,
      XFile? imageFile,
      WorkSource source});
}

/// @nodoc
class __$$CreateWorkImplCopyWithImpl<$Res>
    extends _$ArtistWorkEventCopyWithImpl<$Res, _$CreateWorkImpl>
    implements _$$CreateWorkImplCopyWith<$Res> {
  __$$CreateWorkImplCopyWithImpl(
      _$CreateWorkImpl _value, $Res Function(_$CreateWorkImpl) _then)
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
    Object? source = null,
  }) {
    return _then(_$CreateWorkImpl(
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
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as WorkSource,
    ));
  }
}

/// @nodoc

class _$CreateWorkImpl implements _CreateWork {
  const _$CreateWorkImpl(
      {required this.title,
      this.description,
      this.isFeatured = false,
      this.isHidden = false,
      final List<int>? tagIds,
      this.imageFile,
      this.source = WorkSource.app})
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
  @JsonKey()
  final WorkSource source;

  @override
  String toString() {
    return 'ArtistWorkEvent.createWork(title: $title, description: $description, isFeatured: $isFeatured, isHidden: $isHidden, tagIds: $tagIds, imageFile: $imageFile, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateWorkImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds) &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile) &&
            (identical(other.source, source) || other.source == source));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      isFeatured,
      isHidden,
      const DeepCollectionEquality().hash(_tagIds),
      imageFile,
      source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateWorkImplCopyWith<_$CreateWorkImpl> get copyWith =>
      __$$CreateWorkImplCopyWithImpl<_$CreateWorkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includeHidden) loadWorks,
    required TResult Function(int workId) loadWorkDetail,
    required TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)
        createWork,
    required TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)
        updateWork,
    required TResult Function(int workId) deleteWork,
    required TResult Function(Work work) toggleFeatured,
    required TResult Function(Work work) toggleVisibility,
    required TResult Function(int workId) recordView,
    required TResult Function(int workId) likeWork,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterWorksByTag,
  }) {
    return createWork(
        title, description, isFeatured, isHidden, tagIds, imageFile, source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadWorks,
    TResult? Function(int workId)? loadWorkDetail,
    TResult? Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult? Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult? Function(int workId)? deleteWork,
    TResult? Function(Work work)? toggleFeatured,
    TResult? Function(Work work)? toggleVisibility,
    TResult? Function(int workId)? recordView,
    TResult? Function(int workId)? likeWork,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterWorksByTag,
  }) {
    return createWork?.call(
        title, description, isFeatured, isHidden, tagIds, imageFile, source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadWorks,
    TResult Function(int workId)? loadWorkDetail,
    TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult Function(int workId)? deleteWork,
    TResult Function(Work work)? toggleFeatured,
    TResult Function(Work work)? toggleVisibility,
    TResult Function(int workId)? recordView,
    TResult Function(int workId)? likeWork,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterWorksByTag,
    required TResult orElse(),
  }) {
    if (createWork != null) {
      return createWork(
          title, description, isFeatured, isHidden, tagIds, imageFile, source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadWorks value) loadWorks,
    required TResult Function(_LoadWorkDetail value) loadWorkDetail,
    required TResult Function(_CreateWork value) createWork,
    required TResult Function(_UpdateWork value) updateWork,
    required TResult Function(_DeleteWork value) deleteWork,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeWork value) likeWork,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterWorksByTag value) filterWorksByTag,
  }) {
    return createWork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadWorks value)? loadWorks,
    TResult? Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult? Function(_CreateWork value)? createWork,
    TResult? Function(_UpdateWork value)? updateWork,
    TResult? Function(_DeleteWork value)? deleteWork,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeWork value)? likeWork,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterWorksByTag value)? filterWorksByTag,
  }) {
    return createWork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadWorks value)? loadWorks,
    TResult Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult Function(_CreateWork value)? createWork,
    TResult Function(_UpdateWork value)? updateWork,
    TResult Function(_DeleteWork value)? deleteWork,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeWork value)? likeWork,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterWorksByTag value)? filterWorksByTag,
    required TResult orElse(),
  }) {
    if (createWork != null) {
      return createWork(this);
    }
    return orElse();
  }
}

abstract class _CreateWork implements ArtistWorkEvent {
  const factory _CreateWork(
      {required final String title,
      final String? description,
      final bool isFeatured,
      final bool isHidden,
      final List<int>? tagIds,
      final XFile? imageFile,
      final WorkSource source}) = _$CreateWorkImpl;

  String get title;
  String? get description;
  bool get isFeatured;
  bool get isHidden;
  List<int>? get tagIds;
  XFile? get imageFile;
  WorkSource get source;
  @JsonKey(ignore: true)
  _$$CreateWorkImplCopyWith<_$CreateWorkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateWorkImplCopyWith<$Res> {
  factory _$$UpdateWorkImplCopyWith(
          _$UpdateWorkImpl value, $Res Function(_$UpdateWorkImpl) then) =
      __$$UpdateWorkImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int workId,
      String? title,
      String? description,
      bool? isFeatured,
      bool? isHidden,
      List<int>? tagIds,
      XFile? imageFile,
      WorkSource? source});
}

/// @nodoc
class __$$UpdateWorkImplCopyWithImpl<$Res>
    extends _$ArtistWorkEventCopyWithImpl<$Res, _$UpdateWorkImpl>
    implements _$$UpdateWorkImplCopyWith<$Res> {
  __$$UpdateWorkImplCopyWithImpl(
      _$UpdateWorkImpl _value, $Res Function(_$UpdateWorkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workId = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? isFeatured = freezed,
    Object? isHidden = freezed,
    Object? tagIds = freezed,
    Object? imageFile = freezed,
    Object? source = freezed,
  }) {
    return _then(_$UpdateWorkImpl(
      workId: null == workId
          ? _value.workId
          : workId // ignore: cast_nullable_to_non_nullable
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
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as WorkSource?,
    ));
  }
}

/// @nodoc

class _$UpdateWorkImpl implements _UpdateWork {
  const _$UpdateWorkImpl(
      {required this.workId,
      this.title,
      this.description,
      this.isFeatured,
      this.isHidden,
      final List<int>? tagIds,
      this.imageFile,
      this.source})
      : _tagIds = tagIds;

  @override
  final int workId;
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
  final WorkSource? source;

  @override
  String toString() {
    return 'ArtistWorkEvent.updateWork(workId: $workId, title: $title, description: $description, isFeatured: $isFeatured, isHidden: $isHidden, tagIds: $tagIds, imageFile: $imageFile, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateWorkImpl &&
            (identical(other.workId, workId) || other.workId == workId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds) &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile) &&
            (identical(other.source, source) || other.source == source));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      workId,
      title,
      description,
      isFeatured,
      isHidden,
      const DeepCollectionEquality().hash(_tagIds),
      imageFile,
      source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateWorkImplCopyWith<_$UpdateWorkImpl> get copyWith =>
      __$$UpdateWorkImplCopyWithImpl<_$UpdateWorkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includeHidden) loadWorks,
    required TResult Function(int workId) loadWorkDetail,
    required TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)
        createWork,
    required TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)
        updateWork,
    required TResult Function(int workId) deleteWork,
    required TResult Function(Work work) toggleFeatured,
    required TResult Function(Work work) toggleVisibility,
    required TResult Function(int workId) recordView,
    required TResult Function(int workId) likeWork,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterWorksByTag,
  }) {
    return updateWork(workId, title, description, isFeatured, isHidden, tagIds,
        imageFile, source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadWorks,
    TResult? Function(int workId)? loadWorkDetail,
    TResult? Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult? Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult? Function(int workId)? deleteWork,
    TResult? Function(Work work)? toggleFeatured,
    TResult? Function(Work work)? toggleVisibility,
    TResult? Function(int workId)? recordView,
    TResult? Function(int workId)? likeWork,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterWorksByTag,
  }) {
    return updateWork?.call(workId, title, description, isFeatured, isHidden,
        tagIds, imageFile, source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadWorks,
    TResult Function(int workId)? loadWorkDetail,
    TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult Function(int workId)? deleteWork,
    TResult Function(Work work)? toggleFeatured,
    TResult Function(Work work)? toggleVisibility,
    TResult Function(int workId)? recordView,
    TResult Function(int workId)? likeWork,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterWorksByTag,
    required TResult orElse(),
  }) {
    if (updateWork != null) {
      return updateWork(workId, title, description, isFeatured, isHidden,
          tagIds, imageFile, source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadWorks value) loadWorks,
    required TResult Function(_LoadWorkDetail value) loadWorkDetail,
    required TResult Function(_CreateWork value) createWork,
    required TResult Function(_UpdateWork value) updateWork,
    required TResult Function(_DeleteWork value) deleteWork,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeWork value) likeWork,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterWorksByTag value) filterWorksByTag,
  }) {
    return updateWork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadWorks value)? loadWorks,
    TResult? Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult? Function(_CreateWork value)? createWork,
    TResult? Function(_UpdateWork value)? updateWork,
    TResult? Function(_DeleteWork value)? deleteWork,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeWork value)? likeWork,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterWorksByTag value)? filterWorksByTag,
  }) {
    return updateWork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadWorks value)? loadWorks,
    TResult Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult Function(_CreateWork value)? createWork,
    TResult Function(_UpdateWork value)? updateWork,
    TResult Function(_DeleteWork value)? deleteWork,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeWork value)? likeWork,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterWorksByTag value)? filterWorksByTag,
    required TResult orElse(),
  }) {
    if (updateWork != null) {
      return updateWork(this);
    }
    return orElse();
  }
}

abstract class _UpdateWork implements ArtistWorkEvent {
  const factory _UpdateWork(
      {required final int workId,
      final String? title,
      final String? description,
      final bool? isFeatured,
      final bool? isHidden,
      final List<int>? tagIds,
      final XFile? imageFile,
      final WorkSource? source}) = _$UpdateWorkImpl;

  int get workId;
  String? get title;
  String? get description;
  bool? get isFeatured;
  bool? get isHidden;
  List<int>? get tagIds;
  XFile? get imageFile;
  WorkSource? get source;
  @JsonKey(ignore: true)
  _$$UpdateWorkImplCopyWith<_$UpdateWorkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteWorkImplCopyWith<$Res> {
  factory _$$DeleteWorkImplCopyWith(
          _$DeleteWorkImpl value, $Res Function(_$DeleteWorkImpl) then) =
      __$$DeleteWorkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int workId});
}

/// @nodoc
class __$$DeleteWorkImplCopyWithImpl<$Res>
    extends _$ArtistWorkEventCopyWithImpl<$Res, _$DeleteWorkImpl>
    implements _$$DeleteWorkImplCopyWith<$Res> {
  __$$DeleteWorkImplCopyWithImpl(
      _$DeleteWorkImpl _value, $Res Function(_$DeleteWorkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workId = null,
  }) {
    return _then(_$DeleteWorkImpl(
      null == workId
          ? _value.workId
          : workId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteWorkImpl implements _DeleteWork {
  const _$DeleteWorkImpl(this.workId);

  @override
  final int workId;

  @override
  String toString() {
    return 'ArtistWorkEvent.deleteWork(workId: $workId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteWorkImpl &&
            (identical(other.workId, workId) || other.workId == workId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteWorkImplCopyWith<_$DeleteWorkImpl> get copyWith =>
      __$$DeleteWorkImplCopyWithImpl<_$DeleteWorkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includeHidden) loadWorks,
    required TResult Function(int workId) loadWorkDetail,
    required TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)
        createWork,
    required TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)
        updateWork,
    required TResult Function(int workId) deleteWork,
    required TResult Function(Work work) toggleFeatured,
    required TResult Function(Work work) toggleVisibility,
    required TResult Function(int workId) recordView,
    required TResult Function(int workId) likeWork,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterWorksByTag,
  }) {
    return deleteWork(workId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadWorks,
    TResult? Function(int workId)? loadWorkDetail,
    TResult? Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult? Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult? Function(int workId)? deleteWork,
    TResult? Function(Work work)? toggleFeatured,
    TResult? Function(Work work)? toggleVisibility,
    TResult? Function(int workId)? recordView,
    TResult? Function(int workId)? likeWork,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterWorksByTag,
  }) {
    return deleteWork?.call(workId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadWorks,
    TResult Function(int workId)? loadWorkDetail,
    TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult Function(int workId)? deleteWork,
    TResult Function(Work work)? toggleFeatured,
    TResult Function(Work work)? toggleVisibility,
    TResult Function(int workId)? recordView,
    TResult Function(int workId)? likeWork,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterWorksByTag,
    required TResult orElse(),
  }) {
    if (deleteWork != null) {
      return deleteWork(workId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadWorks value) loadWorks,
    required TResult Function(_LoadWorkDetail value) loadWorkDetail,
    required TResult Function(_CreateWork value) createWork,
    required TResult Function(_UpdateWork value) updateWork,
    required TResult Function(_DeleteWork value) deleteWork,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeWork value) likeWork,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterWorksByTag value) filterWorksByTag,
  }) {
    return deleteWork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadWorks value)? loadWorks,
    TResult? Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult? Function(_CreateWork value)? createWork,
    TResult? Function(_UpdateWork value)? updateWork,
    TResult? Function(_DeleteWork value)? deleteWork,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeWork value)? likeWork,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterWorksByTag value)? filterWorksByTag,
  }) {
    return deleteWork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadWorks value)? loadWorks,
    TResult Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult Function(_CreateWork value)? createWork,
    TResult Function(_UpdateWork value)? updateWork,
    TResult Function(_DeleteWork value)? deleteWork,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeWork value)? likeWork,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterWorksByTag value)? filterWorksByTag,
    required TResult orElse(),
  }) {
    if (deleteWork != null) {
      return deleteWork(this);
    }
    return orElse();
  }
}

abstract class _DeleteWork implements ArtistWorkEvent {
  const factory _DeleteWork(final int workId) = _$DeleteWorkImpl;

  int get workId;
  @JsonKey(ignore: true)
  _$$DeleteWorkImplCopyWith<_$DeleteWorkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleFeaturedImplCopyWith<$Res> {
  factory _$$ToggleFeaturedImplCopyWith(_$ToggleFeaturedImpl value,
          $Res Function(_$ToggleFeaturedImpl) then) =
      __$$ToggleFeaturedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Work work});

  $WorkCopyWith<$Res> get work;
}

/// @nodoc
class __$$ToggleFeaturedImplCopyWithImpl<$Res>
    extends _$ArtistWorkEventCopyWithImpl<$Res, _$ToggleFeaturedImpl>
    implements _$$ToggleFeaturedImplCopyWith<$Res> {
  __$$ToggleFeaturedImplCopyWithImpl(
      _$ToggleFeaturedImpl _value, $Res Function(_$ToggleFeaturedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? work = null,
  }) {
    return _then(_$ToggleFeaturedImpl(
      null == work
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as Work,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkCopyWith<$Res> get work {
    return $WorkCopyWith<$Res>(_value.work, (value) {
      return _then(_value.copyWith(work: value));
    });
  }
}

/// @nodoc

class _$ToggleFeaturedImpl implements _ToggleFeatured {
  const _$ToggleFeaturedImpl(this.work);

  @override
  final Work work;

  @override
  String toString() {
    return 'ArtistWorkEvent.toggleFeatured(work: $work)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleFeaturedImpl &&
            (identical(other.work, work) || other.work == work));
  }

  @override
  int get hashCode => Object.hash(runtimeType, work);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleFeaturedImplCopyWith<_$ToggleFeaturedImpl> get copyWith =>
      __$$ToggleFeaturedImplCopyWithImpl<_$ToggleFeaturedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includeHidden) loadWorks,
    required TResult Function(int workId) loadWorkDetail,
    required TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)
        createWork,
    required TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)
        updateWork,
    required TResult Function(int workId) deleteWork,
    required TResult Function(Work work) toggleFeatured,
    required TResult Function(Work work) toggleVisibility,
    required TResult Function(int workId) recordView,
    required TResult Function(int workId) likeWork,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterWorksByTag,
  }) {
    return toggleFeatured(work);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadWorks,
    TResult? Function(int workId)? loadWorkDetail,
    TResult? Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult? Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult? Function(int workId)? deleteWork,
    TResult? Function(Work work)? toggleFeatured,
    TResult? Function(Work work)? toggleVisibility,
    TResult? Function(int workId)? recordView,
    TResult? Function(int workId)? likeWork,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterWorksByTag,
  }) {
    return toggleFeatured?.call(work);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadWorks,
    TResult Function(int workId)? loadWorkDetail,
    TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult Function(int workId)? deleteWork,
    TResult Function(Work work)? toggleFeatured,
    TResult Function(Work work)? toggleVisibility,
    TResult Function(int workId)? recordView,
    TResult Function(int workId)? likeWork,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterWorksByTag,
    required TResult orElse(),
  }) {
    if (toggleFeatured != null) {
      return toggleFeatured(work);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadWorks value) loadWorks,
    required TResult Function(_LoadWorkDetail value) loadWorkDetail,
    required TResult Function(_CreateWork value) createWork,
    required TResult Function(_UpdateWork value) updateWork,
    required TResult Function(_DeleteWork value) deleteWork,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeWork value) likeWork,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterWorksByTag value) filterWorksByTag,
  }) {
    return toggleFeatured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadWorks value)? loadWorks,
    TResult? Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult? Function(_CreateWork value)? createWork,
    TResult? Function(_UpdateWork value)? updateWork,
    TResult? Function(_DeleteWork value)? deleteWork,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeWork value)? likeWork,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterWorksByTag value)? filterWorksByTag,
  }) {
    return toggleFeatured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadWorks value)? loadWorks,
    TResult Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult Function(_CreateWork value)? createWork,
    TResult Function(_UpdateWork value)? updateWork,
    TResult Function(_DeleteWork value)? deleteWork,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeWork value)? likeWork,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterWorksByTag value)? filterWorksByTag,
    required TResult orElse(),
  }) {
    if (toggleFeatured != null) {
      return toggleFeatured(this);
    }
    return orElse();
  }
}

abstract class _ToggleFeatured implements ArtistWorkEvent {
  const factory _ToggleFeatured(final Work work) = _$ToggleFeaturedImpl;

  Work get work;
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
  $Res call({Work work});

  $WorkCopyWith<$Res> get work;
}

/// @nodoc
class __$$ToggleVisibilityImplCopyWithImpl<$Res>
    extends _$ArtistWorkEventCopyWithImpl<$Res, _$ToggleVisibilityImpl>
    implements _$$ToggleVisibilityImplCopyWith<$Res> {
  __$$ToggleVisibilityImplCopyWithImpl(_$ToggleVisibilityImpl _value,
      $Res Function(_$ToggleVisibilityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? work = null,
  }) {
    return _then(_$ToggleVisibilityImpl(
      null == work
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as Work,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkCopyWith<$Res> get work {
    return $WorkCopyWith<$Res>(_value.work, (value) {
      return _then(_value.copyWith(work: value));
    });
  }
}

/// @nodoc

class _$ToggleVisibilityImpl implements _ToggleVisibility {
  const _$ToggleVisibilityImpl(this.work);

  @override
  final Work work;

  @override
  String toString() {
    return 'ArtistWorkEvent.toggleVisibility(work: $work)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleVisibilityImpl &&
            (identical(other.work, work) || other.work == work));
  }

  @override
  int get hashCode => Object.hash(runtimeType, work);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleVisibilityImplCopyWith<_$ToggleVisibilityImpl> get copyWith =>
      __$$ToggleVisibilityImplCopyWithImpl<_$ToggleVisibilityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includeHidden) loadWorks,
    required TResult Function(int workId) loadWorkDetail,
    required TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)
        createWork,
    required TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)
        updateWork,
    required TResult Function(int workId) deleteWork,
    required TResult Function(Work work) toggleFeatured,
    required TResult Function(Work work) toggleVisibility,
    required TResult Function(int workId) recordView,
    required TResult Function(int workId) likeWork,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterWorksByTag,
  }) {
    return toggleVisibility(work);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadWorks,
    TResult? Function(int workId)? loadWorkDetail,
    TResult? Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult? Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult? Function(int workId)? deleteWork,
    TResult? Function(Work work)? toggleFeatured,
    TResult? Function(Work work)? toggleVisibility,
    TResult? Function(int workId)? recordView,
    TResult? Function(int workId)? likeWork,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterWorksByTag,
  }) {
    return toggleVisibility?.call(work);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadWorks,
    TResult Function(int workId)? loadWorkDetail,
    TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult Function(int workId)? deleteWork,
    TResult Function(Work work)? toggleFeatured,
    TResult Function(Work work)? toggleVisibility,
    TResult Function(int workId)? recordView,
    TResult Function(int workId)? likeWork,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterWorksByTag,
    required TResult orElse(),
  }) {
    if (toggleVisibility != null) {
      return toggleVisibility(work);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadWorks value) loadWorks,
    required TResult Function(_LoadWorkDetail value) loadWorkDetail,
    required TResult Function(_CreateWork value) createWork,
    required TResult Function(_UpdateWork value) updateWork,
    required TResult Function(_DeleteWork value) deleteWork,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeWork value) likeWork,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterWorksByTag value) filterWorksByTag,
  }) {
    return toggleVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadWorks value)? loadWorks,
    TResult? Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult? Function(_CreateWork value)? createWork,
    TResult? Function(_UpdateWork value)? updateWork,
    TResult? Function(_DeleteWork value)? deleteWork,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeWork value)? likeWork,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterWorksByTag value)? filterWorksByTag,
  }) {
    return toggleVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadWorks value)? loadWorks,
    TResult Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult Function(_CreateWork value)? createWork,
    TResult Function(_UpdateWork value)? updateWork,
    TResult Function(_DeleteWork value)? deleteWork,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeWork value)? likeWork,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterWorksByTag value)? filterWorksByTag,
    required TResult orElse(),
  }) {
    if (toggleVisibility != null) {
      return toggleVisibility(this);
    }
    return orElse();
  }
}

abstract class _ToggleVisibility implements ArtistWorkEvent {
  const factory _ToggleVisibility(final Work work) = _$ToggleVisibilityImpl;

  Work get work;
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
  $Res call({int workId});
}

/// @nodoc
class __$$RecordViewImplCopyWithImpl<$Res>
    extends _$ArtistWorkEventCopyWithImpl<$Res, _$RecordViewImpl>
    implements _$$RecordViewImplCopyWith<$Res> {
  __$$RecordViewImplCopyWithImpl(
      _$RecordViewImpl _value, $Res Function(_$RecordViewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workId = null,
  }) {
    return _then(_$RecordViewImpl(
      null == workId
          ? _value.workId
          : workId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RecordViewImpl implements _RecordView {
  const _$RecordViewImpl(this.workId);

  @override
  final int workId;

  @override
  String toString() {
    return 'ArtistWorkEvent.recordView(workId: $workId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordViewImpl &&
            (identical(other.workId, workId) || other.workId == workId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordViewImplCopyWith<_$RecordViewImpl> get copyWith =>
      __$$RecordViewImplCopyWithImpl<_$RecordViewImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includeHidden) loadWorks,
    required TResult Function(int workId) loadWorkDetail,
    required TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)
        createWork,
    required TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)
        updateWork,
    required TResult Function(int workId) deleteWork,
    required TResult Function(Work work) toggleFeatured,
    required TResult Function(Work work) toggleVisibility,
    required TResult Function(int workId) recordView,
    required TResult Function(int workId) likeWork,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterWorksByTag,
  }) {
    return recordView(workId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadWorks,
    TResult? Function(int workId)? loadWorkDetail,
    TResult? Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult? Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult? Function(int workId)? deleteWork,
    TResult? Function(Work work)? toggleFeatured,
    TResult? Function(Work work)? toggleVisibility,
    TResult? Function(int workId)? recordView,
    TResult? Function(int workId)? likeWork,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterWorksByTag,
  }) {
    return recordView?.call(workId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadWorks,
    TResult Function(int workId)? loadWorkDetail,
    TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult Function(int workId)? deleteWork,
    TResult Function(Work work)? toggleFeatured,
    TResult Function(Work work)? toggleVisibility,
    TResult Function(int workId)? recordView,
    TResult Function(int workId)? likeWork,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterWorksByTag,
    required TResult orElse(),
  }) {
    if (recordView != null) {
      return recordView(workId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadWorks value) loadWorks,
    required TResult Function(_LoadWorkDetail value) loadWorkDetail,
    required TResult Function(_CreateWork value) createWork,
    required TResult Function(_UpdateWork value) updateWork,
    required TResult Function(_DeleteWork value) deleteWork,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeWork value) likeWork,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterWorksByTag value) filterWorksByTag,
  }) {
    return recordView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadWorks value)? loadWorks,
    TResult? Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult? Function(_CreateWork value)? createWork,
    TResult? Function(_UpdateWork value)? updateWork,
    TResult? Function(_DeleteWork value)? deleteWork,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeWork value)? likeWork,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterWorksByTag value)? filterWorksByTag,
  }) {
    return recordView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadWorks value)? loadWorks,
    TResult Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult Function(_CreateWork value)? createWork,
    TResult Function(_UpdateWork value)? updateWork,
    TResult Function(_DeleteWork value)? deleteWork,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeWork value)? likeWork,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterWorksByTag value)? filterWorksByTag,
    required TResult orElse(),
  }) {
    if (recordView != null) {
      return recordView(this);
    }
    return orElse();
  }
}

abstract class _RecordView implements ArtistWorkEvent {
  const factory _RecordView(final int workId) = _$RecordViewImpl;

  int get workId;
  @JsonKey(ignore: true)
  _$$RecordViewImplCopyWith<_$RecordViewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LikeWorkImplCopyWith<$Res> {
  factory _$$LikeWorkImplCopyWith(
          _$LikeWorkImpl value, $Res Function(_$LikeWorkImpl) then) =
      __$$LikeWorkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int workId});
}

/// @nodoc
class __$$LikeWorkImplCopyWithImpl<$Res>
    extends _$ArtistWorkEventCopyWithImpl<$Res, _$LikeWorkImpl>
    implements _$$LikeWorkImplCopyWith<$Res> {
  __$$LikeWorkImplCopyWithImpl(
      _$LikeWorkImpl _value, $Res Function(_$LikeWorkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workId = null,
  }) {
    return _then(_$LikeWorkImpl(
      null == workId
          ? _value.workId
          : workId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LikeWorkImpl implements _LikeWork {
  const _$LikeWorkImpl(this.workId);

  @override
  final int workId;

  @override
  String toString() {
    return 'ArtistWorkEvent.likeWork(workId: $workId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeWorkImpl &&
            (identical(other.workId, workId) || other.workId == workId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeWorkImplCopyWith<_$LikeWorkImpl> get copyWith =>
      __$$LikeWorkImplCopyWithImpl<_$LikeWorkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includeHidden) loadWorks,
    required TResult Function(int workId) loadWorkDetail,
    required TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)
        createWork,
    required TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)
        updateWork,
    required TResult Function(int workId) deleteWork,
    required TResult Function(Work work) toggleFeatured,
    required TResult Function(Work work) toggleVisibility,
    required TResult Function(int workId) recordView,
    required TResult Function(int workId) likeWork,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterWorksByTag,
  }) {
    return likeWork(workId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadWorks,
    TResult? Function(int workId)? loadWorkDetail,
    TResult? Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult? Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult? Function(int workId)? deleteWork,
    TResult? Function(Work work)? toggleFeatured,
    TResult? Function(Work work)? toggleVisibility,
    TResult? Function(int workId)? recordView,
    TResult? Function(int workId)? likeWork,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterWorksByTag,
  }) {
    return likeWork?.call(workId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadWorks,
    TResult Function(int workId)? loadWorkDetail,
    TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult Function(int workId)? deleteWork,
    TResult Function(Work work)? toggleFeatured,
    TResult Function(Work work)? toggleVisibility,
    TResult Function(int workId)? recordView,
    TResult Function(int workId)? likeWork,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterWorksByTag,
    required TResult orElse(),
  }) {
    if (likeWork != null) {
      return likeWork(workId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadWorks value) loadWorks,
    required TResult Function(_LoadWorkDetail value) loadWorkDetail,
    required TResult Function(_CreateWork value) createWork,
    required TResult Function(_UpdateWork value) updateWork,
    required TResult Function(_DeleteWork value) deleteWork,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeWork value) likeWork,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterWorksByTag value) filterWorksByTag,
  }) {
    return likeWork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadWorks value)? loadWorks,
    TResult? Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult? Function(_CreateWork value)? createWork,
    TResult? Function(_UpdateWork value)? updateWork,
    TResult? Function(_DeleteWork value)? deleteWork,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeWork value)? likeWork,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterWorksByTag value)? filterWorksByTag,
  }) {
    return likeWork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadWorks value)? loadWorks,
    TResult Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult Function(_CreateWork value)? createWork,
    TResult Function(_UpdateWork value)? updateWork,
    TResult Function(_DeleteWork value)? deleteWork,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeWork value)? likeWork,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterWorksByTag value)? filterWorksByTag,
    required TResult orElse(),
  }) {
    if (likeWork != null) {
      return likeWork(this);
    }
    return orElse();
  }
}

abstract class _LikeWork implements ArtistWorkEvent {
  const factory _LikeWork(final int workId) = _$LikeWorkImpl;

  int get workId;
  @JsonKey(ignore: true)
  _$$LikeWorkImplCopyWith<_$LikeWorkImpl> get copyWith =>
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
    extends _$ArtistWorkEventCopyWithImpl<$Res, _$GetTagSuggestionsImpl>
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
    return 'ArtistWorkEvent.getTagSuggestions(prefix: $prefix)';
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
    required TResult Function(bool includeHidden) loadWorks,
    required TResult Function(int workId) loadWorkDetail,
    required TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)
        createWork,
    required TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)
        updateWork,
    required TResult Function(int workId) deleteWork,
    required TResult Function(Work work) toggleFeatured,
    required TResult Function(Work work) toggleVisibility,
    required TResult Function(int workId) recordView,
    required TResult Function(int workId) likeWork,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterWorksByTag,
  }) {
    return getTagSuggestions(prefix);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadWorks,
    TResult? Function(int workId)? loadWorkDetail,
    TResult? Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult? Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult? Function(int workId)? deleteWork,
    TResult? Function(Work work)? toggleFeatured,
    TResult? Function(Work work)? toggleVisibility,
    TResult? Function(int workId)? recordView,
    TResult? Function(int workId)? likeWork,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterWorksByTag,
  }) {
    return getTagSuggestions?.call(prefix);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadWorks,
    TResult Function(int workId)? loadWorkDetail,
    TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult Function(int workId)? deleteWork,
    TResult Function(Work work)? toggleFeatured,
    TResult Function(Work work)? toggleVisibility,
    TResult Function(int workId)? recordView,
    TResult Function(int workId)? likeWork,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterWorksByTag,
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
    required TResult Function(_LoadWorks value) loadWorks,
    required TResult Function(_LoadWorkDetail value) loadWorkDetail,
    required TResult Function(_CreateWork value) createWork,
    required TResult Function(_UpdateWork value) updateWork,
    required TResult Function(_DeleteWork value) deleteWork,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeWork value) likeWork,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterWorksByTag value) filterWorksByTag,
  }) {
    return getTagSuggestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadWorks value)? loadWorks,
    TResult? Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult? Function(_CreateWork value)? createWork,
    TResult? Function(_UpdateWork value)? updateWork,
    TResult? Function(_DeleteWork value)? deleteWork,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeWork value)? likeWork,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterWorksByTag value)? filterWorksByTag,
  }) {
    return getTagSuggestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadWorks value)? loadWorks,
    TResult Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult Function(_CreateWork value)? createWork,
    TResult Function(_UpdateWork value)? updateWork,
    TResult Function(_DeleteWork value)? deleteWork,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeWork value)? likeWork,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterWorksByTag value)? filterWorksByTag,
    required TResult orElse(),
  }) {
    if (getTagSuggestions != null) {
      return getTagSuggestions(this);
    }
    return orElse();
  }
}

abstract class _GetTagSuggestions implements ArtistWorkEvent {
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
    extends _$ArtistWorkEventCopyWithImpl<$Res, _$GetPopularTagsImpl>
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
    return 'ArtistWorkEvent.getPopularTags()';
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
    required TResult Function(bool includeHidden) loadWorks,
    required TResult Function(int workId) loadWorkDetail,
    required TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)
        createWork,
    required TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)
        updateWork,
    required TResult Function(int workId) deleteWork,
    required TResult Function(Work work) toggleFeatured,
    required TResult Function(Work work) toggleVisibility,
    required TResult Function(int workId) recordView,
    required TResult Function(int workId) likeWork,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterWorksByTag,
  }) {
    return getPopularTags();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadWorks,
    TResult? Function(int workId)? loadWorkDetail,
    TResult? Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult? Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult? Function(int workId)? deleteWork,
    TResult? Function(Work work)? toggleFeatured,
    TResult? Function(Work work)? toggleVisibility,
    TResult? Function(int workId)? recordView,
    TResult? Function(int workId)? likeWork,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterWorksByTag,
  }) {
    return getPopularTags?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadWorks,
    TResult Function(int workId)? loadWorkDetail,
    TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult Function(int workId)? deleteWork,
    TResult Function(Work work)? toggleFeatured,
    TResult Function(Work work)? toggleVisibility,
    TResult Function(int workId)? recordView,
    TResult Function(int workId)? likeWork,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterWorksByTag,
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
    required TResult Function(_LoadWorks value) loadWorks,
    required TResult Function(_LoadWorkDetail value) loadWorkDetail,
    required TResult Function(_CreateWork value) createWork,
    required TResult Function(_UpdateWork value) updateWork,
    required TResult Function(_DeleteWork value) deleteWork,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeWork value) likeWork,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterWorksByTag value) filterWorksByTag,
  }) {
    return getPopularTags(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadWorks value)? loadWorks,
    TResult? Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult? Function(_CreateWork value)? createWork,
    TResult? Function(_UpdateWork value)? updateWork,
    TResult? Function(_DeleteWork value)? deleteWork,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeWork value)? likeWork,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterWorksByTag value)? filterWorksByTag,
  }) {
    return getPopularTags?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadWorks value)? loadWorks,
    TResult Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult Function(_CreateWork value)? createWork,
    TResult Function(_UpdateWork value)? updateWork,
    TResult Function(_DeleteWork value)? deleteWork,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeWork value)? likeWork,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterWorksByTag value)? filterWorksByTag,
    required TResult orElse(),
  }) {
    if (getPopularTags != null) {
      return getPopularTags(this);
    }
    return orElse();
  }
}

abstract class _GetPopularTags implements ArtistWorkEvent {
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
    extends _$ArtistWorkEventCopyWithImpl<$Res, _$CreateTagImpl>
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
    return 'ArtistWorkEvent.createTag(name: $name)';
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
    required TResult Function(bool includeHidden) loadWorks,
    required TResult Function(int workId) loadWorkDetail,
    required TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)
        createWork,
    required TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)
        updateWork,
    required TResult Function(int workId) deleteWork,
    required TResult Function(Work work) toggleFeatured,
    required TResult Function(Work work) toggleVisibility,
    required TResult Function(int workId) recordView,
    required TResult Function(int workId) likeWork,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterWorksByTag,
  }) {
    return createTag(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadWorks,
    TResult? Function(int workId)? loadWorkDetail,
    TResult? Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult? Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult? Function(int workId)? deleteWork,
    TResult? Function(Work work)? toggleFeatured,
    TResult? Function(Work work)? toggleVisibility,
    TResult? Function(int workId)? recordView,
    TResult? Function(int workId)? likeWork,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterWorksByTag,
  }) {
    return createTag?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadWorks,
    TResult Function(int workId)? loadWorkDetail,
    TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult Function(int workId)? deleteWork,
    TResult Function(Work work)? toggleFeatured,
    TResult Function(Work work)? toggleVisibility,
    TResult Function(int workId)? recordView,
    TResult Function(int workId)? likeWork,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterWorksByTag,
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
    required TResult Function(_LoadWorks value) loadWorks,
    required TResult Function(_LoadWorkDetail value) loadWorkDetail,
    required TResult Function(_CreateWork value) createWork,
    required TResult Function(_UpdateWork value) updateWork,
    required TResult Function(_DeleteWork value) deleteWork,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeWork value) likeWork,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterWorksByTag value) filterWorksByTag,
  }) {
    return createTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadWorks value)? loadWorks,
    TResult? Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult? Function(_CreateWork value)? createWork,
    TResult? Function(_UpdateWork value)? updateWork,
    TResult? Function(_DeleteWork value)? deleteWork,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeWork value)? likeWork,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterWorksByTag value)? filterWorksByTag,
  }) {
    return createTag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadWorks value)? loadWorks,
    TResult Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult Function(_CreateWork value)? createWork,
    TResult Function(_UpdateWork value)? updateWork,
    TResult Function(_DeleteWork value)? deleteWork,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeWork value)? likeWork,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterWorksByTag value)? filterWorksByTag,
    required TResult orElse(),
  }) {
    if (createTag != null) {
      return createTag(this);
    }
    return orElse();
  }
}

abstract class _CreateTag implements ArtistWorkEvent {
  const factory _CreateTag(final String name) = _$CreateTagImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$CreateTagImplCopyWith<_$CreateTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterWorksByTagImplCopyWith<$Res> {
  factory _$$FilterWorksByTagImplCopyWith(_$FilterWorksByTagImpl value,
          $Res Function(_$FilterWorksByTagImpl) then) =
      __$$FilterWorksByTagImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int tagId});
}

/// @nodoc
class __$$FilterWorksByTagImplCopyWithImpl<$Res>
    extends _$ArtistWorkEventCopyWithImpl<$Res, _$FilterWorksByTagImpl>
    implements _$$FilterWorksByTagImplCopyWith<$Res> {
  __$$FilterWorksByTagImplCopyWithImpl(_$FilterWorksByTagImpl _value,
      $Res Function(_$FilterWorksByTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagId = null,
  }) {
    return _then(_$FilterWorksByTagImpl(
      null == tagId
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FilterWorksByTagImpl implements _FilterWorksByTag {
  const _$FilterWorksByTagImpl(this.tagId);

  @override
  final int tagId;

  @override
  String toString() {
    return 'ArtistWorkEvent.filterWorksByTag(tagId: $tagId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterWorksByTagImpl &&
            (identical(other.tagId, tagId) || other.tagId == tagId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tagId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterWorksByTagImplCopyWith<_$FilterWorksByTagImpl> get copyWith =>
      __$$FilterWorksByTagImplCopyWithImpl<_$FilterWorksByTagImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool includeHidden) loadWorks,
    required TResult Function(int workId) loadWorkDetail,
    required TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)
        createWork,
    required TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)
        updateWork,
    required TResult Function(int workId) deleteWork,
    required TResult Function(Work work) toggleFeatured,
    required TResult Function(Work work) toggleVisibility,
    required TResult Function(int workId) recordView,
    required TResult Function(int workId) likeWork,
    required TResult Function(String prefix) getTagSuggestions,
    required TResult Function() getPopularTags,
    required TResult Function(String name) createTag,
    required TResult Function(int tagId) filterWorksByTag,
  }) {
    return filterWorksByTag(tagId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool includeHidden)? loadWorks,
    TResult? Function(int workId)? loadWorkDetail,
    TResult? Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult? Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult? Function(int workId)? deleteWork,
    TResult? Function(Work work)? toggleFeatured,
    TResult? Function(Work work)? toggleVisibility,
    TResult? Function(int workId)? recordView,
    TResult? Function(int workId)? likeWork,
    TResult? Function(String prefix)? getTagSuggestions,
    TResult? Function()? getPopularTags,
    TResult? Function(String name)? createTag,
    TResult? Function(int tagId)? filterWorksByTag,
  }) {
    return filterWorksByTag?.call(tagId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool includeHidden)? loadWorks,
    TResult Function(int workId)? loadWorkDetail,
    TResult Function(
            String title,
            String? description,
            bool isFeatured,
            bool isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource source)?
        createWork,
    TResult Function(
            int workId,
            String? title,
            String? description,
            bool? isFeatured,
            bool? isHidden,
            List<int>? tagIds,
            XFile? imageFile,
            WorkSource? source)?
        updateWork,
    TResult Function(int workId)? deleteWork,
    TResult Function(Work work)? toggleFeatured,
    TResult Function(Work work)? toggleVisibility,
    TResult Function(int workId)? recordView,
    TResult Function(int workId)? likeWork,
    TResult Function(String prefix)? getTagSuggestions,
    TResult Function()? getPopularTags,
    TResult Function(String name)? createTag,
    TResult Function(int tagId)? filterWorksByTag,
    required TResult orElse(),
  }) {
    if (filterWorksByTag != null) {
      return filterWorksByTag(tagId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadWorks value) loadWorks,
    required TResult Function(_LoadWorkDetail value) loadWorkDetail,
    required TResult Function(_CreateWork value) createWork,
    required TResult Function(_UpdateWork value) updateWork,
    required TResult Function(_DeleteWork value) deleteWork,
    required TResult Function(_ToggleFeatured value) toggleFeatured,
    required TResult Function(_ToggleVisibility value) toggleVisibility,
    required TResult Function(_RecordView value) recordView,
    required TResult Function(_LikeWork value) likeWork,
    required TResult Function(_GetTagSuggestions value) getTagSuggestions,
    required TResult Function(_GetPopularTags value) getPopularTags,
    required TResult Function(_CreateTag value) createTag,
    required TResult Function(_FilterWorksByTag value) filterWorksByTag,
  }) {
    return filterWorksByTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadWorks value)? loadWorks,
    TResult? Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult? Function(_CreateWork value)? createWork,
    TResult? Function(_UpdateWork value)? updateWork,
    TResult? Function(_DeleteWork value)? deleteWork,
    TResult? Function(_ToggleFeatured value)? toggleFeatured,
    TResult? Function(_ToggleVisibility value)? toggleVisibility,
    TResult? Function(_RecordView value)? recordView,
    TResult? Function(_LikeWork value)? likeWork,
    TResult? Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult? Function(_GetPopularTags value)? getPopularTags,
    TResult? Function(_CreateTag value)? createTag,
    TResult? Function(_FilterWorksByTag value)? filterWorksByTag,
  }) {
    return filterWorksByTag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadWorks value)? loadWorks,
    TResult Function(_LoadWorkDetail value)? loadWorkDetail,
    TResult Function(_CreateWork value)? createWork,
    TResult Function(_UpdateWork value)? updateWork,
    TResult Function(_DeleteWork value)? deleteWork,
    TResult Function(_ToggleFeatured value)? toggleFeatured,
    TResult Function(_ToggleVisibility value)? toggleVisibility,
    TResult Function(_RecordView value)? recordView,
    TResult Function(_LikeWork value)? likeWork,
    TResult Function(_GetTagSuggestions value)? getTagSuggestions,
    TResult Function(_GetPopularTags value)? getPopularTags,
    TResult Function(_CreateTag value)? createTag,
    TResult Function(_FilterWorksByTag value)? filterWorksByTag,
    required TResult orElse(),
  }) {
    if (filterWorksByTag != null) {
      return filterWorksByTag(this);
    }
    return orElse();
  }
}

abstract class _FilterWorksByTag implements ArtistWorkEvent {
  const factory _FilterWorksByTag(final int tagId) = _$FilterWorksByTagImpl;

  int get tagId;
  @JsonKey(ignore: true)
  _$$FilterWorksByTagImplCopyWith<_$FilterWorksByTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ArtistWorkState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Work> works) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Work work) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Work work) workCreated,
    required TResult Function(Work work) workUpdated,
    required TResult Function() workDeleted,
    required TResult Function(int workId, int viewCount) viewRecorded,
    required TResult Function(int workId, int likeCount) workLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Work> works, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Work> works)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Work work)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Work work)? workCreated,
    TResult? Function(Work work)? workUpdated,
    TResult? Function()? workDeleted,
    TResult? Function(int workId, int viewCount)? viewRecorded,
    TResult? Function(int workId, int likeCount)? workLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Work> works, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Work> works)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Work work)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Work work)? workCreated,
    TResult Function(Work work)? workUpdated,
    TResult Function()? workDeleted,
    TResult Function(int workId, int viewCount)? viewRecorded,
    TResult Function(int workId, int likeCount)? workLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Work> works, int tagId)? filteredByTag,
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
    required TResult Function(_WorkCreated value) workCreated,
    required TResult Function(_WorkUpdated value) workUpdated,
    required TResult Function(_WorkDeleted value) workDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_WorkLiked value) workLiked,
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
    TResult? Function(_WorkCreated value)? workCreated,
    TResult? Function(_WorkUpdated value)? workUpdated,
    TResult? Function(_WorkDeleted value)? workDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_WorkLiked value)? workLiked,
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
    TResult Function(_WorkCreated value)? workCreated,
    TResult Function(_WorkUpdated value)? workUpdated,
    TResult Function(_WorkDeleted value)? workDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_WorkLiked value)? workLiked,
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
abstract class $ArtistWorkStateCopyWith<$Res> {
  factory $ArtistWorkStateCopyWith(
          ArtistWorkState value, $Res Function(ArtistWorkState) then) =
      _$ArtistWorkStateCopyWithImpl<$Res, ArtistWorkState>;
}

/// @nodoc
class _$ArtistWorkStateCopyWithImpl<$Res, $Val extends ArtistWorkState>
    implements $ArtistWorkStateCopyWith<$Res> {
  _$ArtistWorkStateCopyWithImpl(this._value, this._then);

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
    extends _$ArtistWorkStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ArtistWorkState.initial()';
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
    required TResult Function(List<Work> works) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Work work) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Work work) workCreated,
    required TResult Function(Work work) workUpdated,
    required TResult Function() workDeleted,
    required TResult Function(int workId, int viewCount) viewRecorded,
    required TResult Function(int workId, int likeCount) workLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Work> works, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Work> works)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Work work)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Work work)? workCreated,
    TResult? Function(Work work)? workUpdated,
    TResult? Function()? workDeleted,
    TResult? Function(int workId, int viewCount)? viewRecorded,
    TResult? Function(int workId, int likeCount)? workLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Work> works, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Work> works)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Work work)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Work work)? workCreated,
    TResult Function(Work work)? workUpdated,
    TResult Function()? workDeleted,
    TResult Function(int workId, int viewCount)? viewRecorded,
    TResult Function(int workId, int likeCount)? workLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Work> works, int tagId)? filteredByTag,
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
    required TResult Function(_WorkCreated value) workCreated,
    required TResult Function(_WorkUpdated value) workUpdated,
    required TResult Function(_WorkDeleted value) workDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_WorkLiked value) workLiked,
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
    TResult? Function(_WorkCreated value)? workCreated,
    TResult? Function(_WorkUpdated value)? workUpdated,
    TResult? Function(_WorkDeleted value)? workDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_WorkLiked value)? workLiked,
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
    TResult Function(_WorkCreated value)? workCreated,
    TResult Function(_WorkUpdated value)? workUpdated,
    TResult Function(_WorkDeleted value)? workDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_WorkLiked value)? workLiked,
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

abstract class _Initial implements ArtistWorkState {
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
    extends _$ArtistWorkStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'ArtistWorkState.loading()';
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
    required TResult Function(List<Work> works) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Work work) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Work work) workCreated,
    required TResult Function(Work work) workUpdated,
    required TResult Function() workDeleted,
    required TResult Function(int workId, int viewCount) viewRecorded,
    required TResult Function(int workId, int likeCount) workLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Work> works, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Work> works)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Work work)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Work work)? workCreated,
    TResult? Function(Work work)? workUpdated,
    TResult? Function()? workDeleted,
    TResult? Function(int workId, int viewCount)? viewRecorded,
    TResult? Function(int workId, int likeCount)? workLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Work> works, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Work> works)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Work work)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Work work)? workCreated,
    TResult Function(Work work)? workUpdated,
    TResult Function()? workDeleted,
    TResult Function(int workId, int viewCount)? viewRecorded,
    TResult Function(int workId, int likeCount)? workLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Work> works, int tagId)? filteredByTag,
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
    required TResult Function(_WorkCreated value) workCreated,
    required TResult Function(_WorkUpdated value) workUpdated,
    required TResult Function(_WorkDeleted value) workDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_WorkLiked value) workLiked,
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
    TResult? Function(_WorkCreated value)? workCreated,
    TResult? Function(_WorkUpdated value)? workUpdated,
    TResult? Function(_WorkDeleted value)? workDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_WorkLiked value)? workLiked,
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
    TResult Function(_WorkCreated value)? workCreated,
    TResult Function(_WorkUpdated value)? workUpdated,
    TResult Function(_WorkDeleted value)? workDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_WorkLiked value)? workLiked,
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

abstract class _Loading implements ArtistWorkState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Work> works});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ArtistWorkStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? works = null,
  }) {
    return _then(_$LoadedImpl(
      null == works
          ? _value._works
          : works // ignore: cast_nullable_to_non_nullable
              as List<Work>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<Work> works) : _works = works;

  final List<Work> _works;
  @override
  List<Work> get works {
    if (_works is EqualUnmodifiableListView) return _works;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_works);
  }

  @override
  String toString() {
    return 'ArtistWorkState.loaded(works: $works)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._works, _works));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_works));

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
    required TResult Function(List<Work> works) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Work work) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Work work) workCreated,
    required TResult Function(Work work) workUpdated,
    required TResult Function() workDeleted,
    required TResult Function(int workId, int viewCount) viewRecorded,
    required TResult Function(int workId, int likeCount) workLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Work> works, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return loaded(works);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Work> works)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Work work)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Work work)? workCreated,
    TResult? Function(Work work)? workUpdated,
    TResult? Function()? workDeleted,
    TResult? Function(int workId, int viewCount)? viewRecorded,
    TResult? Function(int workId, int likeCount)? workLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Work> works, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(works);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Work> works)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Work work)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Work work)? workCreated,
    TResult Function(Work work)? workUpdated,
    TResult Function()? workDeleted,
    TResult Function(int workId, int viewCount)? viewRecorded,
    TResult Function(int workId, int likeCount)? workLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Work> works, int tagId)? filteredByTag,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(works);
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
    required TResult Function(_WorkCreated value) workCreated,
    required TResult Function(_WorkUpdated value) workUpdated,
    required TResult Function(_WorkDeleted value) workDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_WorkLiked value) workLiked,
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
    TResult? Function(_WorkCreated value)? workCreated,
    TResult? Function(_WorkUpdated value)? workUpdated,
    TResult? Function(_WorkDeleted value)? workDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_WorkLiked value)? workLiked,
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
    TResult Function(_WorkCreated value)? workCreated,
    TResult Function(_WorkUpdated value)? workUpdated,
    TResult Function(_WorkDeleted value)? workDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_WorkLiked value)? workLiked,
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

abstract class _Loaded implements ArtistWorkState {
  const factory _Loaded(final List<Work> works) = _$LoadedImpl;

  List<Work> get works;
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
    extends _$ArtistWorkStateCopyWithImpl<$Res, _$DetailLoadingImpl>
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
    return 'ArtistWorkState.detailLoading()';
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
    required TResult Function(List<Work> works) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Work work) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Work work) workCreated,
    required TResult Function(Work work) workUpdated,
    required TResult Function() workDeleted,
    required TResult Function(int workId, int viewCount) viewRecorded,
    required TResult Function(int workId, int likeCount) workLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Work> works, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return detailLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Work> works)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Work work)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Work work)? workCreated,
    TResult? Function(Work work)? workUpdated,
    TResult? Function()? workDeleted,
    TResult? Function(int workId, int viewCount)? viewRecorded,
    TResult? Function(int workId, int likeCount)? workLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Work> works, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return detailLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Work> works)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Work work)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Work work)? workCreated,
    TResult Function(Work work)? workUpdated,
    TResult Function()? workDeleted,
    TResult Function(int workId, int viewCount)? viewRecorded,
    TResult Function(int workId, int likeCount)? workLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Work> works, int tagId)? filteredByTag,
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
    required TResult Function(_WorkCreated value) workCreated,
    required TResult Function(_WorkUpdated value) workUpdated,
    required TResult Function(_WorkDeleted value) workDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_WorkLiked value) workLiked,
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
    TResult? Function(_WorkCreated value)? workCreated,
    TResult? Function(_WorkUpdated value)? workUpdated,
    TResult? Function(_WorkDeleted value)? workDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_WorkLiked value)? workLiked,
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
    TResult Function(_WorkCreated value)? workCreated,
    TResult Function(_WorkUpdated value)? workUpdated,
    TResult Function(_WorkDeleted value)? workDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_WorkLiked value)? workLiked,
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

abstract class _DetailLoading implements ArtistWorkState {
  const factory _DetailLoading() = _$DetailLoadingImpl;
}

/// @nodoc
abstract class _$$DetailLoadedImplCopyWith<$Res> {
  factory _$$DetailLoadedImplCopyWith(
          _$DetailLoadedImpl value, $Res Function(_$DetailLoadedImpl) then) =
      __$$DetailLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Work work});

  $WorkCopyWith<$Res> get work;
}

/// @nodoc
class __$$DetailLoadedImplCopyWithImpl<$Res>
    extends _$ArtistWorkStateCopyWithImpl<$Res, _$DetailLoadedImpl>
    implements _$$DetailLoadedImplCopyWith<$Res> {
  __$$DetailLoadedImplCopyWithImpl(
      _$DetailLoadedImpl _value, $Res Function(_$DetailLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? work = null,
  }) {
    return _then(_$DetailLoadedImpl(
      null == work
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as Work,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkCopyWith<$Res> get work {
    return $WorkCopyWith<$Res>(_value.work, (value) {
      return _then(_value.copyWith(work: value));
    });
  }
}

/// @nodoc

class _$DetailLoadedImpl implements _DetailLoaded {
  const _$DetailLoadedImpl(this.work);

  @override
  final Work work;

  @override
  String toString() {
    return 'ArtistWorkState.detailLoaded(work: $work)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailLoadedImpl &&
            (identical(other.work, work) || other.work == work));
  }

  @override
  int get hashCode => Object.hash(runtimeType, work);

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
    required TResult Function(List<Work> works) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Work work) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Work work) workCreated,
    required TResult Function(Work work) workUpdated,
    required TResult Function() workDeleted,
    required TResult Function(int workId, int viewCount) viewRecorded,
    required TResult Function(int workId, int likeCount) workLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Work> works, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return detailLoaded(work);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Work> works)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Work work)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Work work)? workCreated,
    TResult? Function(Work work)? workUpdated,
    TResult? Function()? workDeleted,
    TResult? Function(int workId, int viewCount)? viewRecorded,
    TResult? Function(int workId, int likeCount)? workLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Work> works, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return detailLoaded?.call(work);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Work> works)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Work work)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Work work)? workCreated,
    TResult Function(Work work)? workUpdated,
    TResult Function()? workDeleted,
    TResult Function(int workId, int viewCount)? viewRecorded,
    TResult Function(int workId, int likeCount)? workLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Work> works, int tagId)? filteredByTag,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (detailLoaded != null) {
      return detailLoaded(work);
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
    required TResult Function(_WorkCreated value) workCreated,
    required TResult Function(_WorkUpdated value) workUpdated,
    required TResult Function(_WorkDeleted value) workDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_WorkLiked value) workLiked,
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
    TResult? Function(_WorkCreated value)? workCreated,
    TResult? Function(_WorkUpdated value)? workUpdated,
    TResult? Function(_WorkDeleted value)? workDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_WorkLiked value)? workLiked,
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
    TResult Function(_WorkCreated value)? workCreated,
    TResult Function(_WorkUpdated value)? workUpdated,
    TResult Function(_WorkDeleted value)? workDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_WorkLiked value)? workLiked,
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

abstract class _DetailLoaded implements ArtistWorkState {
  const factory _DetailLoaded(final Work work) = _$DetailLoadedImpl;

  Work get work;
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
    extends _$ArtistWorkStateCopyWithImpl<$Res, _$SubmittingImpl>
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
    return 'ArtistWorkState.submitting()';
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
    required TResult Function(List<Work> works) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Work work) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Work work) workCreated,
    required TResult Function(Work work) workUpdated,
    required TResult Function() workDeleted,
    required TResult Function(int workId, int viewCount) viewRecorded,
    required TResult Function(int workId, int likeCount) workLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Work> works, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return submitting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Work> works)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Work work)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Work work)? workCreated,
    TResult? Function(Work work)? workUpdated,
    TResult? Function()? workDeleted,
    TResult? Function(int workId, int viewCount)? viewRecorded,
    TResult? Function(int workId, int likeCount)? workLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Work> works, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return submitting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Work> works)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Work work)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Work work)? workCreated,
    TResult Function(Work work)? workUpdated,
    TResult Function()? workDeleted,
    TResult Function(int workId, int viewCount)? viewRecorded,
    TResult Function(int workId, int likeCount)? workLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Work> works, int tagId)? filteredByTag,
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
    required TResult Function(_WorkCreated value) workCreated,
    required TResult Function(_WorkUpdated value) workUpdated,
    required TResult Function(_WorkDeleted value) workDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_WorkLiked value) workLiked,
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
    TResult? Function(_WorkCreated value)? workCreated,
    TResult? Function(_WorkUpdated value)? workUpdated,
    TResult? Function(_WorkDeleted value)? workDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_WorkLiked value)? workLiked,
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
    TResult Function(_WorkCreated value)? workCreated,
    TResult Function(_WorkUpdated value)? workUpdated,
    TResult Function(_WorkDeleted value)? workDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_WorkLiked value)? workLiked,
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

abstract class _Submitting implements ArtistWorkState {
  const factory _Submitting() = _$SubmittingImpl;
}

/// @nodoc
abstract class _$$WorkCreatedImplCopyWith<$Res> {
  factory _$$WorkCreatedImplCopyWith(
          _$WorkCreatedImpl value, $Res Function(_$WorkCreatedImpl) then) =
      __$$WorkCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Work work});

  $WorkCopyWith<$Res> get work;
}

/// @nodoc
class __$$WorkCreatedImplCopyWithImpl<$Res>
    extends _$ArtistWorkStateCopyWithImpl<$Res, _$WorkCreatedImpl>
    implements _$$WorkCreatedImplCopyWith<$Res> {
  __$$WorkCreatedImplCopyWithImpl(
      _$WorkCreatedImpl _value, $Res Function(_$WorkCreatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? work = null,
  }) {
    return _then(_$WorkCreatedImpl(
      null == work
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as Work,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkCopyWith<$Res> get work {
    return $WorkCopyWith<$Res>(_value.work, (value) {
      return _then(_value.copyWith(work: value));
    });
  }
}

/// @nodoc

class _$WorkCreatedImpl implements _WorkCreated {
  const _$WorkCreatedImpl(this.work);

  @override
  final Work work;

  @override
  String toString() {
    return 'ArtistWorkState.workCreated(work: $work)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkCreatedImpl &&
            (identical(other.work, work) || other.work == work));
  }

  @override
  int get hashCode => Object.hash(runtimeType, work);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkCreatedImplCopyWith<_$WorkCreatedImpl> get copyWith =>
      __$$WorkCreatedImplCopyWithImpl<_$WorkCreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Work> works) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Work work) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Work work) workCreated,
    required TResult Function(Work work) workUpdated,
    required TResult Function() workDeleted,
    required TResult Function(int workId, int viewCount) viewRecorded,
    required TResult Function(int workId, int likeCount) workLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Work> works, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return workCreated(work);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Work> works)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Work work)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Work work)? workCreated,
    TResult? Function(Work work)? workUpdated,
    TResult? Function()? workDeleted,
    TResult? Function(int workId, int viewCount)? viewRecorded,
    TResult? Function(int workId, int likeCount)? workLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Work> works, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return workCreated?.call(work);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Work> works)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Work work)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Work work)? workCreated,
    TResult Function(Work work)? workUpdated,
    TResult Function()? workDeleted,
    TResult Function(int workId, int viewCount)? viewRecorded,
    TResult Function(int workId, int likeCount)? workLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Work> works, int tagId)? filteredByTag,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (workCreated != null) {
      return workCreated(work);
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
    required TResult Function(_WorkCreated value) workCreated,
    required TResult Function(_WorkUpdated value) workUpdated,
    required TResult Function(_WorkDeleted value) workDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_WorkLiked value) workLiked,
    required TResult Function(_TagSuggestionsLoaded value) tagSuggestionsLoaded,
    required TResult Function(_PopularTagsLoaded value) popularTagsLoaded,
    required TResult Function(_TagCreated value) tagCreated,
    required TResult Function(_FilteredByTag value) filteredByTag,
    required TResult Function(_Error value) error,
  }) {
    return workCreated(this);
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
    TResult? Function(_WorkCreated value)? workCreated,
    TResult? Function(_WorkUpdated value)? workUpdated,
    TResult? Function(_WorkDeleted value)? workDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_WorkLiked value)? workLiked,
    TResult? Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult? Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult? Function(_TagCreated value)? tagCreated,
    TResult? Function(_FilteredByTag value)? filteredByTag,
    TResult? Function(_Error value)? error,
  }) {
    return workCreated?.call(this);
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
    TResult Function(_WorkCreated value)? workCreated,
    TResult Function(_WorkUpdated value)? workUpdated,
    TResult Function(_WorkDeleted value)? workDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_WorkLiked value)? workLiked,
    TResult Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult Function(_TagCreated value)? tagCreated,
    TResult Function(_FilteredByTag value)? filteredByTag,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (workCreated != null) {
      return workCreated(this);
    }
    return orElse();
  }
}

abstract class _WorkCreated implements ArtistWorkState {
  const factory _WorkCreated(final Work work) = _$WorkCreatedImpl;

  Work get work;
  @JsonKey(ignore: true)
  _$$WorkCreatedImplCopyWith<_$WorkCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WorkUpdatedImplCopyWith<$Res> {
  factory _$$WorkUpdatedImplCopyWith(
          _$WorkUpdatedImpl value, $Res Function(_$WorkUpdatedImpl) then) =
      __$$WorkUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Work work});

  $WorkCopyWith<$Res> get work;
}

/// @nodoc
class __$$WorkUpdatedImplCopyWithImpl<$Res>
    extends _$ArtistWorkStateCopyWithImpl<$Res, _$WorkUpdatedImpl>
    implements _$$WorkUpdatedImplCopyWith<$Res> {
  __$$WorkUpdatedImplCopyWithImpl(
      _$WorkUpdatedImpl _value, $Res Function(_$WorkUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? work = null,
  }) {
    return _then(_$WorkUpdatedImpl(
      null == work
          ? _value.work
          : work // ignore: cast_nullable_to_non_nullable
              as Work,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkCopyWith<$Res> get work {
    return $WorkCopyWith<$Res>(_value.work, (value) {
      return _then(_value.copyWith(work: value));
    });
  }
}

/// @nodoc

class _$WorkUpdatedImpl implements _WorkUpdated {
  const _$WorkUpdatedImpl(this.work);

  @override
  final Work work;

  @override
  String toString() {
    return 'ArtistWorkState.workUpdated(work: $work)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkUpdatedImpl &&
            (identical(other.work, work) || other.work == work));
  }

  @override
  int get hashCode => Object.hash(runtimeType, work);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkUpdatedImplCopyWith<_$WorkUpdatedImpl> get copyWith =>
      __$$WorkUpdatedImplCopyWithImpl<_$WorkUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Work> works) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Work work) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Work work) workCreated,
    required TResult Function(Work work) workUpdated,
    required TResult Function() workDeleted,
    required TResult Function(int workId, int viewCount) viewRecorded,
    required TResult Function(int workId, int likeCount) workLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Work> works, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return workUpdated(work);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Work> works)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Work work)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Work work)? workCreated,
    TResult? Function(Work work)? workUpdated,
    TResult? Function()? workDeleted,
    TResult? Function(int workId, int viewCount)? viewRecorded,
    TResult? Function(int workId, int likeCount)? workLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Work> works, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return workUpdated?.call(work);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Work> works)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Work work)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Work work)? workCreated,
    TResult Function(Work work)? workUpdated,
    TResult Function()? workDeleted,
    TResult Function(int workId, int viewCount)? viewRecorded,
    TResult Function(int workId, int likeCount)? workLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Work> works, int tagId)? filteredByTag,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (workUpdated != null) {
      return workUpdated(work);
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
    required TResult Function(_WorkCreated value) workCreated,
    required TResult Function(_WorkUpdated value) workUpdated,
    required TResult Function(_WorkDeleted value) workDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_WorkLiked value) workLiked,
    required TResult Function(_TagSuggestionsLoaded value) tagSuggestionsLoaded,
    required TResult Function(_PopularTagsLoaded value) popularTagsLoaded,
    required TResult Function(_TagCreated value) tagCreated,
    required TResult Function(_FilteredByTag value) filteredByTag,
    required TResult Function(_Error value) error,
  }) {
    return workUpdated(this);
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
    TResult? Function(_WorkCreated value)? workCreated,
    TResult? Function(_WorkUpdated value)? workUpdated,
    TResult? Function(_WorkDeleted value)? workDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_WorkLiked value)? workLiked,
    TResult? Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult? Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult? Function(_TagCreated value)? tagCreated,
    TResult? Function(_FilteredByTag value)? filteredByTag,
    TResult? Function(_Error value)? error,
  }) {
    return workUpdated?.call(this);
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
    TResult Function(_WorkCreated value)? workCreated,
    TResult Function(_WorkUpdated value)? workUpdated,
    TResult Function(_WorkDeleted value)? workDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_WorkLiked value)? workLiked,
    TResult Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult Function(_TagCreated value)? tagCreated,
    TResult Function(_FilteredByTag value)? filteredByTag,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (workUpdated != null) {
      return workUpdated(this);
    }
    return orElse();
  }
}

abstract class _WorkUpdated implements ArtistWorkState {
  const factory _WorkUpdated(final Work work) = _$WorkUpdatedImpl;

  Work get work;
  @JsonKey(ignore: true)
  _$$WorkUpdatedImplCopyWith<_$WorkUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WorkDeletedImplCopyWith<$Res> {
  factory _$$WorkDeletedImplCopyWith(
          _$WorkDeletedImpl value, $Res Function(_$WorkDeletedImpl) then) =
      __$$WorkDeletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WorkDeletedImplCopyWithImpl<$Res>
    extends _$ArtistWorkStateCopyWithImpl<$Res, _$WorkDeletedImpl>
    implements _$$WorkDeletedImplCopyWith<$Res> {
  __$$WorkDeletedImplCopyWithImpl(
      _$WorkDeletedImpl _value, $Res Function(_$WorkDeletedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WorkDeletedImpl implements _WorkDeleted {
  const _$WorkDeletedImpl();

  @override
  String toString() {
    return 'ArtistWorkState.workDeleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WorkDeletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Work> works) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Work work) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Work work) workCreated,
    required TResult Function(Work work) workUpdated,
    required TResult Function() workDeleted,
    required TResult Function(int workId, int viewCount) viewRecorded,
    required TResult Function(int workId, int likeCount) workLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Work> works, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return workDeleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Work> works)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Work work)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Work work)? workCreated,
    TResult? Function(Work work)? workUpdated,
    TResult? Function()? workDeleted,
    TResult? Function(int workId, int viewCount)? viewRecorded,
    TResult? Function(int workId, int likeCount)? workLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Work> works, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return workDeleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Work> works)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Work work)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Work work)? workCreated,
    TResult Function(Work work)? workUpdated,
    TResult Function()? workDeleted,
    TResult Function(int workId, int viewCount)? viewRecorded,
    TResult Function(int workId, int likeCount)? workLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Work> works, int tagId)? filteredByTag,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (workDeleted != null) {
      return workDeleted();
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
    required TResult Function(_WorkCreated value) workCreated,
    required TResult Function(_WorkUpdated value) workUpdated,
    required TResult Function(_WorkDeleted value) workDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_WorkLiked value) workLiked,
    required TResult Function(_TagSuggestionsLoaded value) tagSuggestionsLoaded,
    required TResult Function(_PopularTagsLoaded value) popularTagsLoaded,
    required TResult Function(_TagCreated value) tagCreated,
    required TResult Function(_FilteredByTag value) filteredByTag,
    required TResult Function(_Error value) error,
  }) {
    return workDeleted(this);
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
    TResult? Function(_WorkCreated value)? workCreated,
    TResult? Function(_WorkUpdated value)? workUpdated,
    TResult? Function(_WorkDeleted value)? workDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_WorkLiked value)? workLiked,
    TResult? Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult? Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult? Function(_TagCreated value)? tagCreated,
    TResult? Function(_FilteredByTag value)? filteredByTag,
    TResult? Function(_Error value)? error,
  }) {
    return workDeleted?.call(this);
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
    TResult Function(_WorkCreated value)? workCreated,
    TResult Function(_WorkUpdated value)? workUpdated,
    TResult Function(_WorkDeleted value)? workDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_WorkLiked value)? workLiked,
    TResult Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult Function(_TagCreated value)? tagCreated,
    TResult Function(_FilteredByTag value)? filteredByTag,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (workDeleted != null) {
      return workDeleted(this);
    }
    return orElse();
  }
}

abstract class _WorkDeleted implements ArtistWorkState {
  const factory _WorkDeleted() = _$WorkDeletedImpl;
}

/// @nodoc
abstract class _$$ViewRecordedImplCopyWith<$Res> {
  factory _$$ViewRecordedImplCopyWith(
          _$ViewRecordedImpl value, $Res Function(_$ViewRecordedImpl) then) =
      __$$ViewRecordedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int workId, int viewCount});
}

/// @nodoc
class __$$ViewRecordedImplCopyWithImpl<$Res>
    extends _$ArtistWorkStateCopyWithImpl<$Res, _$ViewRecordedImpl>
    implements _$$ViewRecordedImplCopyWith<$Res> {
  __$$ViewRecordedImplCopyWithImpl(
      _$ViewRecordedImpl _value, $Res Function(_$ViewRecordedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workId = null,
    Object? viewCount = null,
  }) {
    return _then(_$ViewRecordedImpl(
      null == workId
          ? _value.workId
          : workId // ignore: cast_nullable_to_non_nullable
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
  const _$ViewRecordedImpl(this.workId, this.viewCount);

  @override
  final int workId;
  @override
  final int viewCount;

  @override
  String toString() {
    return 'ArtistWorkState.viewRecorded(workId: $workId, viewCount: $viewCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewRecordedImpl &&
            (identical(other.workId, workId) || other.workId == workId) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workId, viewCount);

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
    required TResult Function(List<Work> works) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Work work) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Work work) workCreated,
    required TResult Function(Work work) workUpdated,
    required TResult Function() workDeleted,
    required TResult Function(int workId, int viewCount) viewRecorded,
    required TResult Function(int workId, int likeCount) workLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Work> works, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return viewRecorded(workId, viewCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Work> works)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Work work)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Work work)? workCreated,
    TResult? Function(Work work)? workUpdated,
    TResult? Function()? workDeleted,
    TResult? Function(int workId, int viewCount)? viewRecorded,
    TResult? Function(int workId, int likeCount)? workLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Work> works, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return viewRecorded?.call(workId, viewCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Work> works)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Work work)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Work work)? workCreated,
    TResult Function(Work work)? workUpdated,
    TResult Function()? workDeleted,
    TResult Function(int workId, int viewCount)? viewRecorded,
    TResult Function(int workId, int likeCount)? workLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Work> works, int tagId)? filteredByTag,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (viewRecorded != null) {
      return viewRecorded(workId, viewCount);
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
    required TResult Function(_WorkCreated value) workCreated,
    required TResult Function(_WorkUpdated value) workUpdated,
    required TResult Function(_WorkDeleted value) workDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_WorkLiked value) workLiked,
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
    TResult? Function(_WorkCreated value)? workCreated,
    TResult? Function(_WorkUpdated value)? workUpdated,
    TResult? Function(_WorkDeleted value)? workDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_WorkLiked value)? workLiked,
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
    TResult Function(_WorkCreated value)? workCreated,
    TResult Function(_WorkUpdated value)? workUpdated,
    TResult Function(_WorkDeleted value)? workDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_WorkLiked value)? workLiked,
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

abstract class _ViewRecorded implements ArtistWorkState {
  const factory _ViewRecorded(final int workId, final int viewCount) =
      _$ViewRecordedImpl;

  int get workId;
  int get viewCount;
  @JsonKey(ignore: true)
  _$$ViewRecordedImplCopyWith<_$ViewRecordedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WorkLikedImplCopyWith<$Res> {
  factory _$$WorkLikedImplCopyWith(
          _$WorkLikedImpl value, $Res Function(_$WorkLikedImpl) then) =
      __$$WorkLikedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int workId, int likeCount});
}

/// @nodoc
class __$$WorkLikedImplCopyWithImpl<$Res>
    extends _$ArtistWorkStateCopyWithImpl<$Res, _$WorkLikedImpl>
    implements _$$WorkLikedImplCopyWith<$Res> {
  __$$WorkLikedImplCopyWithImpl(
      _$WorkLikedImpl _value, $Res Function(_$WorkLikedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workId = null,
    Object? likeCount = null,
  }) {
    return _then(_$WorkLikedImpl(
      null == workId
          ? _value.workId
          : workId // ignore: cast_nullable_to_non_nullable
              as int,
      null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WorkLikedImpl implements _WorkLiked {
  const _$WorkLikedImpl(this.workId, this.likeCount);

  @override
  final int workId;
  @override
  final int likeCount;

  @override
  String toString() {
    return 'ArtistWorkState.workLiked(workId: $workId, likeCount: $likeCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkLikedImpl &&
            (identical(other.workId, workId) || other.workId == workId) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workId, likeCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkLikedImplCopyWith<_$WorkLikedImpl> get copyWith =>
      __$$WorkLikedImplCopyWithImpl<_$WorkLikedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Work> works) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Work work) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Work work) workCreated,
    required TResult Function(Work work) workUpdated,
    required TResult Function() workDeleted,
    required TResult Function(int workId, int viewCount) viewRecorded,
    required TResult Function(int workId, int likeCount) workLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Work> works, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return workLiked(workId, likeCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Work> works)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Work work)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Work work)? workCreated,
    TResult? Function(Work work)? workUpdated,
    TResult? Function()? workDeleted,
    TResult? Function(int workId, int viewCount)? viewRecorded,
    TResult? Function(int workId, int likeCount)? workLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Work> works, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return workLiked?.call(workId, likeCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Work> works)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Work work)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Work work)? workCreated,
    TResult Function(Work work)? workUpdated,
    TResult Function()? workDeleted,
    TResult Function(int workId, int viewCount)? viewRecorded,
    TResult Function(int workId, int likeCount)? workLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Work> works, int tagId)? filteredByTag,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (workLiked != null) {
      return workLiked(workId, likeCount);
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
    required TResult Function(_WorkCreated value) workCreated,
    required TResult Function(_WorkUpdated value) workUpdated,
    required TResult Function(_WorkDeleted value) workDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_WorkLiked value) workLiked,
    required TResult Function(_TagSuggestionsLoaded value) tagSuggestionsLoaded,
    required TResult Function(_PopularTagsLoaded value) popularTagsLoaded,
    required TResult Function(_TagCreated value) tagCreated,
    required TResult Function(_FilteredByTag value) filteredByTag,
    required TResult Function(_Error value) error,
  }) {
    return workLiked(this);
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
    TResult? Function(_WorkCreated value)? workCreated,
    TResult? Function(_WorkUpdated value)? workUpdated,
    TResult? Function(_WorkDeleted value)? workDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_WorkLiked value)? workLiked,
    TResult? Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult? Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult? Function(_TagCreated value)? tagCreated,
    TResult? Function(_FilteredByTag value)? filteredByTag,
    TResult? Function(_Error value)? error,
  }) {
    return workLiked?.call(this);
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
    TResult Function(_WorkCreated value)? workCreated,
    TResult Function(_WorkUpdated value)? workUpdated,
    TResult Function(_WorkDeleted value)? workDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_WorkLiked value)? workLiked,
    TResult Function(_TagSuggestionsLoaded value)? tagSuggestionsLoaded,
    TResult Function(_PopularTagsLoaded value)? popularTagsLoaded,
    TResult Function(_TagCreated value)? tagCreated,
    TResult Function(_FilteredByTag value)? filteredByTag,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (workLiked != null) {
      return workLiked(this);
    }
    return orElse();
  }
}

abstract class _WorkLiked implements ArtistWorkState {
  const factory _WorkLiked(final int workId, final int likeCount) =
      _$WorkLikedImpl;

  int get workId;
  int get likeCount;
  @JsonKey(ignore: true)
  _$$WorkLikedImplCopyWith<_$WorkLikedImpl> get copyWith =>
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
    extends _$ArtistWorkStateCopyWithImpl<$Res, _$TagSuggestionsLoadedImpl>
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
    return 'ArtistWorkState.tagSuggestionsLoaded(suggestions: $suggestions)';
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
    required TResult Function(List<Work> works) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Work work) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Work work) workCreated,
    required TResult Function(Work work) workUpdated,
    required TResult Function() workDeleted,
    required TResult Function(int workId, int viewCount) viewRecorded,
    required TResult Function(int workId, int likeCount) workLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Work> works, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return tagSuggestionsLoaded(suggestions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Work> works)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Work work)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Work work)? workCreated,
    TResult? Function(Work work)? workUpdated,
    TResult? Function()? workDeleted,
    TResult? Function(int workId, int viewCount)? viewRecorded,
    TResult? Function(int workId, int likeCount)? workLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Work> works, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return tagSuggestionsLoaded?.call(suggestions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Work> works)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Work work)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Work work)? workCreated,
    TResult Function(Work work)? workUpdated,
    TResult Function()? workDeleted,
    TResult Function(int workId, int viewCount)? viewRecorded,
    TResult Function(int workId, int likeCount)? workLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Work> works, int tagId)? filteredByTag,
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
    required TResult Function(_WorkCreated value) workCreated,
    required TResult Function(_WorkUpdated value) workUpdated,
    required TResult Function(_WorkDeleted value) workDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_WorkLiked value) workLiked,
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
    TResult? Function(_WorkCreated value)? workCreated,
    TResult? Function(_WorkUpdated value)? workUpdated,
    TResult? Function(_WorkDeleted value)? workDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_WorkLiked value)? workLiked,
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
    TResult Function(_WorkCreated value)? workCreated,
    TResult Function(_WorkUpdated value)? workUpdated,
    TResult Function(_WorkDeleted value)? workDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_WorkLiked value)? workLiked,
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

abstract class _TagSuggestionsLoaded implements ArtistWorkState {
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
    extends _$ArtistWorkStateCopyWithImpl<$Res, _$PopularTagsLoadedImpl>
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
    return 'ArtistWorkState.popularTagsLoaded(popularTags: $popularTags)';
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
    required TResult Function(List<Work> works) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Work work) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Work work) workCreated,
    required TResult Function(Work work) workUpdated,
    required TResult Function() workDeleted,
    required TResult Function(int workId, int viewCount) viewRecorded,
    required TResult Function(int workId, int likeCount) workLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Work> works, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return popularTagsLoaded(popularTags);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Work> works)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Work work)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Work work)? workCreated,
    TResult? Function(Work work)? workUpdated,
    TResult? Function()? workDeleted,
    TResult? Function(int workId, int viewCount)? viewRecorded,
    TResult? Function(int workId, int likeCount)? workLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Work> works, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return popularTagsLoaded?.call(popularTags);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Work> works)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Work work)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Work work)? workCreated,
    TResult Function(Work work)? workUpdated,
    TResult Function()? workDeleted,
    TResult Function(int workId, int viewCount)? viewRecorded,
    TResult Function(int workId, int likeCount)? workLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Work> works, int tagId)? filteredByTag,
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
    required TResult Function(_WorkCreated value) workCreated,
    required TResult Function(_WorkUpdated value) workUpdated,
    required TResult Function(_WorkDeleted value) workDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_WorkLiked value) workLiked,
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
    TResult? Function(_WorkCreated value)? workCreated,
    TResult? Function(_WorkUpdated value)? workUpdated,
    TResult? Function(_WorkDeleted value)? workDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_WorkLiked value)? workLiked,
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
    TResult Function(_WorkCreated value)? workCreated,
    TResult Function(_WorkUpdated value)? workUpdated,
    TResult Function(_WorkDeleted value)? workDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_WorkLiked value)? workLiked,
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

abstract class _PopularTagsLoaded implements ArtistWorkState {
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
    extends _$ArtistWorkStateCopyWithImpl<$Res, _$TagCreatedImpl>
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
    return 'ArtistWorkState.tagCreated(tag: $tag)';
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
    required TResult Function(List<Work> works) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Work work) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Work work) workCreated,
    required TResult Function(Work work) workUpdated,
    required TResult Function() workDeleted,
    required TResult Function(int workId, int viewCount) viewRecorded,
    required TResult Function(int workId, int likeCount) workLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Work> works, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return tagCreated(tag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Work> works)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Work work)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Work work)? workCreated,
    TResult? Function(Work work)? workUpdated,
    TResult? Function()? workDeleted,
    TResult? Function(int workId, int viewCount)? viewRecorded,
    TResult? Function(int workId, int likeCount)? workLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Work> works, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return tagCreated?.call(tag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Work> works)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Work work)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Work work)? workCreated,
    TResult Function(Work work)? workUpdated,
    TResult Function()? workDeleted,
    TResult Function(int workId, int viewCount)? viewRecorded,
    TResult Function(int workId, int likeCount)? workLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Work> works, int tagId)? filteredByTag,
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
    required TResult Function(_WorkCreated value) workCreated,
    required TResult Function(_WorkUpdated value) workUpdated,
    required TResult Function(_WorkDeleted value) workDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_WorkLiked value) workLiked,
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
    TResult? Function(_WorkCreated value)? workCreated,
    TResult? Function(_WorkUpdated value)? workUpdated,
    TResult? Function(_WorkDeleted value)? workDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_WorkLiked value)? workLiked,
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
    TResult Function(_WorkCreated value)? workCreated,
    TResult Function(_WorkUpdated value)? workUpdated,
    TResult Function(_WorkDeleted value)? workDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_WorkLiked value)? workLiked,
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

abstract class _TagCreated implements ArtistWorkState {
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
  $Res call({List<Work> works, int tagId});
}

/// @nodoc
class __$$FilteredByTagImplCopyWithImpl<$Res>
    extends _$ArtistWorkStateCopyWithImpl<$Res, _$FilteredByTagImpl>
    implements _$$FilteredByTagImplCopyWith<$Res> {
  __$$FilteredByTagImplCopyWithImpl(
      _$FilteredByTagImpl _value, $Res Function(_$FilteredByTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? works = null,
    Object? tagId = null,
  }) {
    return _then(_$FilteredByTagImpl(
      null == works
          ? _value._works
          : works // ignore: cast_nullable_to_non_nullable
              as List<Work>,
      null == tagId
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FilteredByTagImpl implements _FilteredByTag {
  const _$FilteredByTagImpl(final List<Work> works, this.tagId)
      : _works = works;

  final List<Work> _works;
  @override
  List<Work> get works {
    if (_works is EqualUnmodifiableListView) return _works;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_works);
  }

  @override
  final int tagId;

  @override
  String toString() {
    return 'ArtistWorkState.filteredByTag(works: $works, tagId: $tagId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilteredByTagImpl &&
            const DeepCollectionEquality().equals(other._works, _works) &&
            (identical(other.tagId, tagId) || other.tagId == tagId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_works), tagId);

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
    required TResult Function(List<Work> works) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Work work) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Work work) workCreated,
    required TResult Function(Work work) workUpdated,
    required TResult Function() workDeleted,
    required TResult Function(int workId, int viewCount) viewRecorded,
    required TResult Function(int workId, int likeCount) workLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Work> works, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return filteredByTag(works, tagId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Work> works)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Work work)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Work work)? workCreated,
    TResult? Function(Work work)? workUpdated,
    TResult? Function()? workDeleted,
    TResult? Function(int workId, int viewCount)? viewRecorded,
    TResult? Function(int workId, int likeCount)? workLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Work> works, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return filteredByTag?.call(works, tagId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Work> works)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Work work)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Work work)? workCreated,
    TResult Function(Work work)? workUpdated,
    TResult Function()? workDeleted,
    TResult Function(int workId, int viewCount)? viewRecorded,
    TResult Function(int workId, int likeCount)? workLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Work> works, int tagId)? filteredByTag,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (filteredByTag != null) {
      return filteredByTag(works, tagId);
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
    required TResult Function(_WorkCreated value) workCreated,
    required TResult Function(_WorkUpdated value) workUpdated,
    required TResult Function(_WorkDeleted value) workDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_WorkLiked value) workLiked,
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
    TResult? Function(_WorkCreated value)? workCreated,
    TResult? Function(_WorkUpdated value)? workUpdated,
    TResult? Function(_WorkDeleted value)? workDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_WorkLiked value)? workLiked,
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
    TResult Function(_WorkCreated value)? workCreated,
    TResult Function(_WorkUpdated value)? workUpdated,
    TResult Function(_WorkDeleted value)? workDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_WorkLiked value)? workLiked,
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

abstract class _FilteredByTag implements ArtistWorkState {
  const factory _FilteredByTag(final List<Work> works, final int tagId) =
      _$FilteredByTagImpl;

  List<Work> get works;
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
    extends _$ArtistWorkStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'ArtistWorkState.error(message: $message)';
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
    required TResult Function(List<Work> works) loaded,
    required TResult Function() detailLoading,
    required TResult Function(Work work) detailLoaded,
    required TResult Function() submitting,
    required TResult Function(Work work) workCreated,
    required TResult Function(Work work) workUpdated,
    required TResult Function() workDeleted,
    required TResult Function(int workId, int viewCount) viewRecorded,
    required TResult Function(int workId, int likeCount) workLiked,
    required TResult Function(List<TagSuggestionResponseDto> suggestions)
        tagSuggestionsLoaded,
    required TResult Function(List<TagSuggestionResponseDto> popularTags)
        popularTagsLoaded,
    required TResult Function(TagSuggestionResponseDto tag) tagCreated,
    required TResult Function(List<Work> works, int tagId) filteredByTag,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Work> works)? loaded,
    TResult? Function()? detailLoading,
    TResult? Function(Work work)? detailLoaded,
    TResult? Function()? submitting,
    TResult? Function(Work work)? workCreated,
    TResult? Function(Work work)? workUpdated,
    TResult? Function()? workDeleted,
    TResult? Function(int workId, int viewCount)? viewRecorded,
    TResult? Function(int workId, int likeCount)? workLiked,
    TResult? Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult? Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult? Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult? Function(List<Work> works, int tagId)? filteredByTag,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Work> works)? loaded,
    TResult Function()? detailLoading,
    TResult Function(Work work)? detailLoaded,
    TResult Function()? submitting,
    TResult Function(Work work)? workCreated,
    TResult Function(Work work)? workUpdated,
    TResult Function()? workDeleted,
    TResult Function(int workId, int viewCount)? viewRecorded,
    TResult Function(int workId, int likeCount)? workLiked,
    TResult Function(List<TagSuggestionResponseDto> suggestions)?
        tagSuggestionsLoaded,
    TResult Function(List<TagSuggestionResponseDto> popularTags)?
        popularTagsLoaded,
    TResult Function(TagSuggestionResponseDto tag)? tagCreated,
    TResult Function(List<Work> works, int tagId)? filteredByTag,
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
    required TResult Function(_WorkCreated value) workCreated,
    required TResult Function(_WorkUpdated value) workUpdated,
    required TResult Function(_WorkDeleted value) workDeleted,
    required TResult Function(_ViewRecorded value) viewRecorded,
    required TResult Function(_WorkLiked value) workLiked,
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
    TResult? Function(_WorkCreated value)? workCreated,
    TResult? Function(_WorkUpdated value)? workUpdated,
    TResult? Function(_WorkDeleted value)? workDeleted,
    TResult? Function(_ViewRecorded value)? viewRecorded,
    TResult? Function(_WorkLiked value)? workLiked,
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
    TResult Function(_WorkCreated value)? workCreated,
    TResult Function(_WorkUpdated value)? workUpdated,
    TResult Function(_WorkDeleted value)? workDeleted,
    TResult Function(_ViewRecorded value)? viewRecorded,
    TResult Function(_WorkLiked value)? workLiked,
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

abstract class _Error implements ArtistWorkState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
