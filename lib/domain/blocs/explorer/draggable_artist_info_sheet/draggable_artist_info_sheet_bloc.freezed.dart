// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'draggable_artist_info_sheet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DraggableArtistInfoSheetEvent {
  DraggableArtistInfoSheetView get view => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DraggableArtistInfoSheetView view) changeView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DraggableArtistInfoSheetView view)? changeView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DraggableArtistInfoSheetView view)? changeView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeView value) changeView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeView value)? changeView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeView value)? changeView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DraggableArtistInfoSheetEventCopyWith<DraggableArtistInfoSheetEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DraggableArtistInfoSheetEventCopyWith<$Res> {
  factory $DraggableArtistInfoSheetEventCopyWith(
          DraggableArtistInfoSheetEvent value,
          $Res Function(DraggableArtistInfoSheetEvent) then) =
      _$DraggableArtistInfoSheetEventCopyWithImpl<$Res,
          DraggableArtistInfoSheetEvent>;
  @useResult
  $Res call({DraggableArtistInfoSheetView view});
}

/// @nodoc
class _$DraggableArtistInfoSheetEventCopyWithImpl<$Res,
        $Val extends DraggableArtistInfoSheetEvent>
    implements $DraggableArtistInfoSheetEventCopyWith<$Res> {
  _$DraggableArtistInfoSheetEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? view = null,
  }) {
    return _then(_value.copyWith(
      view: null == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as DraggableArtistInfoSheetView,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeViewImplCopyWith<$Res>
    implements $DraggableArtistInfoSheetEventCopyWith<$Res> {
  factory _$$ChangeViewImplCopyWith(
          _$ChangeViewImpl value, $Res Function(_$ChangeViewImpl) then) =
      __$$ChangeViewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DraggableArtistInfoSheetView view});
}

/// @nodoc
class __$$ChangeViewImplCopyWithImpl<$Res>
    extends _$DraggableArtistInfoSheetEventCopyWithImpl<$Res, _$ChangeViewImpl>
    implements _$$ChangeViewImplCopyWith<$Res> {
  __$$ChangeViewImplCopyWithImpl(
      _$ChangeViewImpl _value, $Res Function(_$ChangeViewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? view = null,
  }) {
    return _then(_$ChangeViewImpl(
      null == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as DraggableArtistInfoSheetView,
    ));
  }
}

/// @nodoc

class _$ChangeViewImpl implements _ChangeView {
  const _$ChangeViewImpl(this.view);

  @override
  final DraggableArtistInfoSheetView view;

  @override
  String toString() {
    return 'DraggableArtistInfoSheetEvent.changeView(view: $view)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeViewImpl &&
            (identical(other.view, view) || other.view == view));
  }

  @override
  int get hashCode => Object.hash(runtimeType, view);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeViewImplCopyWith<_$ChangeViewImpl> get copyWith =>
      __$$ChangeViewImplCopyWithImpl<_$ChangeViewImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DraggableArtistInfoSheetView view) changeView,
  }) {
    return changeView(view);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DraggableArtistInfoSheetView view)? changeView,
  }) {
    return changeView?.call(view);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DraggableArtistInfoSheetView view)? changeView,
    required TResult orElse(),
  }) {
    if (changeView != null) {
      return changeView(view);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeView value) changeView,
  }) {
    return changeView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeView value)? changeView,
  }) {
    return changeView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeView value)? changeView,
    required TResult orElse(),
  }) {
    if (changeView != null) {
      return changeView(this);
    }
    return orElse();
  }
}

abstract class _ChangeView implements DraggableArtistInfoSheetEvent {
  const factory _ChangeView(final DraggableArtistInfoSheetView view) =
      _$ChangeViewImpl;

