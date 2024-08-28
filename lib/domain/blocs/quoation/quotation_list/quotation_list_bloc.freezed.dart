// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quotation_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuotationListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<String>? statuses, bool isNextPage)
        loadQuotations,
    required TResult Function(int tabIndex) changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<String>? statuses, bool isNextPage)? loadQuotations,
    TResult? Function(int tabIndex)? changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<String>? statuses, bool isNextPage)? loadQuotations,
    TResult Function(int tabIndex)? changeTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadQuotations value) loadQuotations,
    required TResult Function(_ChangeTab value) changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadQuotations value)? loadQuotations,
    TResult? Function(_ChangeTab value)? changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadQuotations value)? loadQuotations,
    TResult Function(_ChangeTab value)? changeTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotationListEventCopyWith<$Res> {
  factory $QuotationListEventCopyWith(
          QuotationListEvent value, $Res Function(QuotationListEvent) then) =
      _$QuotationListEventCopyWithImpl<$Res, QuotationListEvent>;
}

/// @nodoc
class _$QuotationListEventCopyWithImpl<$Res, $Val extends QuotationListEvent>
    implements $QuotationListEventCopyWith<$Res> {
  _$QuotationListEventCopyWithImpl(this._value, this._then);

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
    extends _$QuotationListEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'QuotationListEvent.started()';
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
    required TResult Function(List<String>? statuses, bool isNextPage)
        loadQuotations,
    required TResult Function(int tabIndex) changeTab,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<String>? statuses, bool isNextPage)? loadQuotations,
    TResult? Function(int tabIndex)? changeTab,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<String>? statuses, bool isNextPage)? loadQuotations,
    TResult Function(int tabIndex)? changeTab,
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
    required TResult Function(_LoadQuotations value) loadQuotations,
    required TResult Function(_ChangeTab value) changeTab,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadQuotations value)? loadQuotations,
    TResult? Function(_ChangeTab value)? changeTab,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadQuotations value)? loadQuotations,
    TResult Function(_ChangeTab value)? changeTab,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements QuotationListEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadQuotationsImplCopyWith<$Res> {
  factory _$$LoadQuotationsImplCopyWith(_$LoadQuotationsImpl value,
          $Res Function(_$LoadQuotationsImpl) then) =
      __$$LoadQuotationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String>? statuses, bool isNextPage});
}

/// @nodoc
class __$$LoadQuotationsImplCopyWithImpl<$Res>
    extends _$QuotationListEventCopyWithImpl<$Res, _$LoadQuotationsImpl>
    implements _$$LoadQuotationsImplCopyWith<$Res> {
  __$$LoadQuotationsImplCopyWithImpl(
      _$LoadQuotationsImpl _value, $Res Function(_$LoadQuotationsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statuses = freezed,
    Object? isNextPage = null,
  }) {
    return _then(_$LoadQuotationsImpl(
      freezed == statuses
          ? _value._statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      null == isNextPage
          ? _value.isNextPage
          : isNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadQuotationsImpl implements _LoadQuotations {
  const _$LoadQuotationsImpl(final List<String>? statuses, this.isNextPage)
      : _statuses = statuses;

  final List<String>? _statuses;
  @override
  List<String>? get statuses {
    final value = _statuses;
    if (value == null) return null;
    if (_statuses is EqualUnmodifiableListView) return _statuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool isNextPage;

  @override
  String toString() {
    return 'QuotationListEvent.loadQuotations(statuses: $statuses, isNextPage: $isNextPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadQuotationsImpl &&
            const DeepCollectionEquality().equals(other._statuses, _statuses) &&
            (identical(other.isNextPage, isNextPage) ||
                other.isNextPage == isNextPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_statuses), isNextPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadQuotationsImplCopyWith<_$LoadQuotationsImpl> get copyWith =>
      __$$LoadQuotationsImplCopyWithImpl<_$LoadQuotationsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<String>? statuses, bool isNextPage)
        loadQuotations,
    required TResult Function(int tabIndex) changeTab,
  }) {
    return loadQuotations(statuses, isNextPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<String>? statuses, bool isNextPage)? loadQuotations,
    TResult? Function(int tabIndex)? changeTab,
  }) {
    return loadQuotations?.call(statuses, isNextPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<String>? statuses, bool isNextPage)? loadQuotations,
    TResult Function(int tabIndex)? changeTab,
    required TResult orElse(),
  }) {
    if (loadQuotations != null) {
      return loadQuotations(statuses, isNextPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadQuotations value) loadQuotations,
    required TResult Function(_ChangeTab value) changeTab,
  }) {
    return loadQuotations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadQuotations value)? loadQuotations,
    TResult? Function(_ChangeTab value)? changeTab,
  }) {
    return loadQuotations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadQuotations value)? loadQuotations,
    TResult Function(_ChangeTab value)? changeTab,
    required TResult orElse(),
  }) {
    if (loadQuotations != null) {
      return loadQuotations(this);
    }
    return orElse();
  }
}

