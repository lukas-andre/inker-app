// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_quotation_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateQuotationPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Quotation quotation, List<XFile> referenceImages)
        createQuotation,
    required TResult Function(List<XFile> newImages) addReferenceImages,
    required TResult Function(XFile image) removeReferenceImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Quotation quotation, List<XFile> referenceImages)?
        createQuotation,
    TResult? Function(List<XFile> newImages)? addReferenceImages,
    TResult? Function(XFile image)? removeReferenceImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Quotation quotation, List<XFile> referenceImages)?
        createQuotation,
    TResult Function(List<XFile> newImages)? addReferenceImages,
    TResult Function(XFile image)? removeReferenceImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateQuotation value) createQuotation,
    required TResult Function(_AddReferenceImages value) addReferenceImages,
    required TResult Function(_RemoveReferenceImage value) removeReferenceImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateQuotation value)? createQuotation,
    TResult? Function(_AddReferenceImages value)? addReferenceImages,
    TResult? Function(_RemoveReferenceImage value)? removeReferenceImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateQuotation value)? createQuotation,
    TResult Function(_AddReferenceImages value)? addReferenceImages,
    TResult Function(_RemoveReferenceImage value)? removeReferenceImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateQuotationPageEventCopyWith<$Res> {
  factory $CreateQuotationPageEventCopyWith(CreateQuotationPageEvent value,
          $Res Function(CreateQuotationPageEvent) then) =
      _$CreateQuotationPageEventCopyWithImpl<$Res, CreateQuotationPageEvent>;
}

/// @nodoc
class _$CreateQuotationPageEventCopyWithImpl<$Res,
        $Val extends CreateQuotationPageEvent>
    implements $CreateQuotationPageEventCopyWith<$Res> {
  _$CreateQuotationPageEventCopyWithImpl(this._value, this._then);

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
    extends _$CreateQuotationPageEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'CreateQuotationPageEvent.started()';
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
    required TResult Function(Quotation quotation, List<XFile> referenceImages)
        createQuotation,
    required TResult Function(List<XFile> newImages) addReferenceImages,
    required TResult Function(XFile image) removeReferenceImage,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Quotation quotation, List<XFile> referenceImages)?
        createQuotation,
    TResult? Function(List<XFile> newImages)? addReferenceImages,
    TResult? Function(XFile image)? removeReferenceImage,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Quotation quotation, List<XFile> referenceImages)?
        createQuotation,
    TResult Function(List<XFile> newImages)? addReferenceImages,
    TResult Function(XFile image)? removeReferenceImage,
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
    required TResult Function(_CreateQuotation value) createQuotation,
    required TResult Function(_AddReferenceImages value) addReferenceImages,
    required TResult Function(_RemoveReferenceImage value) removeReferenceImage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateQuotation value)? createQuotation,
    TResult? Function(_AddReferenceImages value)? addReferenceImages,
    TResult? Function(_RemoveReferenceImage value)? removeReferenceImage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateQuotation value)? createQuotation,
    TResult Function(_AddReferenceImages value)? addReferenceImages,
    TResult Function(_RemoveReferenceImage value)? removeReferenceImage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CreateQuotationPageEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CreateQuotationImplCopyWith<$Res> {
  factory _$$CreateQuotationImplCopyWith(_$CreateQuotationImpl value,
          $Res Function(_$CreateQuotationImpl) then) =
      __$$CreateQuotationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Quotation quotation, List<XFile> referenceImages});

  $QuotationCopyWith<$Res> get quotation;
}