  @override
  DraggableArtistInfoSheetView get view;
  @override
  @JsonKey(ignore: true)
  _$$ChangeViewImplCopyWith<_$ChangeViewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DraggableArtistInfoSheetState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() infoView,
    required TResult Function() infoViewLoading,
    required TResult Function() infoViewError,
    required TResult Function() reviewsView,
    required TResult Function() reviewsViewLoading,
    required TResult Function() reviewsViewError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? infoView,
    TResult? Function()? infoViewLoading,
    TResult? Function()? infoViewError,
    TResult? Function()? reviewsView,
    TResult? Function()? reviewsViewLoading,
    TResult? Function()? reviewsViewError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? infoView,
    TResult Function()? infoViewLoading,
    TResult Function()? infoViewError,
    TResult Function()? reviewsView,
    TResult Function()? reviewsViewLoading,
    TResult Function()? reviewsViewError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InfoView value) infoView,
    required TResult Function(_InfoViewLoading value) infoViewLoading,
    required TResult Function(_InfoViewError value) infoViewError,
    required TResult Function(_ReviewsView value) reviewsView,
    required TResult Function(_ReviewsViewLoading value) reviewsViewLoading,
    required TResult Function(_ReviewsViewError value) reviewsViewError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InfoView value)? infoView,
    TResult? Function(_InfoViewLoading value)? infoViewLoading,
    TResult? Function(_InfoViewError value)? infoViewError,
    TResult? Function(_ReviewsView value)? reviewsView,
    TResult? Function(_ReviewsViewLoading value)? reviewsViewLoading,
    TResult? Function(_ReviewsViewError value)? reviewsViewError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InfoView value)? infoView,
    TResult Function(_InfoViewLoading value)? infoViewLoading,
    TResult Function(_InfoViewError value)? infoViewError,
    TResult Function(_ReviewsView value)? reviewsView,
    TResult Function(_ReviewsViewLoading value)? reviewsViewLoading,
    TResult Function(_ReviewsViewError value)? reviewsViewError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DraggableArtistInfoSheetStateCopyWith<$Res> {
  factory $DraggableArtistInfoSheetStateCopyWith(
          DraggableArtistInfoSheetState value,
          $Res Function(DraggableArtistInfoSheetState) then) =
      _$DraggableArtistInfoSheetStateCopyWithImpl<$Res,
          DraggableArtistInfoSheetState>;
}

