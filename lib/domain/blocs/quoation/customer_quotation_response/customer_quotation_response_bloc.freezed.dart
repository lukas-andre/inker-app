// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_quotation_response_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerQuotationResponseEvent {
  String get quotationId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String quotationId) loadQuotation,
    required TResult Function(String quotationId,
            CustomerQuotationAction action, String? additionalDetails)
        submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String quotationId)? loadQuotation,
    TResult? Function(String quotationId, CustomerQuotationAction action,
            String? additionalDetails)?
        submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String quotationId)? loadQuotation,
    TResult Function(String quotationId, CustomerQuotationAction action,
            String? additionalDetails)?
        submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadQuotation value) loadQuotation,
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadQuotation value)? loadQuotation,
    TResult? Function(_Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadQuotation value)? loadQuotation,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerQuotationResponseEventCopyWith<CustomerQuotationResponseEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerQuotationResponseEventCopyWith<$Res> {
  factory $CustomerQuotationResponseEventCopyWith(
          CustomerQuotationResponseEvent value,
          $Res Function(CustomerQuotationResponseEvent) then) =
      _$CustomerQuotationResponseEventCopyWithImpl<$Res,
          CustomerQuotationResponseEvent>;
  @useResult
  $Res call({String quotationId});
}

/// @nodoc
class _$CustomerQuotationResponseEventCopyWithImpl<$Res,
        $Val extends CustomerQuotationResponseEvent>
    implements $CustomerQuotationResponseEventCopyWith<$Res> {
  _$CustomerQuotationResponseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotationId = null,
  }) {
    return _then(_value.copyWith(
      quotationId: null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadQuotationImplCopyWith<$Res>
    implements $CustomerQuotationResponseEventCopyWith<$Res> {
  factory _$$LoadQuotationImplCopyWith(
          _$LoadQuotationImpl value, $Res Function(_$LoadQuotationImpl) then) =
      __$$LoadQuotationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String quotationId});
}

/// @nodoc
class __$$LoadQuotationImplCopyWithImpl<$Res>
    extends _$CustomerQuotationResponseEventCopyWithImpl<$Res,
        _$LoadQuotationImpl> implements _$$LoadQuotationImplCopyWith<$Res> {
  __$$LoadQuotationImplCopyWithImpl(
      _$LoadQuotationImpl _value, $Res Function(_$LoadQuotationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotationId = null,
  }) {
    return _then(_$LoadQuotationImpl(
      null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadQuotationImpl implements _LoadQuotation {
  const _$LoadQuotationImpl(this.quotationId);

  @override
  final String quotationId;

  @override
  String toString() {
    return 'CustomerQuotationResponseEvent.loadQuotation(quotationId: $quotationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadQuotationImpl &&
            (identical(other.quotationId, quotationId) ||
                other.quotationId == quotationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quotationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadQuotationImplCopyWith<_$LoadQuotationImpl> get copyWith =>
      __$$LoadQuotationImplCopyWithImpl<_$LoadQuotationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String quotationId) loadQuotation,
    required TResult Function(String quotationId,
            CustomerQuotationAction action, String? additionalDetails)
        submit,
  }) {
    return loadQuotation(quotationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String quotationId)? loadQuotation,
    TResult? Function(String quotationId, CustomerQuotationAction action,
            String? additionalDetails)?
        submit,
  }) {
    return loadQuotation?.call(quotationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String quotationId)? loadQuotation,
    TResult Function(String quotationId, CustomerQuotationAction action,
            String? additionalDetails)?
        submit,
    required TResult orElse(),
  }) {
    if (loadQuotation != null) {
      return loadQuotation(quotationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadQuotation value) loadQuotation,
    required TResult Function(_Submit value) submit,
  }) {
    return loadQuotation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadQuotation value)? loadQuotation,
    TResult? Function(_Submit value)? submit,
  }) {
    return loadQuotation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadQuotation value)? loadQuotation,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (loadQuotation != null) {
      return loadQuotation(this);
    }
    return orElse();
  }
}

