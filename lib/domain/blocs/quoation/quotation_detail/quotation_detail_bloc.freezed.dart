// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quotation_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuotationDetailEvent {
  String get quotationId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String quotationId) fetchQuotationById,
    required TResult Function(String quotationId) refresh,
    required TResult Function(String quotationId) markAsRead,
    required TResult Function(String quotationId, String offerId) acceptOffer,
    required TResult Function(String quotationId) cancelQuotation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String quotationId)? fetchQuotationById,
    TResult? Function(String quotationId)? refresh,
    TResult? Function(String quotationId)? markAsRead,
    TResult? Function(String quotationId, String offerId)? acceptOffer,
    TResult? Function(String quotationId)? cancelQuotation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String quotationId)? fetchQuotationById,
    TResult Function(String quotationId)? refresh,
    TResult Function(String quotationId)? markAsRead,
    TResult Function(String quotationId, String offerId)? acceptOffer,
    TResult Function(String quotationId)? cancelQuotation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchQuotationById value) fetchQuotationById,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_AcceptOffer value) acceptOffer,
    required TResult Function(_CancelQuotation value) cancelQuotation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchQuotationById value)? fetchQuotationById,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_AcceptOffer value)? acceptOffer,
    TResult? Function(_CancelQuotation value)? cancelQuotation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchQuotationById value)? fetchQuotationById,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_AcceptOffer value)? acceptOffer,
    TResult Function(_CancelQuotation value)? cancelQuotation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuotationDetailEventCopyWith<QuotationDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotationDetailEventCopyWith<$Res> {
  factory $QuotationDetailEventCopyWith(QuotationDetailEvent value,
          $Res Function(QuotationDetailEvent) then) =
      _$QuotationDetailEventCopyWithImpl<$Res, QuotationDetailEvent>;
  @useResult
  $Res call({String quotationId});
}

/// @nodoc
class _$QuotationDetailEventCopyWithImpl<$Res,
        $Val extends QuotationDetailEvent>
    implements $QuotationDetailEventCopyWith<$Res> {
  _$QuotationDetailEventCopyWithImpl(this._value, this._then);

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
abstract class _$$FetchQuotationByIdImplCopyWith<$Res>
    implements $QuotationDetailEventCopyWith<$Res> {
  factory _$$FetchQuotationByIdImplCopyWith(_$FetchQuotationByIdImpl value,
          $Res Function(_$FetchQuotationByIdImpl) then) =
      __$$FetchQuotationByIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String quotationId});
}

/// @nodoc
class __$$FetchQuotationByIdImplCopyWithImpl<$Res>
    extends _$QuotationDetailEventCopyWithImpl<$Res, _$FetchQuotationByIdImpl>
    implements _$$FetchQuotationByIdImplCopyWith<$Res> {
  __$$FetchQuotationByIdImplCopyWithImpl(_$FetchQuotationByIdImpl _value,
      $Res Function(_$FetchQuotationByIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotationId = null,
  }) {
    return _then(_$FetchQuotationByIdImpl(
      null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchQuotationByIdImpl implements _FetchQuotationById {
  const _$FetchQuotationByIdImpl(this.quotationId);

  @override
  final String quotationId;

  @override
  String toString() {
    return 'QuotationDetailEvent.fetchQuotationById(quotationId: $quotationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchQuotationByIdImpl &&
            (identical(other.quotationId, quotationId) ||
                other.quotationId == quotationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quotationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchQuotationByIdImplCopyWith<_$FetchQuotationByIdImpl> get copyWith =>
      __$$FetchQuotationByIdImplCopyWithImpl<_$FetchQuotationByIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String quotationId) fetchQuotationById,
    required TResult Function(String quotationId) refresh,
    required TResult Function(String quotationId) markAsRead,
    required TResult Function(String quotationId, String offerId) acceptOffer,
    required TResult Function(String quotationId) cancelQuotation,
  }) {
    return fetchQuotationById(quotationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String quotationId)? fetchQuotationById,
    TResult? Function(String quotationId)? refresh,
    TResult? Function(String quotationId)? markAsRead,
    TResult? Function(String quotationId, String offerId)? acceptOffer,
    TResult? Function(String quotationId)? cancelQuotation,
  }) {
    return fetchQuotationById?.call(quotationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String quotationId)? fetchQuotationById,
    TResult Function(String quotationId)? refresh,
    TResult Function(String quotationId)? markAsRead,
    TResult Function(String quotationId, String offerId)? acceptOffer,
    TResult Function(String quotationId)? cancelQuotation,
    required TResult orElse(),
  }) {
    if (fetchQuotationById != null) {
      return fetchQuotationById(quotationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchQuotationById value) fetchQuotationById,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_AcceptOffer value) acceptOffer,
    required TResult Function(_CancelQuotation value) cancelQuotation,
  }) {
    return fetchQuotationById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchQuotationById value)? fetchQuotationById,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_AcceptOffer value)? acceptOffer,
    TResult? Function(_CancelQuotation value)? cancelQuotation,
  }) {
    return fetchQuotationById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchQuotationById value)? fetchQuotationById,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_AcceptOffer value)? acceptOffer,
    TResult Function(_CancelQuotation value)? cancelQuotation,
    required TResult orElse(),
  }) {
    if (fetchQuotationById != null) {
      return fetchQuotationById(this);
    }
    return orElse();
  }
}