/// @nodoc
class _$DraggableArtistInfoSheetStateCopyWithImpl<$Res,
        $Val extends DraggableArtistInfoSheetState>
    implements $DraggableArtistInfoSheetStateCopyWith<$Res> {
  _$DraggableArtistInfoSheetStateCopyWithImpl(this._value, this._then);

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
    extends _$DraggableArtistInfoSheetStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'DraggableArtistInfoSheetState.initial()';
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
    required TResult Function() infoView,
    required TResult Function() infoViewLoading,
    required TResult Function() infoViewError,
    required TResult Function() reviewsView,
    required TResult Function() reviewsViewLoading,
    required TResult Function() reviewsViewError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? infoView,
    TResult? Function()? infoViewLoading,
    TResult? Function()? infoViewError,
    TResult? Function()? reviewsView,
    TResult? Function()? reviewsViewLoading,
    TResult? Function()? reviewsViewError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? infoView,
    TResult Function()? infoViewLoading,
    TResult Function()? infoViewError,
    TResult Function()? reviewsView,
    TResult Function()? reviewsViewLoading,
    TResult Function()? reviewsViewError,
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
    required TResult Function(_InfoView value) infoView,
    required TResult Function(_InfoViewLoading value) infoViewLoading,
    required TResult Function(_InfoViewError value) infoViewError,
    required TResult Function(_ReviewsView value) reviewsView,
    required TResult Function(_ReviewsViewLoading value) reviewsViewLoading,
    required TResult Function(_ReviewsViewError value) reviewsViewError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InfoView value)? infoView,
    TResult? Function(_InfoViewLoading value)? infoViewLoading,
    TResult? Function(_InfoViewError value)? infoViewError,
    TResult? Function(_ReviewsView value)? reviewsView,
    TResult? Function(_ReviewsViewLoading value)? reviewsViewLoading,
    TResult? Function(_ReviewsViewError value)? reviewsViewError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InfoView value)? infoView,
    TResult Function(_InfoViewLoading value)? infoViewLoading,
    TResult Function(_InfoViewError value)? infoViewError,
    TResult Function(_ReviewsView value)? reviewsView,
    TResult Function(_ReviewsViewLoading value)? reviewsViewLoading,
    TResult Function(_ReviewsViewError value)? reviewsViewError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DraggableArtistInfoSheetState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$InfoViewImplCopyWith<$Res> {
  factory _$$InfoViewImplCopyWith(
          _$InfoViewImpl value, $Res Function(_$InfoViewImpl) then) =
      __$$InfoViewImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InfoViewImplCopyWithImpl<$Res>
    extends _$DraggableArtistInfoSheetStateCopyWithImpl<$Res, _$InfoViewImpl>
    implements _$$InfoViewImplCopyWith<$Res> {
  __$$InfoViewImplCopyWithImpl(
      _$InfoViewImpl _value, $Res Function(_$InfoViewImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InfoViewImpl implements _InfoView {
  const _$InfoViewImpl();

  @override
  String toString() {
    return 'DraggableArtistInfoSheetState.infoView()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InfoViewImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() infoView,
    required TResult Function() infoViewLoading,
    required TResult Function() infoViewError,
    required TResult Function() reviewsView,
    required TResult Function() reviewsViewLoading,
    required TResult Function() reviewsViewError,
  }) {
    return infoView();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? infoView,
    TResult? Function()? infoViewLoading,
    TResult? Function()? infoViewError,
    TResult? Function()? reviewsView,
    TResult? Function()? reviewsViewLoading,
    TResult? Function()? reviewsViewError,
  }) {
    return infoView?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? infoView,
    TResult Function()? infoViewLoading,
    TResult Function()? infoViewError,
    TResult Function()? reviewsView,
    TResult Function()? reviewsViewLoading,
    TResult Function()? reviewsViewError,
    required TResult orElse(),
  }) {
    if (infoView != null) {
      return infoView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InfoView value) infoView,
    required TResult Function(_InfoViewLoading value) infoViewLoading,
    required TResult Function(_InfoViewError value) infoViewError,
    required TResult Function(_ReviewsView value) reviewsView,
    required TResult Function(_ReviewsViewLoading value) reviewsViewLoading,
    required TResult Function(_ReviewsViewError value) reviewsViewError,
  }) {
    return infoView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InfoView value)? infoView,
    TResult? Function(_InfoViewLoading value)? infoViewLoading,
    TResult? Function(_InfoViewError value)? infoViewError,
    TResult? Function(_ReviewsView value)? reviewsView,
    TResult? Function(_ReviewsViewLoading value)? reviewsViewLoading,
    TResult? Function(_ReviewsViewError value)? reviewsViewError,
  }) {
    return infoView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InfoView value)? infoView,
    TResult Function(_InfoViewLoading value)? infoViewLoading,
    TResult Function(_InfoViewError value)? infoViewError,
    TResult Function(_ReviewsView value)? reviewsView,
    TResult Function(_ReviewsViewLoading value)? reviewsViewLoading,
    TResult Function(_ReviewsViewError value)? reviewsViewError,
    required TResult orElse(),
  }) {
    if (infoView != null) {
      return infoView(this);
    }
    return orElse();
  }
}

abstract class _InfoView implements DraggableArtistInfoSheetState {
  const factory _InfoView() = _$InfoViewImpl;
}

