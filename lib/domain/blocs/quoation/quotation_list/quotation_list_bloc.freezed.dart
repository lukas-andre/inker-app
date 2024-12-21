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
    required TResult Function(String quotationId) cancelQuotation,
    required TResult Function() refreshCurrentTab,
    required TResult Function(String quotationId) markAsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<String>? statuses, bool isNextPage)? loadQuotations,
    TResult? Function(String quotationId)? cancelQuotation,
    TResult? Function()? refreshCurrentTab,
    TResult? Function(String quotationId)? markAsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<String>? statuses, bool isNextPage)? loadQuotations,
    TResult Function(String quotationId)? cancelQuotation,
    TResult Function()? refreshCurrentTab,
    TResult Function(String quotationId)? markAsRead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadQuotations value) loadQuotations,
    required TResult Function(_CancelQuotation value) cancelQuotation,
    required TResult Function(_RefreshCurrentTab value) refreshCurrentTab,
    required TResult Function(_MarkAsRead value) markAsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadQuotations value)? loadQuotations,
    TResult? Function(_CancelQuotation value)? cancelQuotation,
    TResult? Function(_RefreshCurrentTab value)? refreshCurrentTab,
    TResult? Function(_MarkAsRead value)? markAsRead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadQuotations value)? loadQuotations,
    TResult Function(_CancelQuotation value)? cancelQuotation,
    TResult Function(_RefreshCurrentTab value)? refreshCurrentTab,
    TResult Function(_MarkAsRead value)? markAsRead,
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
    required TResult Function(String quotationId) cancelQuotation,
    required TResult Function() refreshCurrentTab,
    required TResult Function(String quotationId) markAsRead,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<String>? statuses, bool isNextPage)? loadQuotations,
    TResult? Function(String quotationId)? cancelQuotation,
    TResult? Function()? refreshCurrentTab,
    TResult? Function(String quotationId)? markAsRead,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<String>? statuses, bool isNextPage)? loadQuotations,
    TResult Function(String quotationId)? cancelQuotation,
    TResult Function()? refreshCurrentTab,
    TResult Function(String quotationId)? markAsRead,
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
    required TResult Function(_CancelQuotation value) cancelQuotation,
    required TResult Function(_RefreshCurrentTab value) refreshCurrentTab,
    required TResult Function(_MarkAsRead value) markAsRead,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadQuotations value)? loadQuotations,
    TResult? Function(_CancelQuotation value)? cancelQuotation,
    TResult? Function(_RefreshCurrentTab value)? refreshCurrentTab,
    TResult? Function(_MarkAsRead value)? markAsRead,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadQuotations value)? loadQuotations,
    TResult Function(_CancelQuotation value)? cancelQuotation,
    TResult Function(_RefreshCurrentTab value)? refreshCurrentTab,
    TResult Function(_MarkAsRead value)? markAsRead,
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
    required TResult Function(String quotationId) cancelQuotation,
    required TResult Function() refreshCurrentTab,
    required TResult Function(String quotationId) markAsRead,
  }) {
    return loadQuotations(statuses, isNextPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<String>? statuses, bool isNextPage)? loadQuotations,
    TResult? Function(String quotationId)? cancelQuotation,
    TResult? Function()? refreshCurrentTab,
    TResult? Function(String quotationId)? markAsRead,
  }) {
    return loadQuotations?.call(statuses, isNextPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<String>? statuses, bool isNextPage)? loadQuotations,
    TResult Function(String quotationId)? cancelQuotation,
    TResult Function()? refreshCurrentTab,
    TResult Function(String quotationId)? markAsRead,
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
    required TResult Function(_CancelQuotation value) cancelQuotation,
    required TResult Function(_RefreshCurrentTab value) refreshCurrentTab,
    required TResult Function(_MarkAsRead value) markAsRead,
  }) {
    return loadQuotations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadQuotations value)? loadQuotations,
    TResult? Function(_CancelQuotation value)? cancelQuotation,
    TResult? Function(_RefreshCurrentTab value)? refreshCurrentTab,
    TResult? Function(_MarkAsRead value)? markAsRead,
  }) {
    return loadQuotations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadQuotations value)? loadQuotations,
    TResult Function(_CancelQuotation value)? cancelQuotation,
    TResult Function(_RefreshCurrentTab value)? refreshCurrentTab,
    TResult Function(_MarkAsRead value)? markAsRead,
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
abstract class _$$CancelQuotationImplCopyWith<$Res> {
  factory _$$CancelQuotationImplCopyWith(_$CancelQuotationImpl value,
          $Res Function(_$CancelQuotationImpl) then) =
      __$$CancelQuotationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String quotationId});
}