abstract class _FetchQuotationById implements QuotationDetailEvent {
  const factory _FetchQuotationById(final String quotationId) =
      _$FetchQuotationByIdImpl;

  @override
  String get quotationId;
  @override
  @JsonKey(ignore: true)
  _$$FetchQuotationByIdImplCopyWith<_$FetchQuotationByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshImplCopyWith<$Res>
    implements $QuotationDetailEventCopyWith<$Res> {
  factory _$$RefreshImplCopyWith(
          _$RefreshImpl value, $Res Function(_$RefreshImpl) then) =
      __$$RefreshImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String quotationId});
}

/// @nodoc
class __$$RefreshImplCopyWithImpl<$Res>
    extends _$QuotationDetailEventCopyWithImpl<$Res, _$RefreshImpl>
    implements _$$RefreshImplCopyWith<$Res> {
  __$$RefreshImplCopyWithImpl(
      _$RefreshImpl _value, $Res Function(_$RefreshImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotationId = null,
  }) {
    return _then(_$RefreshImpl(
      null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RefreshImpl implements _Refresh {
  const _$RefreshImpl(this.quotationId);

  @override
  final String quotationId;

  @override
  String toString() {
    return 'QuotationDetailEvent.refresh(quotationId: $quotationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshImpl &&
            (identical(other.quotationId, quotationId) ||
                other.quotationId == quotationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quotationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshImplCopyWith<_$RefreshImpl> get copyWith =>
      __$$RefreshImplCopyWithImpl<_$RefreshImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String quotationId) fetchQuotationById,
    required TResult Function(String quotationId) refresh,
    required TResult Function(String quotationId) markAsRead,
    required TResult Function(String quotationId, String offerId) acceptOffer,
    required TResult Function(String quotationId) cancelQuotation,
  }) {
    return refresh(quotationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String quotationId)? fetchQuotationById,
    TResult? Function(String quotationId)? refresh,
    TResult? Function(String quotationId)? markAsRead,
    TResult? Function(String quotationId, String offerId)? acceptOffer,
    TResult? Function(String quotationId)? cancelQuotation,
  }) {
    return refresh?.call(quotationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String quotationId)? fetchQuotationById,
    TResult Function(String quotationId)? refresh,
    TResult Function(String quotationId)? markAsRead,
    TResult Function(String quotationId, String offerId)? acceptOffer,
    TResult Function(String quotationId)? cancelQuotation,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(quotationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchQuotationById value) fetchQuotationById,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_AcceptOffer value) acceptOffer,
    required TResult Function(_CancelQuotation value) cancelQuotation,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchQuotationById value)? fetchQuotationById,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_AcceptOffer value)? acceptOffer,
    TResult? Function(_CancelQuotation value)? cancelQuotation,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchQuotationById value)? fetchQuotationById,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_AcceptOffer value)? acceptOffer,
    TResult Function(_CancelQuotation value)? cancelQuotation,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements QuotationDetailEvent {
  const factory _Refresh(final String quotationId) = _$RefreshImpl;

  @override
  String get quotationId;
  @override
  @JsonKey(ignore: true)
  _$$RefreshImplCopyWith<_$RefreshImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkAsReadImplCopyWith<$Res>
    implements $QuotationDetailEventCopyWith<$Res> {
  factory _$$MarkAsReadImplCopyWith(
          _$MarkAsReadImpl value, $Res Function(_$MarkAsReadImpl) then) =
      __$$MarkAsReadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String quotationId});
}