/// @nodoc
abstract class _$$InfoViewLoadingImplCopyWith<$Res> {
  factory _$$InfoViewLoadingImplCopyWith(_$InfoViewLoadingImpl value,
          $Res Function(_$InfoViewLoadingImpl) then) =
      __$$InfoViewLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InfoViewLoadingImplCopyWithImpl<$Res>
    extends _$DraggableArtistInfoSheetStateCopyWithImpl<$Res,
        _$InfoViewLoadingImpl> implements _$$InfoViewLoadingImplCopyWith<$Res> {
  __$$InfoViewLoadingImplCopyWithImpl(
      _$InfoViewLoadingImpl _value, $Res Function(_$InfoViewLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InfoViewLoadingImpl implements _InfoViewLoading {
  const _$InfoViewLoadingImpl();

  @override
  String toString() {
    return 'DraggableArtistInfoSheetState.infoViewLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InfoViewLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() infoView,
    required TResult Function() infoViewLoading,
    required TResult Function() infoViewError,
    required TResult Function() reviewsView,
    required TResult Function() reviewsViewLoading,
    required TResult Function() reviewsViewError,
  }) {
    return infoViewLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? infoView,
    TResult? Function()? infoViewLoading,
    TResult? Function()? infoViewError,
    TResult? Function()? reviewsView,
    TResult? Function()? reviewsViewLoading,
    TResult? Function()? reviewsViewError,
  }) {
    return infoViewLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? infoView,
    TResult Function()? infoViewLoading,
    TResult Function()? infoViewError,
    TResult Function()? reviewsView,
    TResult Function()? reviewsViewLoading,
    TResult Function()? reviewsViewError,
    required TResult orElse(),
  }) {
    if (infoViewLoading != null) {
      return infoViewLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InfoView value) infoView,
    required TResult Function(_InfoViewLoading value) infoViewLoading,
    required TResult Function(_InfoViewError value) infoViewError,
    required TResult Function(_ReviewsView value) reviewsView,
    required TResult Function(_ReviewsViewLoading value) reviewsViewLoading,
    required TResult Function(_ReviewsViewError value) reviewsViewError,
  }) {
    return infoViewLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InfoView value)? infoView,
    TResult? Function(_InfoViewLoading value)? infoViewLoading,
    TResult? Function(_InfoViewError value)? infoViewError,
    TResult? Function(_ReviewsView value)? reviewsView,
    TResult? Function(_ReviewsViewLoading value)? reviewsViewLoading,
    TResult? Function(_ReviewsViewError value)? reviewsViewError,
  }) {
    return infoViewLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InfoView value)? infoView,
    TResult Function(_InfoViewLoading value)? infoViewLoading,
    TResult Function(_InfoViewError value)? infoViewError,
    TResult Function(_ReviewsView value)? reviewsView,
    TResult Function(_ReviewsViewLoading value)? reviewsViewLoading,
    TResult Function(_ReviewsViewError value)? reviewsViewError,
    required TResult orElse(),
  }) {
    if (infoViewLoading != null) {
      return infoViewLoading(this);
    }
    return orElse();
  }
}

abstract class _InfoViewLoading implements DraggableArtistInfoSheetState {
  const factory _InfoViewLoading() = _$InfoViewLoadingImpl;
}