abstract class _LoadQuotation implements CustomerQuotationResponseEvent {
  const factory _LoadQuotation(final String quotationId) = _$LoadQuotationImpl;

  @override
  String get quotationId;
  @override
  @JsonKey(ignore: true)
  _$$LoadQuotationImplCopyWith<_$LoadQuotationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitImplCopyWith<$Res>
    implements $CustomerQuotationResponseEventCopyWith<$Res> {
  factory _$$SubmitImplCopyWith(
          _$SubmitImpl value, $Res Function(_$SubmitImpl) then) =
      __$$SubmitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String quotationId,
      CustomerQuotationAction action,
      String? additionalDetails});
}

/// @nodoc
class __$$SubmitImplCopyWithImpl<$Res>
    extends _$CustomerQuotationResponseEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
      _$SubmitImpl _value, $Res Function(_$SubmitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotationId = null,
    Object? action = null,
    Object? additionalDetails = freezed,
  }) {
    return _then(_$SubmitImpl(
      quotationId: null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as CustomerQuotationAction,
      additionalDetails: freezed == additionalDetails
          ? _value.additionalDetails
          : additionalDetails // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SubmitImpl implements _Submit {
  const _$SubmitImpl(
      {required this.quotationId,
      required this.action,
      this.additionalDetails});

  @override
  final String quotationId;
  @override
  final CustomerQuotationAction action;
  @override
  final String? additionalDetails;

  @override
  String toString() {
    return 'CustomerQuotationResponseEvent.submit(quotationId: $quotationId, action: $action, additionalDetails: $additionalDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitImpl &&
            (identical(other.quotationId, quotationId) ||
                other.quotationId == quotationId) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.additionalDetails, additionalDetails) ||
                other.additionalDetails == additionalDetails));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, quotationId, action, additionalDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitImplCopyWith<_$SubmitImpl> get copyWith =>
      __$$SubmitImplCopyWithImpl<_$SubmitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String quotationId) loadQuotation,
    required TResult Function(String quotationId,
            CustomerQuotationAction action, String? additionalDetails)
        submit,
  }) {
    return submit(quotationId, action, additionalDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String quotationId)? loadQuotation,
    TResult? Function(String quotationId, CustomerQuotationAction action,
            String? additionalDetails)?
        submit,
  }) {
    return submit?.call(quotationId, action, additionalDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String quotationId)? loadQuotation,
    TResult Function(String quotationId, CustomerQuotationAction action,
            String? additionalDetails)?
        submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(quotationId, action, additionalDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadQuotation value) loadQuotation,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadQuotation value)? loadQuotation,
    TResult? Function(_Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadQuotation value)? loadQuotation,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements CustomerQuotationResponseEvent {
  const factory _Submit(
      {required final String quotationId,
      required final CustomerQuotationAction action,
      final String? additionalDetails}) = _$SubmitImpl;

  @override
  String get quotationId;
  CustomerQuotationAction get action;
  String? get additionalDetails;
  @override
  @JsonKey(ignore: true)
  _$$SubmitImplCopyWith<_$SubmitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomerQuotationResponseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingQuotation,
    required TResult Function(Quotation quotation) quotationLoaded,
    required TResult Function() submittingResponse,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingQuotation,
    TResult? Function(Quotation quotation)? quotationLoaded,
    TResult? Function()? submittingResponse,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingQuotation,
    TResult Function(Quotation quotation)? quotationLoaded,
    TResult Function()? submittingResponse,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingQuotation value) loadingQuotation,
    required TResult Function(_QuotationLoaded value) quotationLoaded,
    required TResult Function(_SubmittingResponse value) submittingResponse,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingQuotation value)? loadingQuotation,
    TResult? Function(_QuotationLoaded value)? quotationLoaded,
    TResult? Function(_SubmittingResponse value)? submittingResponse,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingQuotation value)? loadingQuotation,
    TResult Function(_QuotationLoaded value)? quotationLoaded,
    TResult Function(_SubmittingResponse value)? submittingResponse,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerQuotationResponseStateCopyWith<$Res> {
  factory $CustomerQuotationResponseStateCopyWith(
          CustomerQuotationResponseState value,
          $Res Function(CustomerQuotationResponseState) then) =
      _$CustomerQuotationResponseStateCopyWithImpl<$Res,
          CustomerQuotationResponseState>;
}

