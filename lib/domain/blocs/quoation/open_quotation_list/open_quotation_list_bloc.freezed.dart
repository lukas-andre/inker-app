// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_quotation_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OpenQuotationListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isNextPage) loadOpenQuotations,
    required TResult Function() refreshOpenQuotations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isNextPage)? loadOpenQuotations,
    TResult? Function()? refreshOpenQuotations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isNextPage)? loadOpenQuotations,
    TResult Function()? refreshOpenQuotations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadOpenQuotations value) loadOpenQuotations,
    required TResult Function(_RefreshOpenQuotations value)
        refreshOpenQuotations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadOpenQuotations value)? loadOpenQuotations,
    TResult? Function(_RefreshOpenQuotations value)? refreshOpenQuotations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadOpenQuotations value)? loadOpenQuotations,
    TResult Function(_RefreshOpenQuotations value)? refreshOpenQuotations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenQuotationListEventCopyWith<$Res> {
  factory $OpenQuotationListEventCopyWith(OpenQuotationListEvent value,
          $Res Function(OpenQuotationListEvent) then) =
      _$OpenQuotationListEventCopyWithImpl<$Res, OpenQuotationListEvent>;
}

/// @nodoc
class _$OpenQuotationListEventCopyWithImpl<$Res,
        $Val extends OpenQuotationListEvent>
    implements $OpenQuotationListEventCopyWith<$Res> {
  _$OpenQuotationListEventCopyWithImpl(this._value, this._then);

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
    extends _$OpenQuotationListEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'OpenQuotationListEvent.started()';
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
    required TResult Function(bool isNextPage) loadOpenQuotations,
    required TResult Function() refreshOpenQuotations,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isNextPage)? loadOpenQuotations,
    TResult? Function()? refreshOpenQuotations,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isNextPage)? loadOpenQuotations,
    TResult Function()? refreshOpenQuotations,
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
    required TResult Function(_LoadOpenQuotations value) loadOpenQuotations,
    required TResult Function(_RefreshOpenQuotations value)
        refreshOpenQuotations,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadOpenQuotations value)? loadOpenQuotations,
    TResult? Function(_RefreshOpenQuotations value)? refreshOpenQuotations,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadOpenQuotations value)? loadOpenQuotations,
    TResult Function(_RefreshOpenQuotations value)? refreshOpenQuotations,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OpenQuotationListEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadOpenQuotationsImplCopyWith<$Res> {
  factory _$$LoadOpenQuotationsImplCopyWith(_$LoadOpenQuotationsImpl value,
          $Res Function(_$LoadOpenQuotationsImpl) then) =
      __$$LoadOpenQuotationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isNextPage});
}

/// @nodoc
class __$$LoadOpenQuotationsImplCopyWithImpl<$Res>
    extends _$OpenQuotationListEventCopyWithImpl<$Res, _$LoadOpenQuotationsImpl>
    implements _$$LoadOpenQuotationsImplCopyWith<$Res> {
  __$$LoadOpenQuotationsImplCopyWithImpl(_$LoadOpenQuotationsImpl _value,
      $Res Function(_$LoadOpenQuotationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isNextPage = null,
  }) {
    return _then(_$LoadOpenQuotationsImpl(
      isNextPage: null == isNextPage
          ? _value.isNextPage
          : isNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadOpenQuotationsImpl implements _LoadOpenQuotations {
  const _$LoadOpenQuotationsImpl({required this.isNextPage});

  @override
  final bool isNextPage;

  @override
  String toString() {
    return 'OpenQuotationListEvent.loadOpenQuotations(isNextPage: $isNextPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadOpenQuotationsImpl &&
            (identical(other.isNextPage, isNextPage) ||
                other.isNextPage == isNextPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isNextPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadOpenQuotationsImplCopyWith<_$LoadOpenQuotationsImpl> get copyWith =>
      __$$LoadOpenQuotationsImplCopyWithImpl<_$LoadOpenQuotationsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isNextPage) loadOpenQuotations,
    required TResult Function() refreshOpenQuotations,
  }) {
    return loadOpenQuotations(isNextPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isNextPage)? loadOpenQuotations,
    TResult? Function()? refreshOpenQuotations,
  }) {
    return loadOpenQuotations?.call(isNextPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isNextPage)? loadOpenQuotations,
    TResult Function()? refreshOpenQuotations,
    required TResult orElse(),
  }) {
    if (loadOpenQuotations != null) {
      return loadOpenQuotations(isNextPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadOpenQuotations value) loadOpenQuotations,
    required TResult Function(_RefreshOpenQuotations value)
        refreshOpenQuotations,
  }) {
    return loadOpenQuotations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadOpenQuotations value)? loadOpenQuotations,
    TResult? Function(_RefreshOpenQuotations value)? refreshOpenQuotations,
  }) {
    return loadOpenQuotations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadOpenQuotations value)? loadOpenQuotations,
    TResult Function(_RefreshOpenQuotations value)? refreshOpenQuotations,
    required TResult orElse(),
  }) {
    if (loadOpenQuotations != null) {
      return loadOpenQuotations(this);
    }
    return orElse();
  }
}