/// @nodoc
class __$$MarkAsReadImplCopyWithImpl<$Res>
    extends _$QuotationDetailEventCopyWithImpl<$Res, _$MarkAsReadImpl>
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
    return 'QuotationDetailEvent.markAsRead(quotationId: $quotationId)';
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
    required TResult Function(String quotationId) fetchQuotationById,
    required TResult Function(String quotationId) refresh,
    required TResult Function(String quotationId) markAsRead,
    required TResult Function(String quotationId, String offerId) acceptOffer,
    required TResult Function(String quotationId) cancelQuotation,
  }) {
    return markAsRead(quotationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String quotationId)? fetchQuotationById,
    TResult? Function(String quotationId)? refresh,
    TResult? Function(String quotationId)? markAsRead,
    TResult? Function(String quotationId, String offerId)? acceptOffer,
    TResult? Function(String quotationId)? cancelQuotation,
  }) {
    return markAsRead?.call(quotationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String quotationId)? fetchQuotationById,
    TResult Function(String quotationId)? refresh,
    TResult Function(String quotationId)? markAsRead,
    TResult Function(String quotationId, String offerId)? acceptOffer,
    TResult Function(String quotationId)? cancelQuotation,
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
    required TResult Function(_FetchQuotationById value) fetchQuotationById,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_AcceptOffer value) acceptOffer,
    required TResult Function(_CancelQuotation value) cancelQuotation,
  }) {
    return markAsRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchQuotationById value)? fetchQuotationById,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_AcceptOffer value)? acceptOffer,
    TResult? Function(_CancelQuotation value)? cancelQuotation,
  }) {
    return markAsRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchQuotationById value)? fetchQuotationById,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_AcceptOffer value)? acceptOffer,
    TResult Function(_CancelQuotation value)? cancelQuotation,
    required TResult orElse(),
  }) {
    if (markAsRead != null) {
      return markAsRead(this);
    }
    return orElse();
  }
}

abstract class _MarkAsRead implements QuotationDetailEvent {
  const factory _MarkAsRead(final String quotationId) = _$MarkAsReadImpl;

  @override
  String get quotationId;
  @override
  @JsonKey(ignore: true)
  _$$MarkAsReadImplCopyWith<_$MarkAsReadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AcceptOfferImplCopyWith<$Res>
    implements $QuotationDetailEventCopyWith<$Res> {
  factory _$$AcceptOfferImplCopyWith(
          _$AcceptOfferImpl value, $Res Function(_$AcceptOfferImpl) then) =
      __$$AcceptOfferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String quotationId, String offerId});
}