/// @nodoc
class _$CustomerQuotationResponseStateCopyWithImpl<$Res,
        $Val extends CustomerQuotationResponseState>
    implements $CustomerQuotationResponseStateCopyWith<$Res> {
  _$CustomerQuotationResponseStateCopyWithImpl(this._value, this._then);

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
    extends _$CustomerQuotationResponseStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CustomerQuotationResponseState.initial()';
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
    required TResult Function() loadingQuotation,
    required TResult Function(Quotation quotation) quotationLoaded,
    required TResult Function() submittingResponse,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingQuotation,
    TResult? Function(Quotation quotation)? quotationLoaded,
    TResult? Function()? submittingResponse,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingQuotation,
    TResult Function(Quotation quotation)? quotationLoaded,
    TResult Function()? submittingResponse,
    TResult Function()? success,
    TResult Function(String error)? failure,
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
    required TResult Function(_LoadingQuotation value) loadingQuotation,
    required TResult Function(_QuotationLoaded value) quotationLoaded,
    required TResult Function(_SubmittingResponse value) submittingResponse,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingQuotation value)? loadingQuotation,
    TResult? Function(_QuotationLoaded value)? quotationLoaded,
    TResult? Function(_SubmittingResponse value)? submittingResponse,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingQuotation value)? loadingQuotation,
    TResult Function(_QuotationLoaded value)? quotationLoaded,
    TResult Function(_SubmittingResponse value)? submittingResponse,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CustomerQuotationResponseState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingQuotationImplCopyWith<$Res> {
  factory _$$LoadingQuotationImplCopyWith(_$LoadingQuotationImpl value,
          $Res Function(_$LoadingQuotationImpl) then) =
      __$$LoadingQuotationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingQuotationImplCopyWithImpl<$Res>
    extends _$CustomerQuotationResponseStateCopyWithImpl<$Res,
        _$LoadingQuotationImpl>
    implements _$$LoadingQuotationImplCopyWith<$Res> {
  __$$LoadingQuotationImplCopyWithImpl(_$LoadingQuotationImpl _value,
      $Res Function(_$LoadingQuotationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingQuotationImpl implements _LoadingQuotation {
  const _$LoadingQuotationImpl();

  @override
  String toString() {
    return 'CustomerQuotationResponseState.loadingQuotation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingQuotationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingQuotation,
    required TResult Function(Quotation quotation) quotationLoaded,
    required TResult Function() submittingResponse,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return loadingQuotation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingQuotation,
    TResult? Function(Quotation quotation)? quotationLoaded,
    TResult? Function()? submittingResponse,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) {
    return loadingQuotation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingQuotation,
    TResult Function(Quotation quotation)? quotationLoaded,
    TResult Function()? submittingResponse,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loadingQuotation != null) {
      return loadingQuotation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingQuotation value) loadingQuotation,
    required TResult Function(_QuotationLoaded value) quotationLoaded,
    required TResult Function(_SubmittingResponse value) submittingResponse,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loadingQuotation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingQuotation value)? loadingQuotation,
    TResult? Function(_QuotationLoaded value)? quotationLoaded,
    TResult? Function(_SubmittingResponse value)? submittingResponse,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loadingQuotation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingQuotation value)? loadingQuotation,
    TResult Function(_QuotationLoaded value)? quotationLoaded,
    TResult Function(_SubmittingResponse value)? submittingResponse,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loadingQuotation != null) {
      return loadingQuotation(this);
    }
    return orElse();
  }
}