abstract class _LoadOpenQuotations implements OpenQuotationListEvent {
  const factory _LoadOpenQuotations({required final bool isNextPage}) =
      _$LoadOpenQuotationsImpl;

  bool get isNextPage;
  @JsonKey(ignore: true)
  _$$LoadOpenQuotationsImplCopyWith<_$LoadOpenQuotationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshOpenQuotationsImplCopyWith<$Res> {
  factory _$$RefreshOpenQuotationsImplCopyWith(
          _$RefreshOpenQuotationsImpl value,
          $Res Function(_$RefreshOpenQuotationsImpl) then) =
      __$$RefreshOpenQuotationsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshOpenQuotationsImplCopyWithImpl<$Res>
    extends _$OpenQuotationListEventCopyWithImpl<$Res,
        _$RefreshOpenQuotationsImpl>
    implements _$$RefreshOpenQuotationsImplCopyWith<$Res> {
  __$$RefreshOpenQuotationsImplCopyWithImpl(_$RefreshOpenQuotationsImpl _value,
      $Res Function(_$RefreshOpenQuotationsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshOpenQuotationsImpl implements _RefreshOpenQuotations {
  const _$RefreshOpenQuotationsImpl();

  @override
  String toString() {
    return 'OpenQuotationListEvent.refreshOpenQuotations()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshOpenQuotationsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isNextPage) loadOpenQuotations,
    required TResult Function() refreshOpenQuotations,
  }) {
    return refreshOpenQuotations();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isNextPage)? loadOpenQuotations,
    TResult? Function()? refreshOpenQuotations,
  }) {
    return refreshOpenQuotations?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isNextPage)? loadOpenQuotations,
    TResult Function()? refreshOpenQuotations,
    required TResult orElse(),
  }) {
    if (refreshOpenQuotations != null) {
      return refreshOpenQuotations();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadOpenQuotations value) loadOpenQuotations,
    required TResult Function(_RefreshOpenQuotations value)
        refreshOpenQuotations,
  }) {
    return refreshOpenQuotations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadOpenQuotations value)? loadOpenQuotations,
    TResult? Function(_RefreshOpenQuotations value)? refreshOpenQuotations,
  }) {
    return refreshOpenQuotations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadOpenQuotations value)? loadOpenQuotations,
    TResult Function(_RefreshOpenQuotations value)? refreshOpenQuotations,
    required TResult orElse(),
  }) {
    if (refreshOpenQuotations != null) {
      return refreshOpenQuotations(this);
    }
    return orElse();
  }
}

abstract class _RefreshOpenQuotations implements OpenQuotationListEvent {
  const factory _RefreshOpenQuotations() = _$RefreshOpenQuotationsImpl;
}

/// @nodoc
mixin _$OpenQuotationListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Quotation> openQuotations,
            bool isLoadingMore,
            int currentPage,
            int totalItems,
            String? infoMessage)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Quotation> openQuotations, bool isLoadingMore,
            int currentPage, int totalItems, String? infoMessage)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Quotation> openQuotations, bool isLoadingMore,
            int currentPage, int totalItems, String? infoMessage)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenQuotationListStateCopyWith<$Res> {
  factory $OpenQuotationListStateCopyWith(OpenQuotationListState value,
          $Res Function(OpenQuotationListState) then) =
      _$OpenQuotationListStateCopyWithImpl<$Res, OpenQuotationListState>;
}