/// @nodoc
class __$$CancelQuotationImplCopyWithImpl<$Res>
    extends _$QuotationListEventCopyWithImpl<$Res, _$CancelQuotationImpl>
    implements _$$CancelQuotationImplCopyWith<$Res> {
  __$$CancelQuotationImplCopyWithImpl(
      _$CancelQuotationImpl _value, $Res Function(_$CancelQuotationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotationId = null,
  }) {
    return _then(_$CancelQuotationImpl(
      null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CancelQuotationImpl implements _CancelQuotation {
  const _$CancelQuotationImpl(this.quotationId);

  @override
  final String quotationId;

  @override
  String toString() {
    return 'QuotationListEvent.cancelQuotation(quotationId: $quotationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelQuotationImpl &&
            (identical(other.quotationId, quotationId) ||
                other.quotationId == quotationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quotationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelQuotationImplCopyWith<_$CancelQuotationImpl> get copyWith =>
      __$$CancelQuotationImplCopyWithImpl<_$CancelQuotationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<String>? statuses, bool isNextPage)
        loadQuotations,
    required TResult Function(String quotationId) cancelQuotation,
    required TResult Function() refreshCurrentTab,
    required TResult Function(String quotationId) markAsRead,
  }) {
    return cancelQuotation(quotationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<String>? statuses, bool isNextPage)? loadQuotations,
    TResult? Function(String quotationId)? cancelQuotation,
    TResult? Function()? refreshCurrentTab,
    TResult? Function(String quotationId)? markAsRead,
  }) {
    return cancelQuotation?.call(quotationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<String>? statuses, bool isNextPage)? loadQuotations,
    TResult Function(String quotationId)? cancelQuotation,
    TResult Function()? refreshCurrentTab,
    TResult Function(String quotationId)? markAsRead,
    required TResult orElse(),
  }) {
    if (cancelQuotation != null) {
      return cancelQuotation(quotationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadQuotations value) loadQuotations,
    required TResult Function(_CancelQuotation value) cancelQuotation,
    required TResult Function(_RefreshCurrentTab value) refreshCurrentTab,
    required TResult Function(_MarkAsRead value) markAsRead,
  }) {
    return cancelQuotation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadQuotations value)? loadQuotations,
    TResult? Function(_CancelQuotation value)? cancelQuotation,
    TResult? Function(_RefreshCurrentTab value)? refreshCurrentTab,
    TResult? Function(_MarkAsRead value)? markAsRead,
  }) {
    return cancelQuotation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadQuotations value)? loadQuotations,
    TResult Function(_CancelQuotation value)? cancelQuotation,
    TResult Function(_RefreshCurrentTab value)? refreshCurrentTab,
    TResult Function(_MarkAsRead value)? markAsRead,
    required TResult orElse(),
  }) {
    if (cancelQuotation != null) {
      return cancelQuotation(this);
    }
    return orElse();
  }
}

abstract class _CancelQuotation implements QuotationListEvent {
  const factory _CancelQuotation(final String quotationId) =
      _$CancelQuotationImpl;