/// @nodoc
class __$$CreateQuotationImplCopyWithImpl<$Res>
    extends _$CreateQuotationPageEventCopyWithImpl<$Res, _$CreateQuotationImpl>
    implements _$$CreateQuotationImplCopyWith<$Res> {
  __$$CreateQuotationImplCopyWithImpl(
      _$CreateQuotationImpl _value, $Res Function(_$CreateQuotationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotation = null,
    Object? referenceImages = null,
  }) {
    return _then(_$CreateQuotationImpl(
      null == quotation
          ? _value.quotation
          : quotation // ignore: cast_nullable_to_non_nullable
              as Quotation,
      null == referenceImages
          ? _value._referenceImages
          : referenceImages // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
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

class _$CreateQuotationImpl implements _CreateQuotation {
  const _$CreateQuotationImpl(this.quotation, final List<XFile> referenceImages)
      : _referenceImages = referenceImages;

  @override
  final Quotation quotation;
  final List<XFile> _referenceImages;
  @override
  List<XFile> get referenceImages {
    if (_referenceImages is EqualUnmodifiableListView) return _referenceImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_referenceImages);
  }

  @override
  String toString() {
    return 'CreateQuotationPageEvent.createQuotation(quotation: $quotation, referenceImages: $referenceImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateQuotationImpl &&
            (identical(other.quotation, quotation) ||
                other.quotation == quotation) &&
            const DeepCollectionEquality()
                .equals(other._referenceImages, _referenceImages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quotation,
      const DeepCollectionEquality().hash(_referenceImages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateQuotationImplCopyWith<_$CreateQuotationImpl> get copyWith =>
      __$$CreateQuotationImplCopyWithImpl<_$CreateQuotationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Quotation quotation, List<XFile> referenceImages)
        createQuotation,
    required TResult Function(List<XFile> newImages) addReferenceImages,
    required TResult Function(XFile image) removeReferenceImage,
  }) {
    return createQuotation(quotation, referenceImages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Quotation quotation, List<XFile> referenceImages)?
        createQuotation,
    TResult? Function(List<XFile> newImages)? addReferenceImages,
    TResult? Function(XFile image)? removeReferenceImage,
  }) {
    return createQuotation?.call(quotation, referenceImages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Quotation quotation, List<XFile> referenceImages)?
        createQuotation,
    TResult Function(List<XFile> newImages)? addReferenceImages,
    TResult Function(XFile image)? removeReferenceImage,
    required TResult orElse(),
  }) {
    if (createQuotation != null) {
      return createQuotation(quotation, referenceImages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateQuotation value) createQuotation,
    required TResult Function(_AddReferenceImages value) addReferenceImages,
    required TResult Function(_RemoveReferenceImage value) removeReferenceImage,
  }) {
    return createQuotation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateQuotation value)? createQuotation,
    TResult? Function(_AddReferenceImages value)? addReferenceImages,
    TResult? Function(_RemoveReferenceImage value)? removeReferenceImage,
  }) {
    return createQuotation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateQuotation value)? createQuotation,
    TResult Function(_AddReferenceImages value)? addReferenceImages,
    TResult Function(_RemoveReferenceImage value)? removeReferenceImage,
    required TResult orElse(),
  }) {
    if (createQuotation != null) {
      return createQuotation(this);
    }
    return orElse();
  }
}

abstract class _CreateQuotation implements CreateQuotationPageEvent {
  const factory _CreateQuotation(
          final Quotation quotation, final List<XFile> referenceImages) =
      _$CreateQuotationImpl;

  Quotation get quotation;
  List<XFile> get referenceImages;
  @JsonKey(ignore: true)
  _$$CreateQuotationImplCopyWith<_$CreateQuotationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddReferenceImagesImplCopyWith<$Res> {
  factory _$$AddReferenceImagesImplCopyWith(_$AddReferenceImagesImpl value,
          $Res Function(_$AddReferenceImagesImpl) then) =
      __$$AddReferenceImagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<XFile> newImages});
}

/// @nodoc
class __$$AddReferenceImagesImplCopyWithImpl<$Res>
    extends _$CreateQuotationPageEventCopyWithImpl<$Res,
        _$AddReferenceImagesImpl>
    implements _$$AddReferenceImagesImplCopyWith<$Res> {
  __$$AddReferenceImagesImplCopyWithImpl(_$AddReferenceImagesImpl _value,
      $Res Function(_$AddReferenceImagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newImages = null,
  }) {
    return _then(_$AddReferenceImagesImpl(
      null == newImages
          ? _value._newImages
          : newImages // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
    ));
  }
}