/// @nodoc
class __$$AcceptOfferImplCopyWithImpl<$Res>
    extends _$QuotationDetailEventCopyWithImpl<$Res, _$AcceptOfferImpl>
    implements _$$AcceptOfferImplCopyWith<$Res> {
  __$$AcceptOfferImplCopyWithImpl(
      _$AcceptOfferImpl _value, $Res Function(_$AcceptOfferImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotationId = null,
    Object? offerId = null,
  }) {
    return _then(_$AcceptOfferImpl(
      quotationId: null == quotationId
          ? _value.quotationId
          : quotationId // ignore: cast_nullable_to_non_nullable
              as String,
      offerId: null == offerId
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AcceptOfferImpl implements _AcceptOffer {
  const _$AcceptOfferImpl({required this.quotationId, required this.offerId});

  @override
  final String quotationId;
  @override
  final String offerId;

  @override
  String toString() {
    return 'QuotationDetailEvent.acceptOffer(quotationId: $quotationId, offerId: $offerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptOfferImpl &&
            (identical(other.quotationId, quotationId) ||
                other.quotationId == quotationId) &&
            (identical(other.offerId, offerId) || other.offerId == offerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quotationId, offerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptOfferImplCopyWith<_$AcceptOfferImpl> get copyWith =>
      __$$AcceptOfferImplCopyWithImpl<_$AcceptOfferImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String quotationId) fetchQuotationById,
    required TResult Function(String quotationId) refresh,
    required TResult Function(String quotationId) markAsRead,
    required TResult Function(String quotationId, String offerId) acceptOffer,
    required TResult Function(String quotationId) cancelQuotation,
  }) {
    return acceptOffer(quotationId, offerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String quotationId)? fetchQuotationById,
    TResult? Function(String quotationId)? refresh,
    TResult? Function(String quotationId)? markAsRead,
    TResult? Function(String quotationId, String offerId)? acceptOffer,
    TResult? Function(String quotationId)? cancelQuotation,
  }) {
    return acceptOffer?.call(quotationId, offerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String quotationId)? fetchQuotationById,
    TResult Function(String quotationId)? refresh,
    TResult Function(String quotationId)? markAsRead,
    TResult Function(String quotationId, String offerId)? acceptOffer,
    TResult Function(String quotationId)? cancelQuotation,
    required TResult orElse(),
  }) {
    if (acceptOffer != null) {
      return acceptOffer(quotationId, offerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchQuotationById value) fetchQuotationById,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_AcceptOffer value) acceptOffer,
    required TResult Function(_CancelQuotation value) cancelQuotation,
  }) {
    return acceptOffer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchQuotationById value)? fetchQuotationById,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_AcceptOffer value)? acceptOffer,
    TResult? Function(_CancelQuotation value)? cancelQuotation,
  }) {
    return acceptOffer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchQuotationById value)? fetchQuotationById,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_AcceptOffer value)? acceptOffer,
    TResult Function(_CancelQuotation value)? cancelQuotation,
    required TResult orElse(),
  }) {
    if (acceptOffer != null) {
      return acceptOffer(this);
    }
    return orElse();
  }
}

abstract class _AcceptOffer implements QuotationDetailEvent {
  const factory _AcceptOffer(
      {required final String quotationId,
      required final String offerId}) = _$AcceptOfferImpl;

  @override
  String get quotationId;
  String get offerId;
  @override
  @JsonKey(ignore: true)
  _$$AcceptOfferImplCopyWith<_$AcceptOfferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelQuotationImplCopyWith<$Res>
    implements $QuotationDetailEventCopyWith<$Res> {
  factory _$$CancelQuotationImplCopyWith(_$CancelQuotationImpl value,
          $Res Function(_$CancelQuotationImpl) then) =
      __$$CancelQuotationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String quotationId});
}

/// @nodoc
class __$$CancelQuotationImplCopyWithImpl<$Res>
    extends _$QuotationDetailEventCopyWithImpl<$Res, _$CancelQuotationImpl>
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
    return 'QuotationDetailEvent.cancelQuotation(quotationId: $quotationId)';
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
    required TResult Function(String quotationId) fetchQuotationById,
    required TResult Function(String quotationId) refresh,
    required TResult Function(String quotationId) markAsRead,
    required TResult Function(String quotationId, String offerId) acceptOffer,
    required TResult Function(String quotationId) cancelQuotation,
  }) {
    return cancelQuotation(quotationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String quotationId)? fetchQuotationById,
    TResult? Function(String quotationId)? refresh,
    TResult? Function(String quotationId)? markAsRead,
    TResult? Function(String quotationId, String offerId)? acceptOffer,
    TResult? Function(String quotationId)? cancelQuotation,
  }) {
    return cancelQuotation?.call(quotationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String quotationId)? fetchQuotationById,
    TResult Function(String quotationId)? refresh,
    TResult Function(String quotationId)? markAsRead,
    TResult Function(String quotationId, String offerId)? acceptOffer,
    TResult Function(String quotationId)? cancelQuotation,
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
    required TResult Function(_FetchQuotationById value) fetchQuotationById,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_AcceptOffer value) acceptOffer,
    required TResult Function(_CancelQuotation value) cancelQuotation,
  }) {
    return cancelQuotation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchQuotationById value)? fetchQuotationById,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_AcceptOffer value)? acceptOffer,
    TResult? Function(_CancelQuotation value)? cancelQuotation,
  }) {
    return cancelQuotation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchQuotationById value)? fetchQuotationById,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_AcceptOffer value)? acceptOffer,
    TResult Function(_CancelQuotation value)? cancelQuotation,
    required TResult orElse(),
  }) {
    if (cancelQuotation != null) {
      return cancelQuotation(this);
    }
    return orElse();
  }
}

