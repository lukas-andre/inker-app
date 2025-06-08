// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_schema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FormSchemaField _$FormSchemaFieldFromJson(Map<String, dynamic> json) {
  return _FormSchemaField.fromJson(json);
}

/// @nodoc
mixin _$FormSchemaField {
  String get type =>
      throw _privateConstructorUsedError; // 'checkbox', 'signature', 'text', 'date', 'radio', 'dropdown', 'textarea'
  String get label => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get required => throw _privateConstructorUsedError;
  List<dynamic>? get options =>
      throw _privateConstructorUsedError; // For checkbox, radio, dropdown
  String? get placeholder => throw _privateConstructorUsedError;
  dynamic get defaultValue => throw _privateConstructorUsedError;
  Map<String, dynamic>? get validation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormSchemaFieldCopyWith<FormSchemaField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormSchemaFieldCopyWith<$Res> {
  factory $FormSchemaFieldCopyWith(
          FormSchemaField value, $Res Function(FormSchemaField) then) =
      _$FormSchemaFieldCopyWithImpl<$Res, FormSchemaField>;
  @useResult
  $Res call(
      {String type,
      String label,
      String name,
      bool required,
      List<dynamic>? options,
      String? placeholder,
      dynamic defaultValue,
      Map<String, dynamic>? validation});
}

/// @nodoc
class _$FormSchemaFieldCopyWithImpl<$Res, $Val extends FormSchemaField>
    implements $FormSchemaFieldCopyWith<$Res> {
  _$FormSchemaFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? label = null,
    Object? name = null,
    Object? required = null,
    Object? options = freezed,
    Object? placeholder = freezed,
    Object? defaultValue = freezed,
    Object? validation = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      placeholder: freezed == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      validation: freezed == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormSchemaFieldImplCopyWith<$Res>
    implements $FormSchemaFieldCopyWith<$Res> {
  factory _$$FormSchemaFieldImplCopyWith(_$FormSchemaFieldImpl value,
          $Res Function(_$FormSchemaFieldImpl) then) =
      __$$FormSchemaFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String label,
      String name,
      bool required,
      List<dynamic>? options,
      String? placeholder,
      dynamic defaultValue,
      Map<String, dynamic>? validation});
}