/// @nodoc
abstract class _$$InfoViewErrorImplCopyWith<$Res> {
  factory _$$InfoViewErrorImplCopyWith(
          _$InfoViewErrorImpl value, $Res Function(_$InfoViewErrorImpl) then) =
      __$$InfoViewErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InfoViewErrorImplCopyWithImpl<$Res>
    extends _$DraggableArtistInfoSheetStateCopyWithImpl<$Res,
        _$InfoViewErrorImpl> implements _$$InfoViewErrorImplCopyWith<$Res> {
  __$$InfoViewErrorImplCopyWithImpl(
      _$InfoViewErrorImpl _value, $Res Function(_$InfoViewErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InfoViewErrorImpl implements _InfoViewError {
  const _$InfoViewErrorImpl();

  @override
  String toString() {
    return 'DraggableArtistInfoSheetState.infoViewError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InfoViewErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() infoView,
    required TResult Function() infoViewLoading,
    required TResult Function() infoViewError,
    required TResult Function() reviewsView,
    required TResult Function() reviewsViewLoading,
    required TResult Function() reviewsViewError,
  }) {
    return infoViewError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? infoView,
    TResult? Function()? infoViewLoading,
    TResult? Function()? infoViewError,
    TResult? Function()? reviewsView,
    TResult? Function()? reviewsViewLoading,
    TResult? Function()? reviewsViewError,
  }) {
    return infoViewError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? infoView,
    TResult Function()? infoViewLoading,
    TResult Function()? infoViewError,
    TResult Function()? reviewsView,
    TResult Function()? reviewsViewLoading,
    TResult Function()? reviewsViewError,
    required TResult orElse(),
  }) {
    if (infoViewError != null) {
      return infoViewError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InfoView value) infoView,
    required TResult Function(_InfoViewLoading value) infoViewLoading,
    required TResult Function(_InfoViewError value) infoViewError,
    required TResult Function(_ReviewsView value) reviewsView,
    required TResult Function(_ReviewsViewLoading value) reviewsViewLoading,
    required TResult Function(_ReviewsViewError value) reviewsViewError,
  }) {
    return infoViewError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InfoView value)? infoView,
    TResult? Function(_InfoViewLoading value)? infoViewLoading,
    TResult? Function(_InfoViewError value)? infoViewError,
    TResult? Function(_ReviewsView value)? reviewsView,
    TResult? Function(_ReviewsViewLoading value)? reviewsViewLoading,
    TResult? Function(_ReviewsViewError value)? reviewsViewError,
  }) {
    return infoViewError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InfoView value)? infoView,
    TResult Function(_InfoViewLoading value)? infoViewLoading,
    TResult Function(_InfoViewError value)? infoViewError,
    TResult Function(_ReviewsView value)? reviewsView,
    TResult Function(_ReviewsViewLoading value)? reviewsViewLoading,
    TResult Function(_ReviewsViewError value)? reviewsViewError,
    required TResult orElse(),
  }) {
    if (infoViewError != null) {
      return infoViewError(this);
    }
    return orElse();
  }
}

abstract class _InfoViewError implements DraggableArtistInfoSheetState {
  const factory _InfoViewError() = _$InfoViewErrorImpl;
}

/// @nodoc
abstract class _$$ReviewsViewImplCopyWith<$Res> {
  factory _$$ReviewsViewImplCopyWith(
          _$ReviewsViewImpl value, $Res Function(_$ReviewsViewImpl) then) =
      __$$ReviewsViewImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReviewsViewImplCopyWithImpl<$Res>
    extends _$DraggableArtistInfoSheetStateCopyWithImpl<$Res, _$ReviewsViewImpl>
    implements _$$ReviewsViewImplCopyWith<$Res> {
  __$$ReviewsViewImplCopyWithImpl(
      _$ReviewsViewImpl _value, $Res Function(_$ReviewsViewImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReviewsViewImpl implements _ReviewsView {
  const _$ReviewsViewImpl();

  @override
  String toString() {
    return 'DraggableArtistInfoSheetState.reviewsView()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReviewsViewImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() infoView,
    required TResult Function() infoViewLoading,
    required TResult Function() infoViewError,
    required TResult Function() reviewsView,
    required TResult Function() reviewsViewLoading,
    required TResult Function() reviewsViewError,
  }) {
    return reviewsView();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? infoView,
    TResult? Function()? infoViewLoading,
    TResult? Function()? infoViewError,
    TResult? Function()? reviewsView,
    TResult? Function()? reviewsViewLoading,
    TResult? Function()? reviewsViewError,
  }) {
    return reviewsView?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? infoView,
    TResult Function()? infoViewLoading,
    TResult Function()? infoViewError,
    TResult Function()? reviewsView,
    TResult Function()? reviewsViewLoading,
    TResult Function()? reviewsViewError,
    required TResult orElse(),
  }) {
    if (reviewsView != null) {
      return reviewsView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InfoView value) infoView,
    required TResult Function(_InfoViewLoading value) infoViewLoading,
    required TResult Function(_InfoViewError value) infoViewError,
    required TResult Function(_ReviewsView value) reviewsView,
    required TResult Function(_ReviewsViewLoading value) reviewsViewLoading,
    required TResult Function(_ReviewsViewError value) reviewsViewError,
  }) {
    return reviewsView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InfoView value)? infoView,
    TResult? Function(_InfoViewLoading value)? infoViewLoading,
    TResult? Function(_InfoViewError value)? infoViewError,
    TResult? Function(_ReviewsView value)? reviewsView,
    TResult? Function(_ReviewsViewLoading value)? reviewsViewLoading,
    TResult? Function(_ReviewsViewError value)? reviewsViewError,
  }) {
    return reviewsView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InfoView value)? infoView,
    TResult Function(_InfoViewLoading value)? infoViewLoading,
    TResult Function(_InfoViewError value)? infoViewError,
    TResult Function(_ReviewsView value)? reviewsView,
    TResult Function(_ReviewsViewLoading value)? reviewsViewLoading,
    TResult Function(_ReviewsViewError value)? reviewsViewError,
    required TResult orElse(),
  }) {
    if (reviewsView != null) {
      return reviewsView(this);
    }
    return orElse();
  }
}