  String get quotationId;
  @JsonKey(ignore: true)
  _$$CancelQuotationImplCopyWith<_$CancelQuotationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshCurrentTabImplCopyWith<$Res> {
  factory _$$RefreshCurrentTabImplCopyWith(_$RefreshCurrentTabImpl value,
          $Res Function(_$RefreshCurrentTabImpl) then) =
      __$$RefreshCurrentTabImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshCurrentTabImplCopyWithImpl<$Res>
    extends _$QuotationListEventCopyWithImpl<$Res, _$RefreshCurrentTabImpl>
    implements _$$RefreshCurrentTabImplCopyWith<$Res> {
  __$$RefreshCurrentTabImplCopyWithImpl(_$RefreshCurrentTabImpl _value,
      $Res Function(_$RefreshCurrentTabImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshCurrentTabImpl implements _RefreshCurrentTab {
  const _$RefreshCurrentTabImpl();

  @override
  String toString() {
    return 'QuotationListEvent.refreshCurrentTab()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshCurrentTabImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<String>? statuses, bool isNextPage)
        loadQuotations,
    required TResult Function(String quotationId) cancelQuotation,
    required TResult Function() refreshCurrentTab,
    required TResult Function(String quotationId) markAsRead,
  }) {
    return refreshCurrentTab();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<String>? statuses, bool isNextPage)? loadQuotations,
    TResult? Function(String quotationId)? cancelQuotation,
    TResult? Function()? refreshCurrentTab,
    TResult? Function(String quotationId)? markAsRead,
  }) {
    return refreshCurrentTab?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<String>? statuses, bool isNextPage)? loadQuotations,
    TResult Function(String quotationId)? cancelQuotation,
    TResult Function()? refreshCurrentTab,
    TResult Function(String quotationId)? markAsRead,
    required TResult orElse(),
  }) {
    if (refreshCurrentTab != null) {
      return refreshCurrentTab();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadQuotations value) loadQuotations,
    required TResult Function(_CancelQuotation value) cancelQuotation,
    required TResult Function(_RefreshCurrentTab value) refreshCurrentTab,
    required TResult Function(_MarkAsRead value) markAsRead,
  }) {
    return refreshCurrentTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadQuotations value)? loadQuotations,
    TResult? Function(_CancelQuotation value)? cancelQuotation,
    TResult? Function(_RefreshCurrentTab value)? refreshCurrentTab,
    TResult? Function(_MarkAsRead value)? markAsRead,
  }) {
    return refreshCurrentTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadQuotations value)? loadQuotations,
    TResult Function(_CancelQuotation value)? cancelQuotation,
    TResult Function(_RefreshCurrentTab value)? refreshCurrentTab,
    TResult Function(_MarkAsRead value)? markAsRead,
    required TResult orElse(),
  }) {
    if (refreshCurrentTab != null) {
      return refreshCurrentTab(this);
    }
    return orElse();
  }
}

abstract class _RefreshCurrentTab implements QuotationListEvent {
  const factory _RefreshCurrentTab() = _$RefreshCurrentTabImpl;
}

/// @nodoc
abstract class _$$MarkAsReadImplCopyWith<$Res> {
  factory _$$MarkAsReadImplCopyWith(
          _$MarkAsReadImpl value, $Res Function(_$MarkAsReadImpl) then) =
      __$$MarkAsReadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String quotationId});
}

/// @nodoc
class __$$MarkAsReadImplCopyWithImpl<$Res>
    extends _$QuotationListEventCopyWithImpl<$Res, _$MarkAsReadImpl>
    implements _$$MarkAsReadImplCopyWith<$Res> {
  __$$MarkAsReadImplCopyWithImpl(
      _$MarkAsReadImpl _value, $Res Function(_$MarkAsReadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotationId = null,
  }) {
    return _then(_$MarkAsReadImpl(
      null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MarkAsReadImpl implements _MarkAsRead {
  const _$MarkAsReadImpl(this.quotationId);

  @override
  final String quotationId;

  @override
  String toString() {
    return 'QuotationListEvent.markAsRead(quotationId: $quotationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkAsReadImpl &&
            (identical(other.quotationId, quotationId) ||
                other.quotationId == quotationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quotationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkAsReadImplCopyWith<_$MarkAsReadImpl> get copyWith =>
      __$$MarkAsReadImplCopyWithImpl<_$MarkAsReadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(List<String>? statuses, bool isNextPage)
        loadQuotations,
    required TResult Function(String quotationId) cancelQuotation,
    required TResult Function() refreshCurrentTab,
    required TResult Function(String quotationId) markAsRead,
  }) {
    return markAsRead(quotationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(List<String>? statuses, bool isNextPage)? loadQuotations,
    TResult? Function(String quotationId)? cancelQuotation,
    TResult? Function()? refreshCurrentTab,
    TResult? Function(String quotationId)? markAsRead,
  }) {
    return markAsRead?.call(quotationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<String>? statuses, bool isNextPage)? loadQuotations,
    TResult Function(String quotationId)? cancelQuotation,
    TResult Function()? refreshCurrentTab,
    TResult Function(String quotationId)? markAsRead,
    required TResult orElse(),
  }) {
    if (markAsRead != null) {
      return markAsRead(quotationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadQuotations value) loadQuotations,
    required TResult Function(_CancelQuotation value) cancelQuotation,
    required TResult Function(_RefreshCurrentTab value) refreshCurrentTab,
    required TResult Function(_MarkAsRead value) markAsRead,
  }) {
    return markAsRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadQuotations value)? loadQuotations,
    TResult? Function(_CancelQuotation value)? cancelQuotation,
    TResult? Function(_RefreshCurrentTab value)? refreshCurrentTab,
    TResult? Function(_MarkAsRead value)? markAsRead,
  }) {
    return markAsRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadQuotations value)? loadQuotations,
    TResult Function(_CancelQuotation value)? cancelQuotation,
    TResult Function(_RefreshCurrentTab value)? refreshCurrentTab,
    TResult Function(_MarkAsRead value)? markAsRead,
    required TResult orElse(),
  }) {
    if (markAsRead != null) {
      return markAsRead(this);
    }
    return orElse();
  }
}