/// @nodoc
class _$OpenQuotationListStateCopyWithImpl<$Res,
        $Val extends OpenQuotationListState>
    implements $OpenQuotationListStateCopyWith<$Res> {
  _$OpenQuotationListStateCopyWithImpl(this._value, this._then);

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
    extends _$OpenQuotationListStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'OpenQuotationListState.initial()';
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
    required TResult Function(
            List<Quotation> openQuotations,
            bool isLoadingMore,
            int currentPage,
            int totalItems,
            String? infoMessage)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Quotation> openQuotations, bool isLoadingMore,
            int currentPage, int totalItems, String? infoMessage)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Quotation> openQuotations, bool isLoadingMore,
            int currentPage, int totalItems, String? infoMessage)?
        loaded,
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
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OpenQuotationListState {
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
    extends _$OpenQuotationListStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'OpenQuotationListState.loading()';
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
    required TResult Function(
            List<Quotation> openQuotations,
            bool isLoadingMore,
            int currentPage,
            int totalItems,
            String? infoMessage)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Quotation> openQuotations, bool isLoadingMore,
            int currentPage, int totalItems, String? infoMessage)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Quotation> openQuotations, bool isLoadingMore,
            int currentPage, int totalItems, String? infoMessage)?
        loaded,
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
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements OpenQuotationListState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Quotation> openQuotations,
      bool isLoadingMore,
      int currentPage,
      int totalItems,
      String? infoMessage});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$OpenQuotationListStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openQuotations = null,
    Object? isLoadingMore = null,
    Object? currentPage = null,
    Object? totalItems = null,
    Object? infoMessage = freezed,
  }) {
    return _then(_$LoadedImpl(
      openQuotations: null == openQuotations
          ? _value._openQuotations
          : openQuotations // ignore: cast_nullable_to_non_nullable
              as List<Quotation>,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      infoMessage: freezed == infoMessage
          ? _value.infoMessage
          : infoMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required final List<Quotation> openQuotations,
      required this.isLoadingMore,
      required this.currentPage,
      required this.totalItems,
      this.infoMessage})
      : _openQuotations = openQuotations;

  final List<Quotation> _openQuotations;
  @override
  List<Quotation> get openQuotations {
    if (_openQuotations is EqualUnmodifiableListView) return _openQuotations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_openQuotations);
  }

  @override
  final bool isLoadingMore;
  @override
  final int currentPage;
  @override
  final int totalItems;
  @override
  final String? infoMessage;

  @override
  String toString() {
    return 'OpenQuotationListState.loaded(openQuotations: $openQuotations, isLoadingMore: $isLoadingMore, currentPage: $currentPage, totalItems: $totalItems, infoMessage: $infoMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._openQuotations, _openQuotations) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.infoMessage, infoMessage) ||
                other.infoMessage == infoMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_openQuotations),
      isLoadingMore,
      currentPage,
      totalItems,
      infoMessage);

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
    required TResult Function(
            List<Quotation> openQuotations,
            bool isLoadingMore,
            int currentPage,
            int totalItems,
            String? infoMessage)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(
        openQuotations, isLoadingMore, currentPage, totalItems, infoMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Quotation> openQuotations, bool isLoadingMore,
            int currentPage, int totalItems, String? infoMessage)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(
        openQuotations, isLoadingMore, currentPage, totalItems, infoMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Quotation> openQuotations, bool isLoadingMore,
            int currentPage, int totalItems, String? infoMessage)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          openQuotations, isLoadingMore, currentPage, totalItems, infoMessage);
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
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements OpenQuotationListState {
  const factory _Loaded(
      {required final List<Quotation> openQuotations,
      required final bool isLoadingMore,
      required final int currentPage,
      required final int totalItems,
      final String? infoMessage}) = _$LoadedImpl;

  List<Quotation> get openQuotations;
  bool get isLoadingMore;
  int get currentPage;
  int get totalItems;
  String? get infoMessage;
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
    extends _$OpenQuotationListStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'OpenQuotationListState.error(message: $message)';
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
    required TResult Function(
            List<Quotation> openQuotations,
            bool isLoadingMore,
            int currentPage,
            int totalItems,
            String? infoMessage)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Quotation> openQuotations, bool isLoadingMore,
            int currentPage, int totalItems, String? infoMessage)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Quotation> openQuotations, bool isLoadingMore,
            int currentPage, int totalItems, String? infoMessage)?
        loaded,
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
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements OpenQuotationListState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