/// @nodoc

class _$AddReferenceImagesImpl implements _AddReferenceImages {
  const _$AddReferenceImagesImpl(final List<XFile> newImages)
      : _newImages = newImages;

  final List<XFile> _newImages;
  @override
  List<XFile> get newImages {
    if (_newImages is EqualUnmodifiableListView) return _newImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newImages);
  }

  @override
  String toString() {
    return 'CreateQuotationPageEvent.addReferenceImages(newImages: $newImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddReferenceImagesImpl &&
            const DeepCollectionEquality()
                .equals(other._newImages, _newImages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_newImages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddReferenceImagesImplCopyWith<_$AddReferenceImagesImpl> get copyWith =>
      __$$AddReferenceImagesImplCopyWithImpl<_$AddReferenceImagesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Quotation quotation, List<XFile> referenceImages)
        createQuotation,
    required TResult Function(List<XFile> newImages) addReferenceImages,
    required TResult Function(XFile image) removeReferenceImage,
  }) {
    return addReferenceImages(newImages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Quotation quotation, List<XFile> referenceImages)?
        createQuotation,
    TResult? Function(List<XFile> newImages)? addReferenceImages,
    TResult? Function(XFile image)? removeReferenceImage,
  }) {
    return addReferenceImages?.call(newImages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Quotation quotation, List<XFile> referenceImages)?
        createQuotation,
    TResult Function(List<XFile> newImages)? addReferenceImages,
    TResult Function(XFile image)? removeReferenceImage,
    required TResult orElse(),
  }) {
    if (addReferenceImages != null) {
      return addReferenceImages(newImages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateQuotation value) createQuotation,
    required TResult Function(_AddReferenceImages value) addReferenceImages,
    required TResult Function(_RemoveReferenceImage value) removeReferenceImage,
  }) {
    return addReferenceImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateQuotation value)? createQuotation,
    TResult? Function(_AddReferenceImages value)? addReferenceImages,
    TResult? Function(_RemoveReferenceImage value)? removeReferenceImage,
  }) {
    return addReferenceImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateQuotation value)? createQuotation,
    TResult Function(_AddReferenceImages value)? addReferenceImages,
    TResult Function(_RemoveReferenceImage value)? removeReferenceImage,
    required TResult orElse(),
  }) {
    if (addReferenceImages != null) {
      return addReferenceImages(this);
    }
    return orElse();
  }
}

abstract class _AddReferenceImages implements CreateQuotationPageEvent {
  const factory _AddReferenceImages(final List<XFile> newImages) =
      _$AddReferenceImagesImpl;

  List<XFile> get newImages;
  @JsonKey(ignore: true)
  _$$AddReferenceImagesImplCopyWith<_$AddReferenceImagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveReferenceImageImplCopyWith<$Res> {
  factory _$$RemoveReferenceImageImplCopyWith(_$RemoveReferenceImageImpl value,
          $Res Function(_$RemoveReferenceImageImpl) then) =
      __$$RemoveReferenceImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile image});
}