abstract class _MarkAsRead implements QuotationListEvent {
  const factory _MarkAsRead(final String quotationId) = _$MarkAsReadImpl;

  String get quotationId;
  @JsonKey(ignore: true)
  _$$MarkAsReadImplCopyWith<_$MarkAsReadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuotationListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Quotation> quotations,
            Session session,
            List<String>? statuses,
            bool isLoadingMore,
            String? cancellingQuotationId,
            int currentPage,
            int totalItems)
        loaded,
    required TResult Function(String message) error,
    required TResult Function() cancelSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Quotation> quotations,
            Session session,
            List<String>? statuses,
            bool isLoadingMore,
            String? cancellingQuotationId,
            int currentPage,
            int totalItems)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function()? cancelSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Quotation> quotations,
            Session session,
            List<String>? statuses,
            bool isLoadingMore,
            String? cancellingQuotationId,
            int currentPage,
            int totalItems)?
        loaded,
    TResult Function(String message)? error,
    TResult Function()? cancelSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuotationListInitial value) initial,
    required TResult Function(QuotationListLoading value) loading,
    required TResult Function(QuotationListLoaded value) loaded,
    required TResult Function(QuotationListError value) error,
    required TResult Function(QuotationListCancelSuccess value) cancelSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuotationListInitial value)? initial,
    TResult? Function(QuotationListLoading value)? loading,
    TResult? Function(QuotationListLoaded value)? loaded,
    TResult? Function(QuotationListError value)? error,
    TResult? Function(QuotationListCancelSuccess value)? cancelSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuotationListInitial value)? initial,
    TResult Function(QuotationListLoading value)? loading,
    TResult Function(QuotationListLoaded value)? loaded,
    TResult Function(QuotationListError value)? error,
    TResult Function(QuotationListCancelSuccess value)? cancelSuccess,
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
            List<Quotation> quotations,
            Session session,
            List<String>? statuses,
            bool isLoadingMore,
            String? cancellingQuotationId,
            int currentPage,
            int totalItems)
        loaded,
    required TResult Function(String message) error,
    required TResult Function() cancelSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Quotation> quotations,
            Session session,
            List<String>? statuses,
            bool isLoadingMore,
            String? cancellingQuotationId,
            int currentPage,
            int totalItems)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function()? cancelSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Quotation> quotations,
            Session session,
            List<String>? statuses,
            bool isLoadingMore,
            String? cancellingQuotationId,
            int currentPage,
            int totalItems)?
        loaded,
    TResult Function(String message)? error,
    TResult Function()? cancelSuccess,
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
    required TResult Function(QuotationListCancelSuccess value) cancelSuccess,
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
    TResult? Function(QuotationListCancelSuccess value)? cancelSuccess,
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
    TResult Function(QuotationListCancelSuccess value)? cancelSuccess,
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
            List<Quotation> quotations,
            Session session,
            List<String>? statuses,
            bool isLoadingMore,
            String? cancellingQuotationId,
            int currentPage,
            int totalItems)
        loaded,
    required TResult Function(String message) error,
    required TResult Function() cancelSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Quotation> quotations,
            Session session,
            List<String>? statuses,
            bool isLoadingMore,
            String? cancellingQuotationId,
            int currentPage,
            int totalItems)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function()? cancelSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Quotation> quotations,
            Session session,
            List<String>? statuses,
            bool isLoadingMore,
            String? cancellingQuotationId,
            int currentPage,
            int totalItems)?
        loaded,
    TResult Function(String message)? error,
    TResult Function()? cancelSuccess,
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
    required TResult Function(QuotationListCancelSuccess value) cancelSuccess,
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
    TResult? Function(QuotationListCancelSuccess value)? cancelSuccess,
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
    TResult Function(QuotationListCancelSuccess value)? cancelSuccess,
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
      {List<Quotation> quotations,
      Session session,
      List<String>? statuses,
      bool isLoadingMore,
      String? cancellingQuotationId,
      int currentPage,
      int totalItems});
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
    Object? quotations = null,
    Object? session = null,
    Object? statuses = freezed,
    Object? isLoadingMore = null,
    Object? cancellingQuotationId = freezed,
    Object? currentPage = null,
    Object? totalItems = null,
  }) {
    return _then(_$QuotationListLoadedImpl(
      quotations: null == quotations
          ? _value._quotations
          : quotations // ignore: cast_nullable_to_non_nullable
              as List<Quotation>,
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session,
      statuses: freezed == statuses
          ? _value._statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      cancellingQuotationId: freezed == cancellingQuotationId
          ? _value.cancellingQuotationId
          : cancellingQuotationId // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QuotationListLoadedImpl implements QuotationListLoaded {
  const _$QuotationListLoadedImpl(
      {required final List<Quotation> quotations,
      required this.session,
      final List<String>? statuses,
      this.isLoadingMore = false,
      this.cancellingQuotationId,
      this.currentPage = 1,
      required this.totalItems})
      : _quotations = quotations,
        _statuses = statuses;

  final List<Quotation> _quotations;
  @override
  List<Quotation> get quotations {
    if (_quotations is EqualUnmodifiableListView) return _quotations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quotations);
  }

  @override
  final Session session;
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
  @JsonKey()
  final bool isLoadingMore;
  @override
  final String? cancellingQuotationId;
  @override
  @JsonKey()
  final int currentPage;
// Current page number
  @override
  final int totalItems;

  @override
  String toString() {
    return 'QuotationListState.loaded(quotations: $quotations, session: $session, statuses: $statuses, isLoadingMore: $isLoadingMore, cancellingQuotationId: $cancellingQuotationId, currentPage: $currentPage, totalItems: $totalItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuotationListLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._quotations, _quotations) &&
            (identical(other.session, session) || other.session == session) &&
            const DeepCollectionEquality().equals(other._statuses, _statuses) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.cancellingQuotationId, cancellingQuotationId) ||
                other.cancellingQuotationId == cancellingQuotationId) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_quotations),
      session,
      const DeepCollectionEquality().hash(_statuses),
      isLoadingMore,
      cancellingQuotationId,
      currentPage,
      totalItems);

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
            List<Quotation> quotations,
            Session session,
            List<String>? statuses,
            bool isLoadingMore,
            String? cancellingQuotationId,
            int currentPage,
            int totalItems)
        loaded,
    required TResult Function(String message) error,
    required TResult Function() cancelSuccess,
  }) {
    return loaded(quotations, session, statuses, isLoadingMore,
        cancellingQuotationId, currentPage, totalItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Quotation> quotations,
            Session session,
            List<String>? statuses,
            bool isLoadingMore,
            String? cancellingQuotationId,
            int currentPage,
            int totalItems)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function()? cancelSuccess,
  }) {
    return loaded?.call(quotations, session, statuses, isLoadingMore,
        cancellingQuotationId, currentPage, totalItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Quotation> quotations,
            Session session,
            List<String>? statuses,
            bool isLoadingMore,
            String? cancellingQuotationId,
            int currentPage,
            int totalItems)?
        loaded,
    TResult Function(String message)? error,
    TResult Function()? cancelSuccess,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(quotations, session, statuses, isLoadingMore,
          cancellingQuotationId, currentPage, totalItems);
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
    required TResult Function(QuotationListCancelSuccess value) cancelSuccess,
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
    TResult? Function(QuotationListCancelSuccess value)? cancelSuccess,
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
    TResult Function(QuotationListCancelSuccess value)? cancelSuccess,
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
      {required final List<Quotation> quotations,
      required final Session session,
      final List<String>? statuses,
      final bool isLoadingMore,
      final String? cancellingQuotationId,
      final int currentPage,
      required final int totalItems}) = _$QuotationListLoadedImpl;

  List<Quotation> get quotations;
  Session get session;
  List<String>? get statuses;
  bool get isLoadingMore;
  String? get cancellingQuotationId;
  int get currentPage; // Current page number
  int get totalItems;
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
            List<Quotation> quotations,
            Session session,
            List<String>? statuses,
            bool isLoadingMore,
            String? cancellingQuotationId,
            int currentPage,
            int totalItems)
        loaded,
    required TResult Function(String message) error,
    required TResult Function() cancelSuccess,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Quotation> quotations,
            Session session,
            List<String>? statuses,
            bool isLoadingMore,
            String? cancellingQuotationId,
            int currentPage,
            int totalItems)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function()? cancelSuccess,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Quotation> quotations,
            Session session,
            List<String>? statuses,
            bool isLoadingMore,
            String? cancellingQuotationId,
            int currentPage,
            int totalItems)?
        loaded,
    TResult Function(String message)? error,
    TResult Function()? cancelSuccess,
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
    required TResult Function(QuotationListCancelSuccess value) cancelSuccess,
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
    TResult? Function(QuotationListCancelSuccess value)? cancelSuccess,
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
    TResult Function(QuotationListCancelSuccess value)? cancelSuccess,
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