abstract class _CancelQuotation implements QuotationDetailEvent {
  const factory _CancelQuotation(final String quotationId) =
      _$CancelQuotationImpl;

  @override
  String get quotationId;
  @override
  @JsonKey(ignore: true)
  _$$CancelQuotationImplCopyWith<_$CancelQuotationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuotationDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Quotation quotation) loaded,
    required TResult Function(Quotation quotation) refreshing,
    required TResult Function() offerAccepting,
    required TResult Function(Quotation quotation) offerAccepted,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Quotation quotation)? loaded,
    TResult? Function(Quotation quotation)? refreshing,
    TResult? Function()? offerAccepting,
    TResult? Function(Quotation quotation)? offerAccepted,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Quotation quotation)? loaded,
    TResult Function(Quotation quotation)? refreshing,
    TResult Function()? offerAccepting,
    TResult Function(Quotation quotation)? offerAccepted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Refreshing value) refreshing,
    required TResult Function(_OfferAccepting value) offerAccepting,
    required TResult Function(_OfferAccepted value) offerAccepted,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Refreshing value)? refreshing,
    TResult? Function(_OfferAccepting value)? offerAccepting,
    TResult? Function(_OfferAccepted value)? offerAccepted,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Refreshing value)? refreshing,
    TResult Function(_OfferAccepting value)? offerAccepting,
    TResult Function(_OfferAccepted value)? offerAccepted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotationDetailStateCopyWith<$Res> {
  factory $QuotationDetailStateCopyWith(QuotationDetailState value,
          $Res Function(QuotationDetailState) then) =
      _$QuotationDetailStateCopyWithImpl<$Res, QuotationDetailState>;
}

