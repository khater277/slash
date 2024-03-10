// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'avaiable_property.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AvaiableProperty _$AvaiablePropertyFromJson(Map<String, dynamic> json) {
  return _AvaiableProperty.fromJson(json);
}

/// @nodoc
mixin _$AvaiableProperty {
  String? get property => throw _privateConstructorUsedError;
  List<Value>? get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvaiablePropertyCopyWith<AvaiableProperty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvaiablePropertyCopyWith<$Res> {
  factory $AvaiablePropertyCopyWith(
          AvaiableProperty value, $Res Function(AvaiableProperty) then) =
      _$AvaiablePropertyCopyWithImpl<$Res, AvaiableProperty>;
  @useResult
  $Res call({String? property, List<Value>? values});
}

/// @nodoc
class _$AvaiablePropertyCopyWithImpl<$Res, $Val extends AvaiableProperty>
    implements $AvaiablePropertyCopyWith<$Res> {
  _$AvaiablePropertyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? property = freezed,
    Object? values = freezed,
  }) {
    return _then(_value.copyWith(
      property: freezed == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as String?,
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Value>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvaiablePropertyImplCopyWith<$Res>
    implements $AvaiablePropertyCopyWith<$Res> {
  factory _$$AvaiablePropertyImplCopyWith(_$AvaiablePropertyImpl value,
          $Res Function(_$AvaiablePropertyImpl) then) =
      __$$AvaiablePropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? property, List<Value>? values});
}

/// @nodoc
class __$$AvaiablePropertyImplCopyWithImpl<$Res>
    extends _$AvaiablePropertyCopyWithImpl<$Res, _$AvaiablePropertyImpl>
    implements _$$AvaiablePropertyImplCopyWith<$Res> {
  __$$AvaiablePropertyImplCopyWithImpl(_$AvaiablePropertyImpl _value,
      $Res Function(_$AvaiablePropertyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? property = freezed,
    Object? values = freezed,
  }) {
    return _then(_$AvaiablePropertyImpl(
      property: freezed == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as String?,
      values: freezed == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<Value>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvaiablePropertyImpl implements _AvaiableProperty {
  _$AvaiablePropertyImpl({this.property, final List<Value>? values})
      : _values = values;

  factory _$AvaiablePropertyImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvaiablePropertyImplFromJson(json);

  @override
  final String? property;
  final List<Value>? _values;
  @override
  List<Value>? get values {
    final value = _values;
    if (value == null) return null;
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AvaiableProperty(property: $property, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvaiablePropertyImpl &&
            (identical(other.property, property) ||
                other.property == property) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, property, const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvaiablePropertyImplCopyWith<_$AvaiablePropertyImpl> get copyWith =>
      __$$AvaiablePropertyImplCopyWithImpl<_$AvaiablePropertyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvaiablePropertyImplToJson(
      this,
    );
  }
}

abstract class _AvaiableProperty implements AvaiableProperty {
  factory _AvaiableProperty(
      {final String? property,
      final List<Value>? values}) = _$AvaiablePropertyImpl;

  factory _AvaiableProperty.fromJson(Map<String, dynamic> json) =
      _$AvaiablePropertyImpl.fromJson;

  @override
  String? get property;
  @override
  List<Value>? get values;
  @override
  @JsonKey(ignore: true)
  _$$AvaiablePropertyImplCopyWith<_$AvaiablePropertyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