/// @nodoc
class __$$RemoveReferenceImageImplCopyWithImpl<$Res>
    extends _$CreateQuotationPageEventCopyWithImpl<$Res,
        _$RemoveReferenceImageImpl>
    implements _$$RemoveReferenceImageImplCopyWith<$Res> {
  __$$RemoveReferenceImageImplCopyWithImpl(_$RemoveReferenceImageImpl _value,
      $Res Function(_$RemoveReferenceImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$RemoveReferenceImageImpl(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc

class _$RemoveReferenceImageImpl implements _RemoveReferenceImage {
  const _$RemoveReferenceImageImpl(this.image);

  @override
  final XFile image;

  @override
  String toString() {
    return 'CreateQuotationPageEvent.removeReferenceImage(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveReferenceImageImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveReferenceImageImplCopyWith<_$RemoveReferenceImageImpl>
      get copyWith =>
          __$$RemoveReferenceImageImplCopyWithImpl<_$RemoveReferenceImageImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Quotation quotation, List<XFile> referenceImages)
        createQuotation,
    required TResult Function(List<XFile> newImages) addReferenceImages,
    required TResult Function(XFile image) removeReferenceImage,
  }) {
    return removeReferenceImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Quotation quotation, List<XFile> referenceImages)?
        createQuotation,
    TResult? Function(List<XFile> newImages)? addReferenceImages,
    TResult? Function(XFile image)? removeReferenceImage,
  }) {
    return removeReferenceImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Quotation quotation, List<XFile> referenceImages)?
        createQuotation,
    TResult Function(List<XFile> newImages)? addReferenceImages,
    TResult Function(XFile image)? removeReferenceImage,
    required TResult orElse(),
  }) {
    if (removeReferenceImage != null) {
      return removeReferenceImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateQuotation value) createQuotation,
    required TResult Function(_AddReferenceImages value) addReferenceImages,
    required TResult Function(_RemoveReferenceImage value) removeReferenceImage,
  }) {
    return removeReferenceImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateQuotation value)? createQuotation,
    TResult? Function(_AddReferenceImages value)? addReferenceImages,
    TResult? Function(_RemoveReferenceImage value)? removeReferenceImage,
  }) {
    return removeReferenceImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateQuotation value)? createQuotation,
    TResult Function(_AddReferenceImages value)? addReferenceImages,
    TResult Function(_RemoveReferenceImage value)? removeReferenceImage,
    required TResult orElse(),
  }) {
    if (removeReferenceImage != null) {
      return removeReferenceImage(this);
    }
    return orElse();
  }
}

abstract class _RemoveReferenceImage implements CreateQuotationPageEvent {
  const factory _RemoveReferenceImage(final XFile image) =
      _$RemoveReferenceImageImpl;

  XFile get image;
  @JsonKey(ignore: true)
  _$$RemoveReferenceImageImplCopyWith<_$RemoveReferenceImageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateQuotationPageState {
  List<XFile> get referenceImages => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<XFile> referenceImages) initial,
    required TResult Function(List<XFile> referenceImages) loading,
    required TResult Function(List<XFile> referenceImages, String message)
        imageAdded,
    required TResult Function(
            int id, String message, bool created, List<XFile> referenceImages)
        quotationCreated,
    required TResult Function(String message, List<XFile> referenceImages)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<XFile> referenceImages)? initial,
    TResult? Function(List<XFile> referenceImages)? loading,
    TResult? Function(List<XFile> referenceImages, String message)? imageAdded,
    TResult? Function(
            int id, String message, bool created, List<XFile> referenceImages)?
        quotationCreated,
    TResult? Function(String message, List<XFile> referenceImages)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<XFile> referenceImages)? initial,
    TResult Function(List<XFile> referenceImages)? loading,
    TResult Function(List<XFile> referenceImages, String message)? imageAdded,
    TResult Function(
            int id, String message, bool created, List<XFile> referenceImages)?
        quotationCreated,
    TResult Function(String message, List<XFile> referenceImages)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ImageAdded value) imageAdded,
    required TResult Function(_QuotationCreated value) quotationCreated,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ImageAdded value)? imageAdded,
    TResult? Function(_QuotationCreated value)? quotationCreated,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ImageAdded value)? imageAdded,
    TResult Function(_QuotationCreated value)? quotationCreated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateQuotationPageStateCopyWith<CreateQuotationPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateQuotationPageStateCopyWith<$Res> {
  factory $CreateQuotationPageStateCopyWith(CreateQuotationPageState value,
          $Res Function(CreateQuotationPageState) then) =
      _$CreateQuotationPageStateCopyWithImpl<$Res, CreateQuotationPageState>;
  @useResult
  $Res call({List<XFile> referenceImages});
}