/// @nodoc
class _$QuotationDetailStateCopyWithImpl<$Res,
        $Val extends QuotationDetailState>
    implements $QuotationDetailStateCopyWith<$Res> {
  _$QuotationDetailStateCopyWithImpl(this._value, this._then);

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
    extends _$QuotationDetailStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'QuotationDetailState.initial()';
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
    required TResult Function(Quotation quotation) loaded,
    required TResult Function(Quotation quotation) refreshing,
    required TResult Function() offerAccepting,
    required TResult Function(Quotation quotation) offerAccepted,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Quotation quotation)? loaded,
    TResult? Function(Quotation quotation)? refreshing,
    TResult? Function()? offerAccepting,
    TResult? Function(Quotation quotation)? offerAccepted,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Quotation quotation)? loaded,
    TResult Function(Quotation quotation)? refreshing,
    TResult Function()? offerAccepting,
    TResult Function(Quotation quotation)? offerAccepted,
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
    required TResult Function(_Refreshing value) refreshing,
    required TResult Function(_OfferAccepting value) offerAccepting,
    required TResult Function(_OfferAccepted value) offerAccepted,
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
    TResult? Function(_Refreshing value)? refreshing,
    TResult? Function(_OfferAccepting value)? offerAccepting,
    TResult? Function(_OfferAccepted value)? offerAccepted,
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
    TResult Function(_Refreshing value)? refreshing,
    TResult Function(_OfferAccepting value)? offerAccepting,
    TResult Function(_OfferAccepted value)? offerAccepted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QuotationDetailState {
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
    extends _$QuotationDetailStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'QuotationDetailState.loading()';
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
    required TResult Function(Quotation quotation) loaded,
    required TResult Function(Quotation quotation) refreshing,
    required TResult Function() offerAccepting,
    required TResult Function(Quotation quotation) offerAccepted,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Quotation quotation)? loaded,
    TResult? Function(Quotation quotation)? refreshing,
    TResult? Function()? offerAccepting,
    TResult? Function(Quotation quotation)? offerAccepted,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Quotation quotation)? loaded,
    TResult Function(Quotation quotation)? refreshing,
    TResult Function()? offerAccepting,
    TResult Function(Quotation quotation)? offerAccepted,
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
    required TResult Function(_Refreshing value) refreshing,
    required TResult Function(_OfferAccepting value) offerAccepting,
    required TResult Function(_OfferAccepted value) offerAccepted,
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
    TResult? Function(_Refreshing value)? refreshing,
    TResult? Function(_OfferAccepting value)? offerAccepting,
    TResult? Function(_OfferAccepted value)? offerAccepted,
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
    TResult Function(_Refreshing value)? refreshing,
    TResult Function(_OfferAccepting value)? offerAccepting,
    TResult Function(_OfferAccepted value)? offerAccepted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements QuotationDetailState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Quotation quotation});

  $QuotationCopyWith<$Res> get quotation;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$QuotationDetailStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotation = null,
  }) {
    return _then(_$LoadedImpl(
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

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(this.quotation);

  @override
  final Quotation quotation;

  @override
  String toString() {
    return 'QuotationDetailState.loaded(quotation: $quotation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.quotation, quotation) ||
                other.quotation == quotation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quotation);

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
    required TResult Function(Quotation quotation) loaded,
    required TResult Function(Quotation quotation) refreshing,
    required TResult Function() offerAccepting,
    required TResult Function(Quotation quotation) offerAccepted,
    required TResult Function(String message) error,
  }) {
    return loaded(quotation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Quotation quotation)? loaded,
    TResult? Function(Quotation quotation)? refreshing,
    TResult? Function()? offerAccepting,
    TResult? Function(Quotation quotation)? offerAccepted,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(quotation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Quotation quotation)? loaded,
    TResult Function(Quotation quotation)? refreshing,
    TResult Function()? offerAccepting,
    TResult Function(Quotation quotation)? offerAccepted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(quotation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Refreshing value) refreshing,
    required TResult Function(_OfferAccepting value) offerAccepting,
    required TResult Function(_OfferAccepted value) offerAccepted,
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
    TResult? Function(_Refreshing value)? refreshing,
    TResult? Function(_OfferAccepting value)? offerAccepting,
    TResult? Function(_OfferAccepted value)? offerAccepted,
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
    TResult Function(_Refreshing value)? refreshing,
    TResult Function(_OfferAccepting value)? offerAccepting,
    TResult Function(_OfferAccepted value)? offerAccepted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements QuotationDetailState {
  const factory _Loaded(final Quotation quotation) = _$LoadedImpl;

  Quotation get quotation;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshingImplCopyWith<$Res> {
  factory _$$RefreshingImplCopyWith(
          _$RefreshingImpl value, $Res Function(_$RefreshingImpl) then) =
      __$$RefreshingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Quotation quotation});

  $QuotationCopyWith<$Res> get quotation;
}

/// @nodoc
class __$$RefreshingImplCopyWithImpl<$Res>
    extends _$QuotationDetailStateCopyWithImpl<$Res, _$RefreshingImpl>
    implements _$$RefreshingImplCopyWith<$Res> {
  __$$RefreshingImplCopyWithImpl(
      _$RefreshingImpl _value, $Res Function(_$RefreshingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotation = null,
  }) {
    return _then(_$RefreshingImpl(
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

class _$RefreshingImpl implements _Refreshing {
  const _$RefreshingImpl(this.quotation);

  @override
  final Quotation quotation;

  @override
  String toString() {
    return 'QuotationDetailState.refreshing(quotation: $quotation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshingImpl &&
            (identical(other.quotation, quotation) ||
                other.quotation == quotation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quotation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshingImplCopyWith<_$RefreshingImpl> get copyWith =>
      __$$RefreshingImplCopyWithImpl<_$RefreshingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Quotation quotation) loaded,
    required TResult Function(Quotation quotation) refreshing,
    required TResult Function() offerAccepting,
    required TResult Function(Quotation quotation) offerAccepted,
    required TResult Function(String message) error,
  }) {
    return refreshing(quotation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Quotation quotation)? loaded,
    TResult? Function(Quotation quotation)? refreshing,
    TResult? Function()? offerAccepting,
    TResult? Function(Quotation quotation)? offerAccepted,
    TResult? Function(String message)? error,
  }) {
    return refreshing?.call(quotation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Quotation quotation)? loaded,
    TResult Function(Quotation quotation)? refreshing,
    TResult Function()? offerAccepting,
    TResult Function(Quotation quotation)? offerAccepted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (refreshing != null) {
      return refreshing(quotation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Refreshing value) refreshing,
    required TResult Function(_OfferAccepting value) offerAccepting,
    required TResult Function(_OfferAccepted value) offerAccepted,
    required TResult Function(_Error value) error,
  }) {
    return refreshing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Refreshing value)? refreshing,
    TResult? Function(_OfferAccepting value)? offerAccepting,
    TResult? Function(_OfferAccepted value)? offerAccepted,
    TResult? Function(_Error value)? error,
  }) {
    return refreshing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Refreshing value)? refreshing,
    TResult Function(_OfferAccepting value)? offerAccepting,
    TResult Function(_OfferAccepted value)? offerAccepted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (refreshing != null) {
      return refreshing(this);
    }
    return orElse();
  }
}