/// @nodoc
abstract class _$$QuotationListCancelSuccessImplCopyWith<$Res> {
  factory _$$QuotationListCancelSuccessImplCopyWith(
          _$QuotationListCancelSuccessImpl value,
          $Res Function(_$QuotationListCancelSuccessImpl) then) =
      __$$QuotationListCancelSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuotationListCancelSuccessImplCopyWithImpl<$Res>
    extends _$QuotationListStateCopyWithImpl<$Res,
        _$QuotationListCancelSuccessImpl>
    implements _$$QuotationListCancelSuccessImplCopyWith<$Res> {
  __$$QuotationListCancelSuccessImplCopyWithImpl(
      _$QuotationListCancelSuccessImpl _value,
      $Res Function(_$QuotationListCancelSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuotationListCancelSuccessImpl implements QuotationListCancelSuccess {
  const _$QuotationListCancelSuccessImpl();

  @override
  String toString() {
    return 'QuotationListState.cancelSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuotationListCancelSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Quotation> quotations,
            Session session,
            List<String>? statuses,
            bool isLoadingMore,
            String? cancellingQuotationId,
            int currentPage,
            int totalItems)
        loaded,
    required TResult Function(String message) error,
    required TResult Function() cancelSuccess,
  }) {
    return cancelSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Quotation> quotations,
            Session session,
            List<String>? statuses,
            bool isLoadingMore,
            String? cancellingQuotationId,
            int currentPage,
            int totalItems)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function()? cancelSuccess,
  }) {
    return cancelSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Quotation> quotations,
            Session session,
            List<String>? statuses,
            bool isLoadingMore,
            String? cancellingQuotationId,
            int currentPage,
            int totalItems)?
        loaded,
    TResult Function(String message)? error,
    TResult Function()? cancelSuccess,
    required TResult orElse(),
  }) {
    if (cancelSuccess != null) {
      return cancelSuccess();
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
    required TResult Function(QuotationListCancelSuccess value) cancelSuccess,
  }) {
    return cancelSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuotationListInitial value)? initial,
    TResult? Function(QuotationListLoading value)? loading,
    TResult? Function(QuotationListLoaded value)? loaded,
    TResult? Function(QuotationListError value)? error,
    TResult? Function(QuotationListCancelSuccess value)? cancelSuccess,
  }) {
    return cancelSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuotationListInitial value)? initial,
    TResult Function(QuotationListLoading value)? loading,
    TResult Function(QuotationListLoaded value)? loaded,
    TResult Function(QuotationListError value)? error,
    TResult Function(QuotationListCancelSuccess value)? cancelSuccess,
    required TResult orElse(),
  }) {
    if (cancelSuccess != null) {
      return cancelSuccess(this);
    }
    return orElse();
  }
}

abstract class QuotationListCancelSuccess implements QuotationListState {
  const factory QuotationListCancelSuccess() = _$QuotationListCancelSuccessImpl;
}