abstract class _LoadQuotations implements QuotationListEvent {
  const factory _LoadQuotations(
          final List<String>? statuses, final bool isNextPage) =
      _$LoadQuotationsImpl;

  List<String>? get statuses;
  bool get isNextPage;
  @JsonKey(ignore: true)
  _$$LoadQuotationsImplCopyWith<_$LoadQuotationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeTabImplCopyWith<$Res> {
  factory _$$ChangeTabImplCopyWith(
          _$ChangeTabImpl value, $Res Function(_$ChangeTabImpl) then) =
      __$$ChangeTabImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int tabIndex});
}

/// @nodoc
class __$$ChangeTabImplCopyWithImpl<$Res>
    extends _$QuotationListEventCopyWithImpl<$Res, _$ChangeTabImpl>
    implements _$$ChangeTabImplCopyWith<$Res> {
  __$$ChangeTabImplCopyWithImpl(
      _$ChangeTabImpl _value, $Res Function(_$ChangeTabImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
  }) {
    return _then(_$ChangeTabImpl(
      null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeTabImpl implements _ChangeTab {
  const _$ChangeTabImpl(this.tabIndex);

  @override
  final int tabIndex;

  @override
  String toString() {
    return 'QuotationListEvent.changeTab(tabIndex: $tabIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTabImpl &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTabImplCopyWith<_$ChangeTabImpl> get copyWith =>
      __$$ChangeTabImplCopyWithImpl<_$ChangeTabImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<String>? statuses, bool isNextPage)
        loadQuotations,
    required TResult Function(int tabIndex) changeTab,
  }) {
    return changeTab(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<String>? statuses, bool isNextPage)? loadQuotations,
    TResult? Function(int tabIndex)? changeTab,
  }) {
    return changeTab?.call(tabIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<String>? statuses, bool isNextPage)? loadQuotations,
    TResult Function(int tabIndex)? changeTab,
    required TResult orElse(),
  }) {
    if (changeTab != null) {
      return changeTab(tabIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadQuotations value) loadQuotations,
    required TResult Function(_ChangeTab value) changeTab,
  }) {
    return changeTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadQuotations value)? loadQuotations,
    TResult? Function(_ChangeTab value)? changeTab,
  }) {
    return changeTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadQuotations value)? loadQuotations,
    TResult Function(_ChangeTab value)? changeTab,
    required TResult orElse(),
  }) {
    if (changeTab != null) {
      return changeTab(this);
    }
    return orElse();
  }
}

abstract class _ChangeTab implements QuotationListEvent {
  const factory _ChangeTab(final int tabIndex) = _$ChangeTabImpl;