abstract class _Refreshing implements QuotationDetailState {
  const factory _Refreshing(final Quotation quotation) = _$RefreshingImpl;

  Quotation get quotation;
  @JsonKey(ignore: true)
  _$$RefreshingImplCopyWith<_$RefreshingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OfferAcceptingImplCopyWith<$Res> {
  factory _$$OfferAcceptingImplCopyWith(_$OfferAcceptingImpl value,
          $Res Function(_$OfferAcceptingImpl) then) =
      __$$OfferAcceptingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OfferAcceptingImplCopyWithImpl<$Res>
    extends _$QuotationDetailStateCopyWithImpl<$Res, _$OfferAcceptingImpl>
    implements _$$OfferAcceptingImplCopyWith<$Res> {
  __$$OfferAcceptingImplCopyWithImpl(
      _$OfferAcceptingImpl _value, $Res Function(_$OfferAcceptingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OfferAcceptingImpl implements _OfferAccepting {
  const _$OfferAcceptingImpl();

  @override
  String toString() {
    return 'QuotationDetailState.offerAccepting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OfferAcceptingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Quotation quotation) loaded,
    required TResult Function(Quotation quotation) refreshing,
    required TResult Function() offerAccepting,
    required TResult Function(Quotation quotation) offerAccepted,
    required TResult Function(String message) error,
  }) {
    return offerAccepting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Quotation quotation)? loaded,
    TResult? Function(Quotation quotation)? refreshing,
    TResult? Function()? offerAccepting,
    TResult? Function(Quotation quotation)? offerAccepted,
    TResult? Function(String message)? error,
  }) {
    return offerAccepting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Quotation quotation)? loaded,
    TResult Function(Quotation quotation)? refreshing,
    TResult Function()? offerAccepting,
    TResult Function(Quotation quotation)? offerAccepted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (offerAccepting != null) {
      return offerAccepting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Refreshing value) refreshing,
    required TResult Function(_OfferAccepting value) offerAccepting,
    required TResult Function(_OfferAccepted value) offerAccepted,
    required TResult Function(_Error value) error,
  }) {
    return offerAccepting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Refreshing value)? refreshing,
    TResult? Function(_OfferAccepting value)? offerAccepting,
    TResult? Function(_OfferAccepted value)? offerAccepted,
    TResult? Function(_Error value)? error,
  }) {
    return offerAccepting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Refreshing value)? refreshing,
    TResult Function(_OfferAccepting value)? offerAccepting,
    TResult Function(_OfferAccepted value)? offerAccepted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (offerAccepting != null) {
      return offerAccepting(this);
    }
    return orElse();
  }
}

abstract class _OfferAccepting implements QuotationDetailState {
  const factory _OfferAccepting() = _$OfferAcceptingImpl;
}

/// @nodoc
abstract class _$$OfferAcceptedImplCopyWith<$Res> {
  factory _$$OfferAcceptedImplCopyWith(
          _$OfferAcceptedImpl value, $Res Function(_$OfferAcceptedImpl) then) =
      __$$OfferAcceptedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Quotation quotation});

  $QuotationCopyWith<$Res> get quotation;
}