/// @nodoc
class _$CreateQuotationPageStateCopyWithImpl<$Res,
        $Val extends CreateQuotationPageState>
    implements $CreateQuotationPageStateCopyWith<$Res> {
  _$CreateQuotationPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referenceImages = null,
  }) {
    return _then(_value.copyWith(
      referenceImages: null == referenceImages
          ? _value.referenceImages
          : referenceImages // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CreateQuotationPageStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<XFile> referenceImages});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CreateQuotationPageStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referenceImages = null,
  }) {
    return _then(_$InitialImpl(
      referenceImages: null == referenceImages
          ? _value._referenceImages
          : referenceImages // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({final List<XFile> referenceImages = const []})
      : _referenceImages = referenceImages;

  final List<XFile> _referenceImages;
  @override
  @JsonKey()
  List<XFile> get referenceImages {
    if (_referenceImages is EqualUnmodifiableListView) return _referenceImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_referenceImages);
  }

  @override
  String toString() {
    return 'CreateQuotationPageState.initial(referenceImages: $referenceImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._referenceImages, _referenceImages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_referenceImages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<XFile> referenceImages) initial,
    required TResult Function(List<XFile> referenceImages) loading,
    required TResult Function(List<XFile> referenceImages, String message)
        imageAdded,
    required TResult Function(
            int id, String message, bool created, List<XFile> referenceImages)
        quotationCreated,
    required TResult Function(String message, List<XFile> referenceImages)
        error,
  }) {
    return initial(referenceImages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<XFile> referenceImages)? initial,
    TResult? Function(List<XFile> referenceImages)? loading,
    TResult? Function(List<XFile> referenceImages, String message)? imageAdded,
    TResult? Function(
            int id, String message, bool created, List<XFile> referenceImages)?
        quotationCreated,
    TResult? Function(String message, List<XFile> referenceImages)? error,
  }) {
    return initial?.call(referenceImages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<XFile> referenceImages)? initial,
    TResult Function(List<XFile> referenceImages)? loading,
    TResult Function(List<XFile> referenceImages, String message)? imageAdded,
    TResult Function(
            int id, String message, bool created, List<XFile> referenceImages)?
        quotationCreated,
    TResult Function(String message, List<XFile> referenceImages)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(referenceImages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ImageAdded value) imageAdded,
    required TResult Function(_QuotationCreated value) quotationCreated,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ImageAdded value)? imageAdded,
    TResult? Function(_QuotationCreated value)? quotationCreated,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ImageAdded value)? imageAdded,
    TResult Function(_QuotationCreated value)? quotationCreated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateQuotationPageState {
  const factory _Initial({final List<XFile> referenceImages}) = _$InitialImpl;

  @override
  List<XFile> get referenceImages;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $CreateQuotationPageStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<XFile> referenceImages});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CreateQuotationPageStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referenceImages = null,
  }) {
    return _then(_$LoadingImpl(
      referenceImages: null == referenceImages
          ? _value._referenceImages
          : referenceImages // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl({final List<XFile> referenceImages = const []})
      : _referenceImages = referenceImages;

  final List<XFile> _referenceImages;
  @override
  @JsonKey()
  List<XFile> get referenceImages {
    if (_referenceImages is EqualUnmodifiableListView) return _referenceImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_referenceImages);
  }

  @override
  String toString() {
    return 'CreateQuotationPageState.loading(referenceImages: $referenceImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality()
                .equals(other._referenceImages, _referenceImages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_referenceImages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<XFile> referenceImages) initial,
    required TResult Function(List<XFile> referenceImages) loading,
    required TResult Function(List<XFile> referenceImages, String message)
        imageAdded,
    required TResult Function(
            int id, String message, bool created, List<XFile> referenceImages)
        quotationCreated,
    required TResult Function(String message, List<XFile> referenceImages)
        error,
  }) {
    return loading(referenceImages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<XFile> referenceImages)? initial,
    TResult? Function(List<XFile> referenceImages)? loading,
    TResult? Function(List<XFile> referenceImages, String message)? imageAdded,
    TResult? Function(
            int id, String message, bool created, List<XFile> referenceImages)?
        quotationCreated,
    TResult? Function(String message, List<XFile> referenceImages)? error,
  }) {
    return loading?.call(referenceImages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<XFile> referenceImages)? initial,
    TResult Function(List<XFile> referenceImages)? loading,
    TResult Function(List<XFile> referenceImages, String message)? imageAdded,
    TResult Function(
            int id, String message, bool created, List<XFile> referenceImages)?
        quotationCreated,
    TResult Function(String message, List<XFile> referenceImages)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(referenceImages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ImageAdded value) imageAdded,
    required TResult Function(_QuotationCreated value) quotationCreated,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ImageAdded value)? imageAdded,
    TResult? Function(_QuotationCreated value)? quotationCreated,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ImageAdded value)? imageAdded,
    TResult Function(_QuotationCreated value)? quotationCreated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CreateQuotationPageState {
  const factory _Loading({final List<XFile> referenceImages}) = _$LoadingImpl;

  @override
  List<XFile> get referenceImages;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageAddedImplCopyWith<$Res>
    implements $CreateQuotationPageStateCopyWith<$Res> {
  factory _$$ImageAddedImplCopyWith(
          _$ImageAddedImpl value, $Res Function(_$ImageAddedImpl) then) =
      __$$ImageAddedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<XFile> referenceImages, String message});
}

