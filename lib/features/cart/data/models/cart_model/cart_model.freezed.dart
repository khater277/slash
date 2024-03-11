// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartModel _$CartModelFromJson(Map<String, dynamic> json) {
  return _CartModel.fromJson(json);
}

/// @nodoc
mixin _$CartModel {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  Variation get variation => throw _privateConstructorUsedError;
  @HiveField(2)
  int get quantity => throw _privateConstructorUsedError;
  @HiveField(3)
  String get brandImage => throw _privateConstructorUsedError;
  @HiveField(4)
  String get brandName => throw _privateConstructorUsedError;
  @HiveField(5)
  String get productName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartModelCopyWith<CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelCopyWith<$Res> {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) then) =
      _$CartModelCopyWithImpl<$Res, CartModel>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) Variation variation,
      @HiveField(2) int quantity,
      @HiveField(3) String brandImage,
      @HiveField(4) String brandName,
      @HiveField(5) String productName});

  $VariationCopyWith<$Res> get variation;
}

/// @nodoc
class _$CartModelCopyWithImpl<$Res, $Val extends CartModel>
    implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? variation = null,
    Object? quantity = null,
    Object? brandImage = null,
    Object? brandName = null,
    Object? productName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      variation: null == variation
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as Variation,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      brandImage: null == brandImage
          ? _value.brandImage
          : brandImage // ignore: cast_nullable_to_non_nullable
              as String,
      brandName: null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VariationCopyWith<$Res> get variation {
    return $VariationCopyWith<$Res>(_value.variation, (value) {
      return _then(_value.copyWith(variation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartModelImplCopyWith<$Res>
    implements $CartModelCopyWith<$Res> {
  factory _$$CartModelImplCopyWith(
          _$CartModelImpl value, $Res Function(_$CartModelImpl) then) =
      __$$CartModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) Variation variation,
      @HiveField(2) int quantity,
      @HiveField(3) String brandImage,
      @HiveField(4) String brandName,
      @HiveField(5) String productName});

  @override
  $VariationCopyWith<$Res> get variation;
}

/// @nodoc
class __$$CartModelImplCopyWithImpl<$Res>
    extends _$CartModelCopyWithImpl<$Res, _$CartModelImpl>
    implements _$$CartModelImplCopyWith<$Res> {
  __$$CartModelImplCopyWithImpl(
      _$CartModelImpl _value, $Res Function(_$CartModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? variation = null,
    Object? quantity = null,
    Object? brandImage = null,
    Object? brandName = null,
    Object? productName = null,
  }) {
    return _then(_$CartModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      variation: null == variation
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as Variation,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      brandImage: null == brandImage
          ? _value.brandImage
          : brandImage // ignore: cast_nullable_to_non_nullable
              as String,
      brandName: null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartModelImpl implements _CartModel {
  _$CartModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.variation,
      @HiveField(2) required this.quantity,
      @HiveField(3) required this.brandImage,
      @HiveField(4) required this.brandName,
      @HiveField(5) required this.productName});

  factory _$CartModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartModelImplFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final Variation variation;
  @override
  @HiveField(2)
  final int quantity;
  @override
  @HiveField(3)
  final String brandImage;
  @override
  @HiveField(4)
  final String brandName;
  @override
  @HiveField(5)
  final String productName;

  @override
  String toString() {
    return 'CartModel(id: $id, variation: $variation, quantity: $quantity, brandImage: $brandImage, brandName: $brandName, productName: $productName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.variation, variation) ||
                other.variation == variation) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.brandImage, brandImage) ||
                other.brandImage == brandImage) &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.productName, productName) ||
                other.productName == productName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, variation, quantity, brandImage, brandName, productName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartModelImplCopyWith<_$CartModelImpl> get copyWith =>
      __$$CartModelImplCopyWithImpl<_$CartModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartModelImplToJson(
      this,
    );
  }
}

abstract class _CartModel implements CartModel {
  factory _CartModel(
      {@HiveField(0) required final int id,
      @HiveField(1) required final Variation variation,
      @HiveField(2) required final int quantity,
      @HiveField(3) required final String brandImage,
      @HiveField(4) required final String brandName,
      @HiveField(5) required final String productName}) = _$CartModelImpl;

  factory _CartModel.fromJson(Map<String, dynamic> json) =
      _$CartModelImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  Variation get variation;
  @override
  @HiveField(2)
  int get quantity;
  @override
  @HiveField(3)
  String get brandImage;
  @override
  @HiveField(4)
  String get brandName;
  @override
  @HiveField(5)
  String get productName;
  @override
  @JsonKey(ignore: true)
  _$$CartModelImplCopyWith<_$CartModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
