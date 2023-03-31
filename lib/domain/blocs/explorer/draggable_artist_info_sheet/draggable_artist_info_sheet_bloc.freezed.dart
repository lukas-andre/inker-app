// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'draggable_artist_info_sheet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_ChangeViewCopyWith<$Res>
    implements $DraggableArtistInfoSheetEventCopyWith<$Res> {
  factory _$$_ChangeViewCopyWith(
          _$_ChangeView value, $Res Function(_$_ChangeView) then) =
      __$$_ChangeViewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DraggableArtistInfoSheetView view});
}

/// @nodoc
class __$$_ChangeViewCopyWithImpl<$Res>
    extends _$DraggableArtistInfoSheetEventCopyWithImpl<$Res, _$_ChangeView>
    implements _$$_ChangeViewCopyWith<$Res> {
  __$$_ChangeViewCopyWithImpl(
      _$_ChangeView _value, $Res Function(_$_ChangeView) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? view = null,
  }) {
    return _then(_$_ChangeView(
      null == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as DraggableArtistInfoSheetView,
    ));
  }
}

/// @nodoc

class _$_ChangeView implements _ChangeView {
  const _$_ChangeView(this.view);

  @override
  final DraggableArtistInfoSheetView view;

  @override
  String toString() {
    return 'DraggableArtistInfoSheetEvent.changeView(view: $view)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeView &&
            (identical(other.view, view) || other.view == view));
  }

  @override
  int get hashCode => Object.hash(runtimeType, view);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeViewCopyWith<_$_ChangeView> get copyWith =>
      __$$_ChangeViewCopyWithImpl<_$_ChangeView>(this, _$identity);

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
      _$_ChangeView;

  @override
  DraggableArtistInfoSheetView get view;
  @override
  @JsonKey(ignore: true)
  _$$_ChangeViewCopyWith<_$_ChangeView> get copyWith =>
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
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$DraggableArtistInfoSheetStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'DraggableArtistInfoSheetState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
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
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_InfoViewCopyWith<$Res> {
  factory _$$_InfoViewCopyWith(
          _$_InfoView value, $Res Function(_$_InfoView) then) =
      __$$_InfoViewCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InfoViewCopyWithImpl<$Res>
    extends _$DraggableArtistInfoSheetStateCopyWithImpl<$Res, _$_InfoView>
    implements _$$_InfoViewCopyWith<$Res> {
  __$$_InfoViewCopyWithImpl(
      _$_InfoView _value, $Res Function(_$_InfoView) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InfoView implements _InfoView {
  const _$_InfoView();

  @override
  String toString() {
    return 'DraggableArtistInfoSheetState.infoView()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InfoView);
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
  const factory _InfoView() = _$_InfoView;
}

/// @nodoc
abstract class _$$_InfoViewLoadingCopyWith<$Res> {
  factory _$$_InfoViewLoadingCopyWith(
          _$_InfoViewLoading value, $Res Function(_$_InfoViewLoading) then) =
      __$$_InfoViewLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InfoViewLoadingCopyWithImpl<$Res>
    extends _$DraggableArtistInfoSheetStateCopyWithImpl<$Res,
        _$_InfoViewLoading> implements _$$_InfoViewLoadingCopyWith<$Res> {
  __$$_InfoViewLoadingCopyWithImpl(
      _$_InfoViewLoading _value, $Res Function(_$_InfoViewLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InfoViewLoading implements _InfoViewLoading {
  const _$_InfoViewLoading();

  @override
  String toString() {
    return 'DraggableArtistInfoSheetState.infoViewLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InfoViewLoading);
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
  const factory _InfoViewLoading() = _$_InfoViewLoading;
}

/// @nodoc
abstract class _$$_InfoViewErrorCopyWith<$Res> {
  factory _$$_InfoViewErrorCopyWith(
          _$_InfoViewError value, $Res Function(_$_InfoViewError) then) =
      __$$_InfoViewErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InfoViewErrorCopyWithImpl<$Res>
    extends _$DraggableArtistInfoSheetStateCopyWithImpl<$Res, _$_InfoViewError>
    implements _$$_InfoViewErrorCopyWith<$Res> {
  __$$_InfoViewErrorCopyWithImpl(
      _$_InfoViewError _value, $Res Function(_$_InfoViewError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InfoViewError implements _InfoViewError {
  const _$_InfoViewError();

  @override
  String toString() {
    return 'DraggableArtistInfoSheetState.infoViewError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InfoViewError);
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
  const factory _InfoViewError() = _$_InfoViewError;
}

/// @nodoc
abstract class _$$_ReviewsViewCopyWith<$Res> {
  factory _$$_ReviewsViewCopyWith(
          _$_ReviewsView value, $Res Function(_$_ReviewsView) then) =
      __$$_ReviewsViewCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReviewsViewCopyWithImpl<$Res>
    extends _$DraggableArtistInfoSheetStateCopyWithImpl<$Res, _$_ReviewsView>
    implements _$$_ReviewsViewCopyWith<$Res> {
  __$$_ReviewsViewCopyWithImpl(
      _$_ReviewsView _value, $Res Function(_$_ReviewsView) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReviewsView implements _ReviewsView {
  const _$_ReviewsView();

  @override
  String toString() {
    return 'DraggableArtistInfoSheetState.reviewsView()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReviewsView);
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
  const factory _ReviewsView() = _$_ReviewsView;
}

/// @nodoc
abstract class _$$_ReviewsViewLoadingCopyWith<$Res> {
  factory _$$_ReviewsViewLoadingCopyWith(_$_ReviewsViewLoading value,
          $Res Function(_$_ReviewsViewLoading) then) =
      __$$_ReviewsViewLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReviewsViewLoadingCopyWithImpl<$Res>
    extends _$DraggableArtistInfoSheetStateCopyWithImpl<$Res,
        _$_ReviewsViewLoading> implements _$$_ReviewsViewLoadingCopyWith<$Res> {
  __$$_ReviewsViewLoadingCopyWithImpl(
      _$_ReviewsViewLoading _value, $Res Function(_$_ReviewsViewLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReviewsViewLoading implements _ReviewsViewLoading {
  const _$_ReviewsViewLoading();

  @override
  String toString() {
    return 'DraggableArtistInfoSheetState.reviewsViewLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReviewsViewLoading);
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
  const factory _ReviewsViewLoading() = _$_ReviewsViewLoading;
}

/// @nodoc
abstract class _$$_ReviewsViewErrorCopyWith<$Res> {
  factory _$$_ReviewsViewErrorCopyWith(
          _$_ReviewsViewError value, $Res Function(_$_ReviewsViewError) then) =
      __$$_ReviewsViewErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReviewsViewErrorCopyWithImpl<$Res>
    extends _$DraggableArtistInfoSheetStateCopyWithImpl<$Res,
        _$_ReviewsViewError> implements _$$_ReviewsViewErrorCopyWith<$Res> {
  __$$_ReviewsViewErrorCopyWithImpl(
      _$_ReviewsViewError _value, $Res Function(_$_ReviewsViewError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReviewsViewError implements _ReviewsViewError {
  const _$_ReviewsViewError();

  @override
  String toString() {
    return 'DraggableArtistInfoSheetState.reviewsViewError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReviewsViewError);
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
  const factory _ReviewsViewError() = _$_ReviewsViewError;
}