/// @nodoc
class __$$OfferAcceptedImplCopyWithImpl<$Res>
    extends _$QuotationDetailStateCopyWithImpl<$Res, _$OfferAcceptedImpl>
    implements _$$OfferAcceptedImplCopyWith<$Res> {
  __$$OfferAcceptedImplCopyWithImpl(
      _$OfferAcceptedImpl _value, $Res Function(_$OfferAcceptedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotation = null,
  }) {
    return _then(_$OfferAcceptedImpl(
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

class _$OfferAcceptedImpl implements _OfferAccepted {
  const _$OfferAcceptedImpl(this.quotation);

  @override
  final Quotation quotation;

  @override
  String toString() {
    return 'QuotationDetailState.offerAccepted(quotation: $quotation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferAcceptedImpl &&
            (identical(other.quotation, quotation) ||
                other.quotation == quotation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quotation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferAcceptedImplCopyWith<_$OfferAcceptedImpl> get copyWith =>
      __$$OfferAcceptedImplCopyWithImpl<_$OfferAcceptedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Quotation quotation) loaded,
    required TResult Function(Quotation quotation) refreshing,
    required TResult Function() offerAccepting,
    required TResult Function(Quotation quotation) offerAccepted,
    required TResult Function(String message) error,
  }) {
    return offerAccepted(quotation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Quotation quotation)? loaded,
    TResult? Function(Quotation quotation)? refreshing,
    TResult? Function()? offerAccepting,
    TResult? Function(Quotation quotation)? offerAccepted,
    TResult? Function(String message)? error,
  }) {
    return offerAccepted?.call(quotation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Quotation quotation)? loaded,
    TResult Function(Quotation quotation)? refreshing,
    TResult Function()? offerAccepting,
    TResult Function(Quotation quotation)? offerAccepted,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (offerAccepted != null) {
      return offerAccepted(quotation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Refreshing value) refreshing,
    required TResult Function(_OfferAccepting value) offerAccepting,
    required TResult Function(_OfferAccepted value) offerAccepted,
    required TResult Function(_Error value) error,
  }) {
    return offerAccepted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Refreshing value)? refreshing,
    TResult? Function(_OfferAccepting value)? offerAccepting,
    TResult? Function(_OfferAccepted value)? offerAccepted,
    TResult? Function(_Error value)? error,
  }) {
    return offerAccepted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Refreshing value)? refreshing,
    TResult Function(_OfferAccepting value)? offerAccepting,
    TResult Function(_OfferAccepted value)? offerAccepted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (offerAccepted != null) {
      return offerAccepted(this);
    }
    return orElse();
  }
}

abstract class _OfferAccepted implements QuotationDetailState {
  const factory _OfferAccepted(final Quotation quotation) = _$OfferAcceptedImpl;

  Quotation get quotation;
  @JsonKey(ignore: true)
  _$$OfferAcceptedImplCopyWith<_$OfferAcceptedImpl> get copyWith =>
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
    extends _$QuotationDetailStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'QuotationDetailState.error(message: $message)';
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
    required TResult Function(Quotation quotation) loaded,
    required TResult Function(Quotation quotation) refreshing,
    required TResult Function() offerAccepting,
    required TResult Function(Quotation quotation) offerAccepted,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Quotation quotation)? loaded,
    TResult? Function(Quotation quotation)? refreshing,
    TResult? Function()? offerAccepting,
    TResult? Function(Quotation quotation)? offerAccepted,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Quotation quotation)? loaded,
    TResult Function(Quotation quotation)? refreshing,
    TResult Function()? offerAccepting,
    TResult Function(Quotation quotation)? offerAccepted,
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
    required TResult Function(_Refreshing value) refreshing,
    required TResult Function(_OfferAccepting value) offerAccepting,
    required TResult Function(_OfferAccepted value) offerAccepted,
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
    TResult? Function(_Refreshing value)? refreshing,
    TResult? Function(_OfferAccepting value)? offerAccepting,
    TResult? Function(_OfferAccepted value)? offerAccepted,
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
    TResult Function(_Refreshing value)? refreshing,
    TResult Function(_OfferAccepting value)? offerAccepting,
    TResult Function(_OfferAccepted value)? offerAccepted,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements QuotationDetailState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