abstract class _LoadingQuotation implements CustomerQuotationResponseState {
  const factory _LoadingQuotation() = _$LoadingQuotationImpl;
}

/// @nodoc
abstract class _$$QuotationLoadedImplCopyWith<$Res> {
  factory _$$QuotationLoadedImplCopyWith(_$QuotationLoadedImpl value,
          $Res Function(_$QuotationLoadedImpl) then) =
      __$$QuotationLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Quotation quotation});

  $QuotationCopyWith<$Res> get quotation;
}

/// @nodoc
class __$$QuotationLoadedImplCopyWithImpl<$Res>
    extends _$CustomerQuotationResponseStateCopyWithImpl<$Res,
        _$QuotationLoadedImpl> implements _$$QuotationLoadedImplCopyWith<$Res> {
  __$$QuotationLoadedImplCopyWithImpl(
      _$QuotationLoadedImpl _value, $Res Function(_$QuotationLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotation = null,
  }) {
    return _then(_$QuotationLoadedImpl(
      null == quotation
          ? _value.quotation
          : quotation // ignore: cast_nullable_to_non_nullable
              as Quotation,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QuotationCopyWith<$Res> get quotation {
    return $QuotationCopyWith<$Res>(_value.quotation, (value) {
      return _then(_value.copyWith(quotation: value));
    });
  }
}

/// @nodoc

class _$QuotationLoadedImpl implements _QuotationLoaded {
  const _$QuotationLoadedImpl(this.quotation);

  @override
  final Quotation quotation;

  @override
  String toString() {
    return 'CustomerQuotationResponseState.quotationLoaded(quotation: $quotation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuotationLoadedImpl &&
            (identical(other.quotation, quotation) ||
                other.quotation == quotation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quotation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuotationLoadedImplCopyWith<_$QuotationLoadedImpl> get copyWith =>
      __$$QuotationLoadedImplCopyWithImpl<_$QuotationLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingQuotation,
    required TResult Function(Quotation quotation) quotationLoaded,
    required TResult Function() submittingResponse,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return quotationLoaded(quotation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingQuotation,
    TResult? Function(Quotation quotation)? quotationLoaded,
    TResult? Function()? submittingResponse,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) {
    return quotationLoaded?.call(quotation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingQuotation,
    TResult Function(Quotation quotation)? quotationLoaded,
    TResult Function()? submittingResponse,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (quotationLoaded != null) {
      return quotationLoaded(quotation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingQuotation value) loadingQuotation,
    required TResult Function(_QuotationLoaded value) quotationLoaded,
    required TResult Function(_SubmittingResponse value) submittingResponse,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return quotationLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingQuotation value)? loadingQuotation,
    TResult? Function(_QuotationLoaded value)? quotationLoaded,
    TResult? Function(_SubmittingResponse value)? submittingResponse,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return quotationLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingQuotation value)? loadingQuotation,
    TResult Function(_QuotationLoaded value)? quotationLoaded,
    TResult Function(_SubmittingResponse value)? submittingResponse,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (quotationLoaded != null) {
      return quotationLoaded(this);
    }
    return orElse();
  }
}

abstract class _QuotationLoaded implements CustomerQuotationResponseState {
  const factory _QuotationLoaded(final Quotation quotation) =
      _$QuotationLoadedImpl;

  Quotation get quotation;
  @JsonKey(ignore: true)
  _$$QuotationLoadedImplCopyWith<_$QuotationLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmittingResponseImplCopyWith<$Res> {
  factory _$$SubmittingResponseImplCopyWith(_$SubmittingResponseImpl value,
          $Res Function(_$SubmittingResponseImpl) then) =
      __$$SubmittingResponseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmittingResponseImplCopyWithImpl<$Res>
    extends _$CustomerQuotationResponseStateCopyWithImpl<$Res,
        _$SubmittingResponseImpl>
    implements _$$SubmittingResponseImplCopyWith<$Res> {
  __$$SubmittingResponseImplCopyWithImpl(_$SubmittingResponseImpl _value,
      $Res Function(_$SubmittingResponseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmittingResponseImpl implements _SubmittingResponse {
  const _$SubmittingResponseImpl();

  @override
  String toString() {
    return 'CustomerQuotationResponseState.submittingResponse()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmittingResponseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingQuotation,
    required TResult Function(Quotation quotation) quotationLoaded,
    required TResult Function() submittingResponse,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return submittingResponse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingQuotation,
    TResult? Function(Quotation quotation)? quotationLoaded,
    TResult? Function()? submittingResponse,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) {
    return submittingResponse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingQuotation,
    TResult Function(Quotation quotation)? quotationLoaded,
    TResult Function()? submittingResponse,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (submittingResponse != null) {
      return submittingResponse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingQuotation value) loadingQuotation,
    required TResult Function(_QuotationLoaded value) quotationLoaded,
    required TResult Function(_SubmittingResponse value) submittingResponse,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return submittingResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingQuotation value)? loadingQuotation,
    TResult? Function(_QuotationLoaded value)? quotationLoaded,
    TResult? Function(_SubmittingResponse value)? submittingResponse,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return submittingResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingQuotation value)? loadingQuotation,
    TResult Function(_QuotationLoaded value)? quotationLoaded,
    TResult Function(_SubmittingResponse value)? submittingResponse,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (submittingResponse != null) {
      return submittingResponse(this);
    }
    return orElse();
  }
}

abstract class _SubmittingResponse implements CustomerQuotationResponseState {
  const factory _SubmittingResponse() = _$SubmittingResponseImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CustomerQuotationResponseStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'CustomerQuotationResponseState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingQuotation,
    required TResult Function(Quotation quotation) quotationLoaded,
    required TResult Function() submittingResponse,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingQuotation,
    TResult? Function(Quotation quotation)? quotationLoaded,
    TResult? Function()? submittingResponse,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingQuotation,
    TResult Function(Quotation quotation)? quotationLoaded,
    TResult Function()? submittingResponse,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingQuotation value) loadingQuotation,
    required TResult Function(_QuotationLoaded value) quotationLoaded,
    required TResult Function(_SubmittingResponse value) submittingResponse,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingQuotation value)? loadingQuotation,
    TResult? Function(_QuotationLoaded value)? quotationLoaded,
    TResult? Function(_SubmittingResponse value)? submittingResponse,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingQuotation value)? loadingQuotation,
    TResult Function(_QuotationLoaded value)? quotationLoaded,
    TResult Function(_SubmittingResponse value)? submittingResponse,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CustomerQuotationResponseState {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$CustomerQuotationResponseStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CustomerQuotationResponseState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingQuotation,
    required TResult Function(Quotation quotation) quotationLoaded,
    required TResult Function() submittingResponse,
    required TResult Function() success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingQuotation,
    TResult? Function(Quotation quotation)? quotationLoaded,
    TResult? Function()? submittingResponse,
    TResult? Function()? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingQuotation,
    TResult Function(Quotation quotation)? quotationLoaded,
    TResult Function()? submittingResponse,
    TResult Function()? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingQuotation value) loadingQuotation,
    required TResult Function(_QuotationLoaded value) quotationLoaded,
    required TResult Function(_SubmittingResponse value) submittingResponse,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingQuotation value)? loadingQuotation,
    TResult? Function(_QuotationLoaded value)? quotationLoaded,
    TResult? Function(_SubmittingResponse value)? submittingResponse,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingQuotation value)? loadingQuotation,
    TResult Function(_QuotationLoaded value)? quotationLoaded,
    TResult Function(_SubmittingResponse value)? submittingResponse,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements CustomerQuotationResponseState {
  const factory _Failure(final String error) = _$FailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