/// @nodoc
class __$$ImageAddedImplCopyWithImpl<$Res>
    extends _$CreateQuotationPageStateCopyWithImpl<$Res, _$ImageAddedImpl>
    implements _$$ImageAddedImplCopyWith<$Res> {
  __$$ImageAddedImplCopyWithImpl(
      _$ImageAddedImpl _value, $Res Function(_$ImageAddedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referenceImages = null,
    Object? message = null,
  }) {
    return _then(_$ImageAddedImpl(
      referenceImages: null == referenceImages
          ? _value._referenceImages
          : referenceImages // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImageAddedImpl implements _ImageAdded {
  const _$ImageAddedImpl(
      {required final List<XFile> referenceImages, required this.message})
      : _referenceImages = referenceImages;

  final List<XFile> _referenceImages;
  @override
  List<XFile> get referenceImages {
    if (_referenceImages is EqualUnmodifiableListView) return _referenceImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_referenceImages);
  }

  @override
  final String message;

  @override
  String toString() {
    return 'CreateQuotationPageState.imageAdded(referenceImages: $referenceImages, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageAddedImpl &&
            const DeepCollectionEquality()
                .equals(other._referenceImages, _referenceImages) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_referenceImages), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageAddedImplCopyWith<_$ImageAddedImpl> get copyWith =>
      __$$ImageAddedImplCopyWithImpl<_$ImageAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<XFile> referenceImages) initial,
    required TResult Function(List<XFile> referenceImages) loading,
    required TResult Function(List<XFile> referenceImages, String message)
        imageAdded,
    required TResult Function(
            int id, String message, bool created, List<XFile> referenceImages)
        quotationCreated,
    required TResult Function(String message, List<XFile> referenceImages)
        error,
  }) {
    return imageAdded(referenceImages, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<XFile> referenceImages)? initial,
    TResult? Function(List<XFile> referenceImages)? loading,
    TResult? Function(List<XFile> referenceImages, String message)? imageAdded,
    TResult? Function(
            int id, String message, bool created, List<XFile> referenceImages)?
        quotationCreated,
    TResult? Function(String message, List<XFile> referenceImages)? error,
  }) {
    return imageAdded?.call(referenceImages, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<XFile> referenceImages)? initial,
    TResult Function(List<XFile> referenceImages)? loading,
    TResult Function(List<XFile> referenceImages, String message)? imageAdded,
    TResult Function(
            int id, String message, bool created, List<XFile> referenceImages)?
        quotationCreated,
    TResult Function(String message, List<XFile> referenceImages)? error,
    required TResult orElse(),
  }) {
    if (imageAdded != null) {
      return imageAdded(referenceImages, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ImageAdded value) imageAdded,
    required TResult Function(_QuotationCreated value) quotationCreated,
    required TResult Function(_Error value) error,
  }) {
    return imageAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ImageAdded value)? imageAdded,
    TResult? Function(_QuotationCreated value)? quotationCreated,
    TResult? Function(_Error value)? error,
  }) {
    return imageAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ImageAdded value)? imageAdded,
    TResult Function(_QuotationCreated value)? quotationCreated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (imageAdded != null) {
      return imageAdded(this);
    }
    return orElse();
  }
}