/// @nodoc
class __$$FormSchemaFieldImplCopyWithImpl<$Res>
    extends _$FormSchemaFieldCopyWithImpl<$Res, _$FormSchemaFieldImpl>
    implements _$$FormSchemaFieldImplCopyWith<$Res> {
  __$$FormSchemaFieldImplCopyWithImpl(
      _$FormSchemaFieldImpl _value, $Res Function(_$FormSchemaFieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? label = null,
    Object? name = null,
    Object? required = null,
    Object? options = freezed,
    Object? placeholder = freezed,
    Object? defaultValue = freezed,
    Object? validation = freezed,
  }) {
    return _then(_$FormSchemaFieldImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      placeholder: freezed == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      validation: freezed == validation
          ? _value._validation
          : validation // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormSchemaFieldImpl implements _FormSchemaField {
  const _$FormSchemaFieldImpl(
      {required this.type,
      required this.label,
      required this.name,
      required this.required,
      final List<dynamic>? options,
      this.placeholder,
      this.defaultValue,
      final Map<String, dynamic>? validation})
      : _options = options,
        _validation = validation;

  factory _$FormSchemaFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormSchemaFieldImplFromJson(json);

  @override
  final String type;
// 'checkbox', 'signature', 'text', 'date', 'radio', 'dropdown', 'textarea'
  @override
  final String label;
  @override
  final String name;
  @override
  final bool required;
  final List<dynamic>? _options;
  @override
  List<dynamic>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// For checkbox, radio, dropdown
  @override
  final String? placeholder;
  @override
  final dynamic defaultValue;
  final Map<String, dynamic>? _validation;
  @override
  Map<String, dynamic>? get validation {
    final value = _validation;
    if (value == null) return null;
    if (_validation is EqualUnmodifiableMapView) return _validation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'FormSchemaField(type: $type, label: $label, name: $name, required: $required, options: $options, placeholder: $placeholder, defaultValue: $defaultValue, validation: $validation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormSchemaFieldImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.required, required) ||
                other.required == required) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            const DeepCollectionEquality()
                .equals(other.defaultValue, defaultValue) &&
            const DeepCollectionEquality()
                .equals(other._validation, _validation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      label,
      name,
      required,
      const DeepCollectionEquality().hash(_options),
      placeholder,
      const DeepCollectionEquality().hash(defaultValue),
      const DeepCollectionEquality().hash(_validation));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormSchemaFieldImplCopyWith<_$FormSchemaFieldImpl> get copyWith =>
      __$$FormSchemaFieldImplCopyWithImpl<_$FormSchemaFieldImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormSchemaFieldImplToJson(
      this,
    );
  }
}

abstract class _FormSchemaField implements FormSchemaField {
  const factory _FormSchemaField(
      {required final String type,
      required final String label,
      required final String name,
      required final bool required,
      final List<dynamic>? options,
      final String? placeholder,
      final dynamic defaultValue,
      final Map<String, dynamic>? validation}) = _$FormSchemaFieldImpl;

  factory _FormSchemaField.fromJson(Map<String, dynamic> json) =
      _$FormSchemaFieldImpl.fromJson;

  @override
  String get type;
  @override // 'checkbox', 'signature', 'text', 'date', 'radio', 'dropdown', 'textarea'
  String get label;
  @override
  String get name;
  @override
  bool get required;
  @override
  List<dynamic>? get options;
  @override // For checkbox, radio, dropdown
  String? get placeholder;
  @override
  dynamic get defaultValue;
  @override
  Map<String, dynamic>? get validation;
  @override
  @JsonKey(ignore: true)
  _$$FormSchemaFieldImplCopyWith<_$FormSchemaFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FormSchemaLogicCondition _$FormSchemaLogicConditionFromJson(
    Map<String, dynamic> json) {
  return _FormSchemaLogicCondition.fromJson(json);
}

/// @nodoc
mixin _$FormSchemaLogicCondition {
  String get field =>
      throw _privateConstructorUsedError; // name of the field triggering the logic
  String get condition =>
      throw _privateConstructorUsedError; // 'IS_CHECKED', 'EQUALS_VALUE', 'IS_FILLED', 'GREATER_THAN'
  dynamic get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormSchemaLogicConditionCopyWith<FormSchemaLogicCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormSchemaLogicConditionCopyWith<$Res> {
  factory $FormSchemaLogicConditionCopyWith(FormSchemaLogicCondition value,
          $Res Function(FormSchemaLogicCondition) then) =
      _$FormSchemaLogicConditionCopyWithImpl<$Res, FormSchemaLogicCondition>;
  @useResult
  $Res call({String field, String condition, dynamic value});
}

/// @nodoc
class _$FormSchemaLogicConditionCopyWithImpl<$Res,
        $Val extends FormSchemaLogicCondition>
    implements $FormSchemaLogicConditionCopyWith<$Res> {
  _$FormSchemaLogicConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? condition = null,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormSchemaLogicConditionImplCopyWith<$Res>
    implements $FormSchemaLogicConditionCopyWith<$Res> {
  factory _$$FormSchemaLogicConditionImplCopyWith(
          _$FormSchemaLogicConditionImpl value,
          $Res Function(_$FormSchemaLogicConditionImpl) then) =
      __$$FormSchemaLogicConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String field, String condition, dynamic value});
}

/// @nodoc
class __$$FormSchemaLogicConditionImplCopyWithImpl<$Res>
    extends _$FormSchemaLogicConditionCopyWithImpl<$Res,
        _$FormSchemaLogicConditionImpl>
    implements _$$FormSchemaLogicConditionImplCopyWith<$Res> {
  __$$FormSchemaLogicConditionImplCopyWithImpl(
      _$FormSchemaLogicConditionImpl _value,
      $Res Function(_$FormSchemaLogicConditionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? condition = null,
    Object? value = freezed,
  }) {
    return _then(_$FormSchemaLogicConditionImpl(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormSchemaLogicConditionImpl implements _FormSchemaLogicCondition {
  const _$FormSchemaLogicConditionImpl(
      {required this.field, required this.condition, this.value});

  factory _$FormSchemaLogicConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormSchemaLogicConditionImplFromJson(json);

  @override
  final String field;
// name of the field triggering the logic
  @override
  final String condition;
// 'IS_CHECKED', 'EQUALS_VALUE', 'IS_FILLED', 'GREATER_THAN'
  @override
  final dynamic value;

  @override
  String toString() {
    return 'FormSchemaLogicCondition(field: $field, condition: $condition, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormSchemaLogicConditionImpl &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, field, condition,
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormSchemaLogicConditionImplCopyWith<_$FormSchemaLogicConditionImpl>
      get copyWith => __$$FormSchemaLogicConditionImplCopyWithImpl<
          _$FormSchemaLogicConditionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormSchemaLogicConditionImplToJson(
      this,
    );
  }
}

abstract class _FormSchemaLogicCondition implements FormSchemaLogicCondition {
  const factory _FormSchemaLogicCondition(
      {required final String field,
      required final String condition,
      final dynamic value}) = _$FormSchemaLogicConditionImpl;

  factory _FormSchemaLogicCondition.fromJson(Map<String, dynamic> json) =
      _$FormSchemaLogicConditionImpl.fromJson;

  @override
  String get field;
  @override // name of the field triggering the logic
  String get condition;
  @override // 'IS_CHECKED', 'EQUALS_VALUE', 'IS_FILLED', 'GREATER_THAN'
  dynamic get value;
  @override
  @JsonKey(ignore: true)
  _$$FormSchemaLogicConditionImplCopyWith<_$FormSchemaLogicConditionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FormSchemaLogic _$FormSchemaLogicFromJson(Map<String, dynamic> json) {
  return _FormSchemaLogic.fromJson(json);
}

/// @nodoc
mixin _$FormSchemaLogic {
  List<FormSchemaLogicCondition>? get showIf =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormSchemaLogicCopyWith<FormSchemaLogic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormSchemaLogicCopyWith<$Res> {
  factory $FormSchemaLogicCopyWith(
          FormSchemaLogic value, $Res Function(FormSchemaLogic) then) =
      _$FormSchemaLogicCopyWithImpl<$Res, FormSchemaLogic>;
  @useResult
  $Res call({List<FormSchemaLogicCondition>? showIf});
}

/// @nodoc
class _$FormSchemaLogicCopyWithImpl<$Res, $Val extends FormSchemaLogic>
    implements $FormSchemaLogicCopyWith<$Res> {
  _$FormSchemaLogicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showIf = freezed,
  }) {
    return _then(_value.copyWith(
      showIf: freezed == showIf
          ? _value.showIf
          : showIf // ignore: cast_nullable_to_non_nullable
              as List<FormSchemaLogicCondition>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormSchemaLogicImplCopyWith<$Res>
    implements $FormSchemaLogicCopyWith<$Res> {
  factory _$$FormSchemaLogicImplCopyWith(_$FormSchemaLogicImpl value,
          $Res Function(_$FormSchemaLogicImpl) then) =
      __$$FormSchemaLogicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FormSchemaLogicCondition>? showIf});
}

/// @nodoc
class __$$FormSchemaLogicImplCopyWithImpl<$Res>
    extends _$FormSchemaLogicCopyWithImpl<$Res, _$FormSchemaLogicImpl>
    implements _$$FormSchemaLogicImplCopyWith<$Res> {
  __$$FormSchemaLogicImplCopyWithImpl(
      _$FormSchemaLogicImpl _value, $Res Function(_$FormSchemaLogicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showIf = freezed,
  }) {
    return _then(_$FormSchemaLogicImpl(
      showIf: freezed == showIf
          ? _value._showIf
          : showIf // ignore: cast_nullable_to_non_nullable
              as List<FormSchemaLogicCondition>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormSchemaLogicImpl implements _FormSchemaLogic {
  const _$FormSchemaLogicImpl({final List<FormSchemaLogicCondition>? showIf})
      : _showIf = showIf;

  factory _$FormSchemaLogicImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormSchemaLogicImplFromJson(json);

  final List<FormSchemaLogicCondition>? _showIf;
  @override
  List<FormSchemaLogicCondition>? get showIf {
    final value = _showIf;
    if (value == null) return null;
    if (_showIf is EqualUnmodifiableListView) return _showIf;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FormSchemaLogic(showIf: $showIf)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormSchemaLogicImpl &&
            const DeepCollectionEquality().equals(other._showIf, _showIf));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_showIf));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormSchemaLogicImplCopyWith<_$FormSchemaLogicImpl> get copyWith =>
      __$$FormSchemaLogicImplCopyWithImpl<_$FormSchemaLogicImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormSchemaLogicImplToJson(
      this,
    );
  }
}

abstract class _FormSchemaLogic implements FormSchemaLogic {
  const factory _FormSchemaLogic(
      {final List<FormSchemaLogicCondition>? showIf}) = _$FormSchemaLogicImpl;

  factory _FormSchemaLogic.fromJson(Map<String, dynamic> json) =
      _$FormSchemaLogicImpl.fromJson;

  @override
  List<FormSchemaLogicCondition>? get showIf;
  @override
  @JsonKey(ignore: true)
  _$$FormSchemaLogicImplCopyWith<_$FormSchemaLogicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FormSchema _$FormSchemaFromJson(Map<String, dynamic> json) {
  return _FormSchema.fromJson(json);
}

/// @nodoc
mixin _$FormSchema {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<FormSchemaField> get fields => throw _privateConstructorUsedError;
  Map<String, FormSchemaLogic>? get logic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormSchemaCopyWith<FormSchema> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormSchemaCopyWith<$Res> {
  factory $FormSchemaCopyWith(
          FormSchema value, $Res Function(FormSchema) then) =
      _$FormSchemaCopyWithImpl<$Res, FormSchema>;
  @useResult
  $Res call(
      {String title,
      String? description,
      List<FormSchemaField> fields,
      Map<String, FormSchemaLogic>? logic});
}

/// @nodoc
class _$FormSchemaCopyWithImpl<$Res, $Val extends FormSchema>
    implements $FormSchemaCopyWith<$Res> {
  _$FormSchemaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? fields = null,
    Object? logic = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<FormSchemaField>,
      logic: freezed == logic
          ? _value.logic
          : logic // ignore: cast_nullable_to_non_nullable
              as Map<String, FormSchemaLogic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormSchemaImplCopyWith<$Res>
    implements $FormSchemaCopyWith<$Res> {
  factory _$$FormSchemaImplCopyWith(
          _$FormSchemaImpl value, $Res Function(_$FormSchemaImpl) then) =
      __$$FormSchemaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String? description,
      List<FormSchemaField> fields,
      Map<String, FormSchemaLogic>? logic});
}

/// @nodoc
class __$$FormSchemaImplCopyWithImpl<$Res>
    extends _$FormSchemaCopyWithImpl<$Res, _$FormSchemaImpl>
    implements _$$FormSchemaImplCopyWith<$Res> {
  __$$FormSchemaImplCopyWithImpl(
      _$FormSchemaImpl _value, $Res Function(_$FormSchemaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? fields = null,
    Object? logic = freezed,
  }) {
    return _then(_$FormSchemaImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: null == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<FormSchemaField>,
      logic: freezed == logic
          ? _value._logic
          : logic // ignore: cast_nullable_to_non_nullable
              as Map<String, FormSchemaLogic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormSchemaImpl implements _FormSchema {
  const _$FormSchemaImpl(
      {required this.title,
      this.description,
      required final List<FormSchemaField> fields,
      final Map<String, FormSchemaLogic>? logic})
      : _fields = fields,
        _logic = logic;

  factory _$FormSchemaImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormSchemaImplFromJson(json);

  @override
  final String title;
  @override
  final String? description;
  final List<FormSchemaField> _fields;
  @override
  List<FormSchemaField> get fields {
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fields);
  }

  final Map<String, FormSchemaLogic>? _logic;
  @override
  Map<String, FormSchemaLogic>? get logic {
    final value = _logic;
    if (value == null) return null;
    if (_logic is EqualUnmodifiableMapView) return _logic;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'FormSchema(title: $title, description: $description, fields: $fields, logic: $logic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormSchemaImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._fields, _fields) &&
            const DeepCollectionEquality().equals(other._logic, _logic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      const DeepCollectionEquality().hash(_fields),
      const DeepCollectionEquality().hash(_logic));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormSchemaImplCopyWith<_$FormSchemaImpl> get copyWith =>
      __$$FormSchemaImplCopyWithImpl<_$FormSchemaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormSchemaImplToJson(
      this,
    );
  }
}

abstract class _FormSchema implements FormSchema {
  const factory _FormSchema(
      {required final String title,
      final String? description,
      required final List<FormSchemaField> fields,
      final Map<String, FormSchemaLogic>? logic}) = _$FormSchemaImpl;

  factory _FormSchema.fromJson(Map<String, dynamic> json) =
      _$FormSchemaImpl.fromJson;

  @override
  String get title;
  @override
  String? get description;
  @override
  List<FormSchemaField> get fields;
  @override
  Map<String, FormSchemaLogic>? get logic;
  @override
  @JsonKey(ignore: true)
  _$$FormSchemaImplCopyWith<_$FormSchemaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