abstract class _ReviewsView implements DraggableArtistInfoSheetState {
  const factory _ReviewsView() = _$ReviewsViewImpl;
}

/// @nodoc
abstract class _$$ReviewsViewLoadingImplCopyWith<$Res> {
  factory _$$ReviewsViewLoadingImplCopyWith(_$ReviewsViewLoadingImpl value,
          $Res Function(_$ReviewsViewLoadingImpl) then) =
      __$$ReviewsViewLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReviewsViewLoadingImplCopyWithImpl<$Res>
    extends _$DraggableArtistInfoSheetStateCopyWithImpl<$Res,
        _$ReviewsViewLoadingImpl>
    implements _$$ReviewsViewLoadingImplCopyWith<$Res> {
  __$$ReviewsViewLoadingImplCopyWithImpl(_$ReviewsViewLoadingImpl _value,
      $Res Function(_$ReviewsViewLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReviewsViewLoadingImpl implements _ReviewsViewLoading {
  const _$ReviewsViewLoadingImpl();

  @override
  String toString() {
    return 'DraggableArtistInfoSheetState.reviewsViewLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReviewsViewLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() infoView,
    required TResult Function() infoViewLoading,
    required TResult Function() infoViewError,
    required TResult Function() reviewsView,
    required TResult Function() reviewsViewLoading,
    required TResult Function() reviewsViewError,
  }) {
    return reviewsViewLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? infoView,
    TResult? Function()? infoViewLoading,
    TResult? Function()? infoViewError,
    TResult? Function()? reviewsView,
    TResult? Function()? reviewsViewLoading,
    TResult? Function()? reviewsViewError,
  }) {
    return reviewsViewLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? infoView,
    TResult Function()? infoViewLoading,
    TResult Function()? infoViewError,
    TResult Function()? reviewsView,
    TResult Function()? reviewsViewLoading,
    TResult Function()? reviewsViewError,
    required TResult orElse(),
  }) {
    if (reviewsViewLoading != null) {
      return reviewsViewLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InfoView value) infoView,
    required TResult Function(_InfoViewLoading value) infoViewLoading,
    required TResult Function(_InfoViewError value) infoViewError,
    required TResult Function(_ReviewsView value) reviewsView,
    required TResult Function(_ReviewsViewLoading value) reviewsViewLoading,
    required TResult Function(_ReviewsViewError value) reviewsViewError,
  }) {
    return reviewsViewLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InfoView value)? infoView,
    TResult? Function(_InfoViewLoading value)? infoViewLoading,
    TResult? Function(_InfoViewError value)? infoViewError,
    TResult? Function(_ReviewsView value)? reviewsView,
    TResult? Function(_ReviewsViewLoading value)? reviewsViewLoading,
    TResult? Function(_ReviewsViewError value)? reviewsViewError,
  }) {
    return reviewsViewLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InfoView value)? infoView,
    TResult Function(_InfoViewLoading value)? infoViewLoading,
    TResult Function(_InfoViewError value)? infoViewError,
    TResult Function(_ReviewsView value)? reviewsView,
    TResult Function(_ReviewsViewLoading value)? reviewsViewLoading,
    TResult Function(_ReviewsViewError value)? reviewsViewError,
    required TResult orElse(),
  }) {
    if (reviewsViewLoading != null) {
      return reviewsViewLoading(this);
    }
    return orElse();
  }
}