abstract class _ImageAdded implements CreateQuotationPageState {
  const factory _ImageAdded(
      {required final List<XFile> referenceImages,
      required final String message}) = _$ImageAddedImpl;

  @override
  List<XFile> get referenceImages;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ImageAddedImplCopyWith<_$ImageAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuotationCreatedImplCopyWith<$Res>
    implements $CreateQuotationPageStateCopyWith<$Res> {
  factory _$$QuotationCreatedImplCopyWith(_$QuotationCreatedImpl value,
          $Res Function(_$QuotationCreatedImpl) then) =
      __$$QuotationCreatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String message, bool created, List<XFile> referenceImages});
}

/// @nodoc
class __$$QuotationCreatedImplCopyWithImpl<$Res>
    extends _$CreateQuotationPageStateCopyWithImpl<$Res, _$QuotationCreatedImpl>
    implements _$$QuotationCreatedImplCopyWith<$Res> {
  __$$QuotationCreatedImplCopyWithImpl(_$QuotationCreatedImpl _value,
      $Res Function(_$QuotationCreatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? created = null,
    Object? referenceImages = null,
  }) {
    return _then(_$QuotationCreatedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as bool,
      referenceImages: null == referenceImages
          ? _value._referenceImages
          : referenceImages // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
    ));
  }
}

/// @nodoc

class _$QuotationCreatedImpl implements _QuotationCreated {
  const _$QuotationCreatedImpl(
      {required this.id,
      required this.message,
      required this.created,
      final List<XFile> referenceImages = const []})
      : _referenceImages = referenceImages;

  @override
  final int id;
  @override
  final String message;
  @override
  final bool created;
  final List<XFile> _referenceImages;
  @override
  @JsonKey()
  List<XFile> get referenceImages {
    if (_referenceImages is EqualUnmodifiableListView) return _referenceImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_referenceImages);
  }

  @override
  String toString() {
    return 'CreateQuotationPageState.quotationCreated(id: $id, message: $message, created: $created, referenceImages: $referenceImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuotationCreatedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.created, created) || other.created == created) &&
            const DeepCollectionEquality()
                .equals(other._referenceImages, _referenceImages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, message, created,
      const DeepCollectionEquality().hash(_referenceImages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuotationCreatedImplCopyWith<_$QuotationCreatedImpl> get copyWith =>
      __$$QuotationCreatedImplCopyWithImpl<_$QuotationCreatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<XFile> referenceImages) initial,
    required TResult Function(List<XFile> referenceImages) loading,
    required TResult Function(List<XFile> referenceImages, String message)
        imageAdded,
    required TResult Function(
            int id, String message, bool created, List<XFile> referenceImages)
        quotationCreated,
    required TResult Function(String message, List<XFile> referenceImages)
        error,
  }) {
    return quotationCreated(id, message, created, referenceImages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<XFile> referenceImages)? initial,
    TResult? Function(List<XFile> referenceImages)? loading,
    TResult? Function(List<XFile> referenceImages, String message)? imageAdded,
    TResult? Function(
            int id, String message, bool created, List<XFile> referenceImages)?
        quotationCreated,
    TResult? Function(String message, List<XFile> referenceImages)? error,
  }) {
    return quotationCreated?.call(id, message, created, referenceImages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<XFile> referenceImages)? initial,
    TResult Function(List<XFile> referenceImages)? loading,
    TResult Function(List<XFile> referenceImages, String message)? imageAdded,
    TResult Function(
            int id, String message, bool created, List<XFile> referenceImages)?
        quotationCreated,
    TResult Function(String message, List<XFile> referenceImages)? error,
    required TResult orElse(),
  }) {
    if (quotationCreated != null) {
      return quotationCreated(id, message, created, referenceImages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ImageAdded value) imageAdded,
    required TResult Function(_QuotationCreated value) quotationCreated,
    required TResult Function(_Error value) error,
  }) {
    return quotationCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ImageAdded value)? imageAdded,
    TResult? Function(_QuotationCreated value)? quotationCreated,
    TResult? Function(_Error value)? error,
  }) {
    return quotationCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ImageAdded value)? imageAdded,
    TResult Function(_QuotationCreated value)? quotationCreated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (quotationCreated != null) {
      return quotationCreated(this);
    }
    return orElse();
  }
}

