// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_properties_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductPropertiesValue _$ProductPropertiesValueFromJson(
    Map<String, dynamic> json) {
  return _ProductPropertiesValue.fromJson(json);
}

/// @nodoc
mixin _$ProductPropertiesValue {
  String? get value => throw _privateConstructorUsedError;
  String? get property => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductPropertiesValueCopyWith<ProductPropertiesValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPropertiesValueCopyWith<$Res> {
  factory $ProductPropertiesValueCopyWith(ProductPropertiesValue value,
          $Res Function(ProductPropertiesValue) then) =
      _$ProductPropertiesValueCopyWithImpl<$Res, ProductPropertiesValue>;
  @useResult
  $Res call({String? value, String? property});
}

/// @nodoc
class _$ProductPropertiesValueCopyWithImpl<$Res,
        $Val extends ProductPropertiesValue>
    implements $ProductPropertiesValueCopyWith<$Res> {
  _$ProductPropertiesValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? property = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      property: freezed == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductPropertiesValueImplCopyWith<$Res>
    implements $ProductPropertiesValueCopyWith<$Res> {
  factory _$$ProductPropertiesValueImplCopyWith(
          _$ProductPropertiesValueImpl value,
          $Res Function(_$ProductPropertiesValueImpl) then) =
      __$$ProductPropertiesValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? value, String? property});
}

/// @nodoc
class __$$ProductPropertiesValueImplCopyWithImpl<$Res>
    extends _$ProductPropertiesValueCopyWithImpl<$Res,
        _$ProductPropertiesValueImpl>
    implements _$$ProductPropertiesValueImplCopyWith<$Res> {
  __$$ProductPropertiesValueImplCopyWithImpl(
      _$ProductPropertiesValueImpl _value,
      $Res Function(_$ProductPropertiesValueImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? property = freezed,
  }) {
    return _then(_$ProductPropertiesValueImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      property: freezed == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductPropertiesValueImpl implements _ProductPropertiesValue {
  _$ProductPropertiesValueImpl({this.value, this.property});

  factory _$ProductPropertiesValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductPropertiesValueImplFromJson(json);

  @override
  final String? value;
  @override
  final String? property;

  @override
  String toString() {
    return 'ProductPropertiesValue(value: $value, property: $property)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductPropertiesValueImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.property, property) ||
                other.property == property));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, property);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductPropertiesValueImplCopyWith<_$ProductPropertiesValueImpl>
      get copyWith => __$$ProductPropertiesValueImplCopyWithImpl<
          _$ProductPropertiesValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductPropertiesValueImplToJson(
      this,
    );
  }
}

abstract class _ProductPropertiesValue implements ProductPropertiesValue {
  factory _ProductPropertiesValue(
      {final String? value,
      final String? property}) = _$ProductPropertiesValueImpl;

  factory _ProductPropertiesValue.fromJson(Map<String, dynamic> json) =
      _$ProductPropertiesValueImpl.fromJson;

  @override
  String? get value;
  @override
  String? get property;
  @override
  @JsonKey(ignore: true)
  _$$ProductPropertiesValueImplCopyWith<_$ProductPropertiesValueImpl>
      get copyWith => throw _privateConstructorUsedError;
}