abstract class _ReviewsViewLoading implements DraggableArtistInfoSheetState {
  const factory _ReviewsViewLoading() = _$ReviewsViewLoadingImpl;
}

/// @nodoc
abstract class _$$ReviewsViewErrorImplCopyWith<$Res> {
  factory _$$ReviewsViewErrorImplCopyWith(_$ReviewsViewErrorImpl value,
          $Res Function(_$ReviewsViewErrorImpl) then) =
      __$$ReviewsViewErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReviewsViewErrorImplCopyWithImpl<$Res>
    extends _$DraggableArtistInfoSheetStateCopyWithImpl<$Res,
        _$ReviewsViewErrorImpl>
    implements _$$ReviewsViewErrorImplCopyWith<$Res> {
  __$$ReviewsViewErrorImplCopyWithImpl(_$ReviewsViewErrorImpl _value,
      $Res Function(_$ReviewsViewErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReviewsViewErrorImpl implements _ReviewsViewError {
  const _$ReviewsViewErrorImpl();

  @override
  String toString() {
    return 'DraggableArtistInfoSheetState.reviewsViewError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReviewsViewErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() infoView,
    required TResult Function() infoViewLoading,
    required TResult Function() infoViewError,
    required TResult Function() reviewsView,
    required TResult Function() reviewsViewLoading,
    required TResult Function() reviewsViewError,
  }) {
    return reviewsViewError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? infoView,
    TResult? Function()? infoViewLoading,
    TResult? Function()? infoViewError,
    TResult? Function()? reviewsView,
    TResult? Function()? reviewsViewLoading,
    TResult? Function()? reviewsViewError,
  }) {
    return reviewsViewError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? infoView,
    TResult Function()? infoViewLoading,
    TResult Function()? infoViewError,
    TResult Function()? reviewsView,
    TResult Function()? reviewsViewLoading,
    TResult Function()? reviewsViewError,
    required TResult orElse(),
  }) {
    if (reviewsViewError != null) {
      return reviewsViewError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InfoView value) infoView,
    required TResult Function(_InfoViewLoading value) infoViewLoading,
    required TResult Function(_InfoViewError value) infoViewError,
    required TResult Function(_ReviewsView value) reviewsView,
    required TResult Function(_ReviewsViewLoading value) reviewsViewLoading,
    required TResult Function(_ReviewsViewError value) reviewsViewError,
  }) {
    return reviewsViewError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InfoView value)? infoView,
    TResult? Function(_InfoViewLoading value)? infoViewLoading,
    TResult? Function(_InfoViewError value)? infoViewError,
    TResult? Function(_ReviewsView value)? reviewsView,
    TResult? Function(_ReviewsViewLoading value)? reviewsViewLoading,
    TResult? Function(_ReviewsViewError value)? reviewsViewError,
  }) {
    return reviewsViewError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InfoView value)? infoView,
    TResult Function(_InfoViewLoading value)? infoViewLoading,
    TResult Function(_InfoViewError value)? infoViewError,
    TResult Function(_ReviewsView value)? reviewsView,
    TResult Function(_ReviewsViewLoading value)? reviewsViewLoading,
    TResult Function(_ReviewsViewError value)? reviewsViewError,
    required TResult orElse(),
  }) {
    if (reviewsViewError != null) {
      return reviewsViewError(this);
    }
    return orElse();
  }
}

abstract class _ReviewsViewError implements DraggableArtistInfoSheetState {
  const factory _ReviewsViewError() = _$ReviewsViewErrorImpl;
}