abstract class _QuotationCreated implements CreateQuotationPageState {
  const factory _QuotationCreated(
      {required final int id,
      required final String message,
      required final bool created,
      final List<XFile> referenceImages}) = _$QuotationCreatedImpl;

  int get id;
  String get message;
  bool get created;
  @override
  List<XFile> get referenceImages;
  @override
  @JsonKey(ignore: true)
  _$$QuotationCreatedImplCopyWith<_$QuotationCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res>
    implements $CreateQuotationPageStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, List<XFile> referenceImages});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CreateQuotationPageStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? referenceImages = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      referenceImages: null == referenceImages
          ? _value._referenceImages
          : referenceImages // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message,
      {final List<XFile> referenceImages = const []})
      : _referenceImages = referenceImages;

  @override
  final String message;
  final List<XFile> _referenceImages;
  @override
  @JsonKey()
  List<XFile> get referenceImages {
    if (_referenceImages is EqualUnmodifiableListView) return _referenceImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_referenceImages);
  }

  @override
  String toString() {
    return 'CreateQuotationPageState.error(message: $message, referenceImages: $referenceImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._referenceImages, _referenceImages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message,
      const DeepCollectionEquality().hash(_referenceImages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<XFile> referenceImages) initial,
    required TResult Function(List<XFile> referenceImages) loading,
    required TResult Function(List<XFile> referenceImages, String message)
        imageAdded,
    required TResult Function(
            int id, String message, bool created, List<XFile> referenceImages)
        quotationCreated,
    required TResult Function(String message, List<XFile> referenceImages)
        error,
  }) {
    return error(message, referenceImages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<XFile> referenceImages)? initial,
    TResult? Function(List<XFile> referenceImages)? loading,
    TResult? Function(List<XFile> referenceImages, String message)? imageAdded,
    TResult? Function(
            int id, String message, bool created, List<XFile> referenceImages)?
        quotationCreated,
    TResult? Function(String message, List<XFile> referenceImages)? error,
  }) {
    return error?.call(message, referenceImages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<XFile> referenceImages)? initial,
    TResult Function(List<XFile> referenceImages)? loading,
    TResult Function(List<XFile> referenceImages, String message)? imageAdded,
    TResult Function(
            int id, String message, bool created, List<XFile> referenceImages)?
        quotationCreated,
    TResult Function(String message, List<XFile> referenceImages)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, referenceImages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ImageAdded value) imageAdded,
    required TResult Function(_QuotationCreated value) quotationCreated,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ImageAdded value)? imageAdded,
    TResult? Function(_QuotationCreated value)? quotationCreated,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ImageAdded value)? imageAdded,
    TResult Function(_QuotationCreated value)? quotationCreated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CreateQuotationPageState {
  const factory _Error(final String message,
      {final List<XFile> referenceImages}) = _$ErrorImpl;

  String get message;
  @override
  List<XFile> get referenceImages;
  @override
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