  int get tabIndex;
  @JsonKey(ignore: true)
  _$$ChangeTabImplCopyWith<_$ChangeTabImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuotationListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Map<int, List<Quotation>> quotationsByTab,
            int currentTab,
            Map<int, int> currentPage,
            Map<int, bool> hasMorePages,
            Session session,
            List<String>? currentStatuses,
            bool isLoadingMore)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            Map<int, List<Quotation>> quotationsByTab,
            int currentTab,
            Map<int, int> currentPage,
            Map<int, bool> hasMorePages,
            Session session,
            List<String>? currentStatuses,
            bool isLoadingMore)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            Map<int, List<Quotation>> quotationsByTab,
            int currentTab,
            Map<int, int> currentPage,
            Map<int, bool> hasMorePages,
            Session session,
            List<String>? currentStatuses,
            bool isLoadingMore)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuotationListInitial value) initial,
    required TResult Function(QuotationListLoading value) loading,
    required TResult Function(QuotationListLoaded value) loaded,
    required TResult Function(QuotationListError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuotationListInitial value)? initial,
    TResult? Function(QuotationListLoading value)? loading,
    TResult? Function(QuotationListLoaded value)? loaded,
    TResult? Function(QuotationListError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuotationListInitial value)? initial,
    TResult Function(QuotationListLoading value)? loading,
    TResult Function(QuotationListLoaded value)? loaded,
    TResult Function(QuotationListError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotationListStateCopyWith<$Res> {
  factory $QuotationListStateCopyWith(
          QuotationListState value, $Res Function(QuotationListState) then) =
      _$QuotationListStateCopyWithImpl<$Res, QuotationListState>;
}

/// @nodoc
class _$QuotationListStateCopyWithImpl<$Res, $Val extends QuotationListState>
    implements $QuotationListStateCopyWith<$Res> {
  _$QuotationListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$QuotationListInitialImplCopyWith<$Res> {
  factory _$$QuotationListInitialImplCopyWith(_$QuotationListInitialImpl value,
          $Res Function(_$QuotationListInitialImpl) then) =
      __$$QuotationListInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuotationListInitialImplCopyWithImpl<$Res>
    extends _$QuotationListStateCopyWithImpl<$Res, _$QuotationListInitialImpl>
    implements _$$QuotationListInitialImplCopyWith<$Res> {
  __$$QuotationListInitialImplCopyWithImpl(_$QuotationListInitialImpl _value,
      $Res Function(_$QuotationListInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuotationListInitialImpl implements QuotationListInitial {
  const _$QuotationListInitialImpl();

  @override
  String toString() {
    return 'QuotationListState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuotationListInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Map<int, List<Quotation>> quotationsByTab,
            int currentTab,
            Map<int, int> currentPage,
            Map<int, bool> hasMorePages,
            Session session,
            List<String>? currentStatuses,
            bool isLoadingMore)
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
    TResult? Function(
            Map<int, List<Quotation>> quotationsByTab,
            int currentTab,
            Map<int, int> currentPage,
            Map<int, bool> hasMorePages,
            Session session,
            List<String>? currentStatuses,
            bool isLoadingMore)?
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
    TResult Function(
            Map<int, List<Quotation>> quotationsByTab,
            int currentTab,
            Map<int, int> currentPage,
            Map<int, bool> hasMorePages,
            Session session,
            List<String>? currentStatuses,
            bool isLoadingMore)?
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
    required TResult Function(QuotationListInitial value) initial,
    required TResult Function(QuotationListLoading value) loading,
    required TResult Function(QuotationListLoaded value) loaded,
    required TResult Function(QuotationListError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuotationListInitial value)? initial,
    TResult? Function(QuotationListLoading value)? loading,
    TResult? Function(QuotationListLoaded value)? loaded,
    TResult? Function(QuotationListError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuotationListInitial value)? initial,
    TResult Function(QuotationListLoading value)? loading,
    TResult Function(QuotationListLoaded value)? loaded,
    TResult Function(QuotationListError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class QuotationListInitial implements QuotationListState {
  const factory QuotationListInitial() = _$QuotationListInitialImpl;
}

/// @nodoc
abstract class _$$QuotationListLoadingImplCopyWith<$Res> {
  factory _$$QuotationListLoadingImplCopyWith(_$QuotationListLoadingImpl value,
          $Res Function(_$QuotationListLoadingImpl) then) =
      __$$QuotationListLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuotationListLoadingImplCopyWithImpl<$Res>
    extends _$QuotationListStateCopyWithImpl<$Res, _$QuotationListLoadingImpl>
    implements _$$QuotationListLoadingImplCopyWith<$Res> {
  __$$QuotationListLoadingImplCopyWithImpl(_$QuotationListLoadingImpl _value,
      $Res Function(_$QuotationListLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuotationListLoadingImpl implements QuotationListLoading {
  const _$QuotationListLoadingImpl();

  @override
  String toString() {
    return 'QuotationListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuotationListLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Map<int, List<Quotation>> quotationsByTab,
            int currentTab,
            Map<int, int> currentPage,
            Map<int, bool> hasMorePages,
            Session session,
            List<String>? currentStatuses,
            bool isLoadingMore)
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
    TResult? Function(
            Map<int, List<Quotation>> quotationsByTab,
            int currentTab,
            Map<int, int> currentPage,
            Map<int, bool> hasMorePages,
            Session session,
            List<String>? currentStatuses,
            bool isLoadingMore)?
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
    TResult Function(
            Map<int, List<Quotation>> quotationsByTab,
            int currentTab,
            Map<int, int> currentPage,
            Map<int, bool> hasMorePages,
            Session session,
            List<String>? currentStatuses,
            bool isLoadingMore)?
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
    required TResult Function(QuotationListInitial value) initial,
    required TResult Function(QuotationListLoading value) loading,
    required TResult Function(QuotationListLoaded value) loaded,
    required TResult Function(QuotationListError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuotationListInitial value)? initial,
    TResult? Function(QuotationListLoading value)? loading,
    TResult? Function(QuotationListLoaded value)? loaded,
    TResult? Function(QuotationListError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuotationListInitial value)? initial,
    TResult Function(QuotationListLoading value)? loading,
    TResult Function(QuotationListLoaded value)? loaded,
    TResult Function(QuotationListError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class QuotationListLoading implements QuotationListState {
  const factory QuotationListLoading() = _$QuotationListLoadingImpl;
}

/// @nodoc
abstract class _$$QuotationListLoadedImplCopyWith<$Res> {
  factory _$$QuotationListLoadedImplCopyWith(_$QuotationListLoadedImpl value,
          $Res Function(_$QuotationListLoadedImpl) then) =
      __$$QuotationListLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Map<int, List<Quotation>> quotationsByTab,
      int currentTab,
      Map<int, int> currentPage,
      Map<int, bool> hasMorePages,
      Session session,
      List<String>? currentStatuses,
      bool isLoadingMore});
}

/// @nodoc
class __$$QuotationListLoadedImplCopyWithImpl<$Res>
    extends _$QuotationListStateCopyWithImpl<$Res, _$QuotationListLoadedImpl>
    implements _$$QuotationListLoadedImplCopyWith<$Res> {
  __$$QuotationListLoadedImplCopyWithImpl(_$QuotationListLoadedImpl _value,
      $Res Function(_$QuotationListLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotationsByTab = null,
    Object? currentTab = null,
    Object? currentPage = null,
    Object? hasMorePages = null,
    Object? session = null,
    Object? currentStatuses = freezed,
    Object? isLoadingMore = null,
  }) {
    return _then(_$QuotationListLoadedImpl(
      quotationsByTab: null == quotationsByTab
          ? _value._quotationsByTab
          : quotationsByTab // ignore: cast_nullable_to_non_nullable
              as Map<int, List<Quotation>>,
      currentTab: null == currentTab
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value._currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as Map<int, int>,
      hasMorePages: null == hasMorePages
          ? _value._hasMorePages
          : hasMorePages // ignore: cast_nullable_to_non_nullable
              as Map<int, bool>,
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session,
      currentStatuses: freezed == currentStatuses
          ? _value._currentStatuses
          : currentStatuses // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$QuotationListLoadedImpl implements QuotationListLoaded {
  const _$QuotationListLoadedImpl(
      {required final Map<int, List<Quotation>> quotationsByTab,
      required this.currentTab,
      required final Map<int, int> currentPage,
      required final Map<int, bool> hasMorePages,
      required this.session,
      final List<String>? currentStatuses,
      this.isLoadingMore = false})
      : _quotationsByTab = quotationsByTab,
        _currentPage = currentPage,
        _hasMorePages = hasMorePages,
        _currentStatuses = currentStatuses;

  final Map<int, List<Quotation>> _quotationsByTab;
  @override
  Map<int, List<Quotation>> get quotationsByTab {
    if (_quotationsByTab is EqualUnmodifiableMapView) return _quotationsByTab;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_quotationsByTab);
  }

  @override
  final int currentTab;
  final Map<int, int> _currentPage;
  @override
  Map<int, int> get currentPage {
    if (_currentPage is EqualUnmodifiableMapView) return _currentPage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_currentPage);
  }

  final Map<int, bool> _hasMorePages;
  @override
  Map<int, bool> get hasMorePages {
    if (_hasMorePages is EqualUnmodifiableMapView) return _hasMorePages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_hasMorePages);
  }

  @override
  final Session session;
  final List<String>? _currentStatuses;
  @override
  List<String>? get currentStatuses {
    final value = _currentStatuses;
    if (value == null) return null;
    if (_currentStatuses is EqualUnmodifiableListView) return _currentStatuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isLoadingMore;

  @override
  String toString() {
    return 'QuotationListState.loaded(quotationsByTab: $quotationsByTab, currentTab: $currentTab, currentPage: $currentPage, hasMorePages: $hasMorePages, session: $session, currentStatuses: $currentStatuses, isLoadingMore: $isLoadingMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuotationListLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._quotationsByTab, _quotationsByTab) &&
            (identical(other.currentTab, currentTab) ||
                other.currentTab == currentTab) &&
            const DeepCollectionEquality()
                .equals(other._currentPage, _currentPage) &&
            const DeepCollectionEquality()
                .equals(other._hasMorePages, _hasMorePages) &&
            (identical(other.session, session) || other.session == session) &&
            const DeepCollectionEquality()
                .equals(other._currentStatuses, _currentStatuses) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_quotationsByTab),
      currentTab,
      const DeepCollectionEquality().hash(_currentPage),
      const DeepCollectionEquality().hash(_hasMorePages),
      session,
      const DeepCollectionEquality().hash(_currentStatuses),
      isLoadingMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuotationListLoadedImplCopyWith<_$QuotationListLoadedImpl> get copyWith =>
      __$$QuotationListLoadedImplCopyWithImpl<_$QuotationListLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Map<int, List<Quotation>> quotationsByTab,
            int currentTab,
            Map<int, int> currentPage,
            Map<int, bool> hasMorePages,
            Session session,
            List<String>? currentStatuses,
            bool isLoadingMore)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(quotationsByTab, currentTab, currentPage, hasMorePages,
        session, currentStatuses, isLoadingMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            Map<int, List<Quotation>> quotationsByTab,
            int currentTab,
            Map<int, int> currentPage,
            Map<int, bool> hasMorePages,
            Session session,
            List<String>? currentStatuses,
            bool isLoadingMore)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(quotationsByTab, currentTab, currentPage, hasMorePages,
        session, currentStatuses, isLoadingMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            Map<int, List<Quotation>> quotationsByTab,
            int currentTab,
            Map<int, int> currentPage,
            Map<int, bool> hasMorePages,
            Session session,
            List<String>? currentStatuses,
            bool isLoadingMore)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(quotationsByTab, currentTab, currentPage, hasMorePages,
          session, currentStatuses, isLoadingMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuotationListInitial value) initial,
    required TResult Function(QuotationListLoading value) loading,
    required TResult Function(QuotationListLoaded value) loaded,
    required TResult Function(QuotationListError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuotationListInitial value)? initial,
    TResult? Function(QuotationListLoading value)? loading,
    TResult? Function(QuotationListLoaded value)? loaded,
    TResult? Function(QuotationListError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuotationListInitial value)? initial,
    TResult Function(QuotationListLoading value)? loading,
    TResult Function(QuotationListLoaded value)? loaded,
    TResult Function(QuotationListError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class QuotationListLoaded implements QuotationListState {
  const factory QuotationListLoaded(
      {required final Map<int, List<Quotation>> quotationsByTab,
      required final int currentTab,
      required final Map<int, int> currentPage,
      required final Map<int, bool> hasMorePages,
      required final Session session,
      final List<String>? currentStatuses,
      final bool isLoadingMore}) = _$QuotationListLoadedImpl;

  Map<int, List<Quotation>> get quotationsByTab;
  int get currentTab;
  Map<int, int> get currentPage;
  Map<int, bool> get hasMorePages;
  Session get session;
  List<String>? get currentStatuses;
  bool get isLoadingMore;
  @JsonKey(ignore: true)
  _$$QuotationListLoadedImplCopyWith<_$QuotationListLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuotationListErrorImplCopyWith<$Res> {
  factory _$$QuotationListErrorImplCopyWith(_$QuotationListErrorImpl value,
          $Res Function(_$QuotationListErrorImpl) then) =
      __$$QuotationListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$QuotationListErrorImplCopyWithImpl<$Res>
    extends _$QuotationListStateCopyWithImpl<$Res, _$QuotationListErrorImpl>
    implements _$$QuotationListErrorImplCopyWith<$Res> {
  __$$QuotationListErrorImplCopyWithImpl(_$QuotationListErrorImpl _value,
      $Res Function(_$QuotationListErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$QuotationListErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QuotationListErrorImpl implements QuotationListError {
  const _$QuotationListErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'QuotationListState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuotationListErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuotationListErrorImplCopyWith<_$QuotationListErrorImpl> get copyWith =>
      __$$QuotationListErrorImplCopyWithImpl<_$QuotationListErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Map<int, List<Quotation>> quotationsByTab,
            int currentTab,
            Map<int, int> currentPage,
            Map<int, bool> hasMorePages,
            Session session,
            List<String>? currentStatuses,
            bool isLoadingMore)
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
    TResult? Function(
            Map<int, List<Quotation>> quotationsByTab,
            int currentTab,
            Map<int, int> currentPage,
            Map<int, bool> hasMorePages,
            Session session,
            List<String>? currentStatuses,
            bool isLoadingMore)?
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
    TResult Function(
            Map<int, List<Quotation>> quotationsByTab,
            int currentTab,
            Map<int, int> currentPage,
            Map<int, bool> hasMorePages,
            Session session,
            List<String>? currentStatuses,
            bool isLoadingMore)?
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
    required TResult Function(QuotationListInitial value) initial,
    required TResult Function(QuotationListLoading value) loading,
    required TResult Function(QuotationListLoaded value) loaded,
    required TResult Function(QuotationListError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuotationListInitial value)? initial,
    TResult? Function(QuotationListLoading value)? loading,
    TResult? Function(QuotationListLoaded value)? loaded,
    TResult? Function(QuotationListError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuotationListInitial value)? initial,
    TResult Function(QuotationListLoading value)? loading,
    TResult Function(QuotationListLoaded value)? loaded,
    TResult Function(QuotationListError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class QuotationListError implements QuotationListState {
  const factory QuotationListError(final String message) =
      _$QuotationListErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$QuotationListErrorImplCopyWith<_$QuotationListErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
