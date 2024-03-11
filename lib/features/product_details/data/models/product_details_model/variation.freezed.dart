// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Variation _$VariationFromJson(Map<String, dynamic> json) {
  return _Variation.fromJson(json);
}

/// @nodoc
mixin _$Variation {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get price => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get quantity => throw _privateConstructorUsedError;
  @HiveField(3)
  bool? get inStock => throw _privateConstructorUsedError;
  @JsonKey(name: 'ProductVarientImages')
  @HiveField(4)
  List<ProductVarientImage>? get productVarientImages =>
      throw _privateConstructorUsedError;
  @HiveField(5)
  List<ProductPropertiesValue>? get productPropertiesValues =>
      throw _privateConstructorUsedError;
  @HiveField(6)
  String? get productStatus => throw _privateConstructorUsedError;
  @HiveField(7)
  bool? get isDefault => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_variation_status_id')
  int? get productVariationStatusId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariationCopyWith<Variation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariationCopyWith<$Res> {
  factory $VariationCopyWith(Variation value, $Res Function(Variation) then) =
      _$VariationCopyWithImpl<$Res, Variation>;
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) int? price,
      @HiveField(2) int? quantity,
      @HiveField(3) bool? inStock,
      @JsonKey(name: 'ProductVarientImages')
      @HiveField(4)
      List<ProductVarientImage>? productVarientImages,
      @HiveField(5) List<ProductPropertiesValue>? productPropertiesValues,
      @HiveField(6) String? productStatus,
      @HiveField(7) bool? isDefault,
      @JsonKey(name: 'product_variation_status_id')
      int? productVariationStatusId});
}

/// @nodoc
class _$VariationCopyWithImpl<$Res, $Val extends Variation>
    implements $VariationCopyWith<$Res> {
  _$VariationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? inStock = freezed,
    Object? productVarientImages = freezed,
    Object? productPropertiesValues = freezed,
    Object? productStatus = freezed,
    Object? isDefault = freezed,
    Object? productVariationStatusId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      inStock: freezed == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as bool?,
      productVarientImages: freezed == productVarientImages
          ? _value.productVarientImages
          : productVarientImages // ignore: cast_nullable_to_non_nullable
              as List<ProductVarientImage>?,
      productPropertiesValues: freezed == productPropertiesValues
          ? _value.productPropertiesValues
          : productPropertiesValues // ignore: cast_nullable_to_non_nullable
              as List<ProductPropertiesValue>?,
      productStatus: freezed == productStatus
          ? _value.productStatus
          : productStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
      productVariationStatusId: freezed == productVariationStatusId
          ? _value.productVariationStatusId
          : productVariationStatusId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VariationImplCopyWith<$Res>
    implements $VariationCopyWith<$Res> {
  factory _$$VariationImplCopyWith(
          _$VariationImpl value, $Res Function(_$VariationImpl) then) =
      __$$VariationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) int? price,
      @HiveField(2) int? quantity,
      @HiveField(3) bool? inStock,
      @JsonKey(name: 'ProductVarientImages')
      @HiveField(4)
      List<ProductVarientImage>? productVarientImages,
      @HiveField(5) List<ProductPropertiesValue>? productPropertiesValues,
      @HiveField(6) String? productStatus,
      @HiveField(7) bool? isDefault,
      @JsonKey(name: 'product_variation_status_id')
      int? productVariationStatusId});
}

/// @nodoc
class __$$VariationImplCopyWithImpl<$Res>
    extends _$VariationCopyWithImpl<$Res, _$VariationImpl>
    implements _$$VariationImplCopyWith<$Res> {
  __$$VariationImplCopyWithImpl(
      _$VariationImpl _value, $Res Function(_$VariationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? inStock = freezed,
    Object? productVarientImages = freezed,
    Object? productPropertiesValues = freezed,
    Object? productStatus = freezed,
    Object? isDefault = freezed,
    Object? productVariationStatusId = freezed,
  }) {
    return _then(_$VariationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      inStock: freezed == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as bool?,
      productVarientImages: freezed == productVarientImages
          ? _value._productVarientImages
          : productVarientImages // ignore: cast_nullable_to_non_nullable
              as List<ProductVarientImage>?,
      productPropertiesValues: freezed == productPropertiesValues
          ? _value._productPropertiesValues
          : productPropertiesValues // ignore: cast_nullable_to_non_nullable
              as List<ProductPropertiesValue>?,
      productStatus: freezed == productStatus
          ? _value.productStatus
          : productStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
      productVariationStatusId: freezed == productVariationStatusId
          ? _value.productVariationStatusId
          : productVariationStatusId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VariationImpl implements _Variation {
  _$VariationImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.price,
      @HiveField(2) this.quantity,
      @HiveField(3) this.inStock,
      @JsonKey(name: 'ProductVarientImages')
      @HiveField(4)
      final List<ProductVarientImage>? productVarientImages,
      @HiveField(5) final List<ProductPropertiesValue>? productPropertiesValues,
      @HiveField(6) this.productStatus,
      @HiveField(7) this.isDefault,
      @JsonKey(name: 'product_variation_status_id')
      this.productVariationStatusId})
      : _productVarientImages = productVarientImages,
        _productPropertiesValues = productPropertiesValues;

  factory _$VariationImpl.fromJson(Map<String, dynamic> json) =>
      _$$VariationImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final int? price;
  @override
  @HiveField(2)
  final int? quantity;
  @override
  @HiveField(3)
  final bool? inStock;
  final List<ProductVarientImage>? _productVarientImages;
  @override
  @JsonKey(name: 'ProductVarientImages')
  @HiveField(4)
  List<ProductVarientImage>? get productVarientImages {
    final value = _productVarientImages;
    if (value == null) return null;
    if (_productVarientImages is EqualUnmodifiableListView)
      return _productVarientImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductPropertiesValue>? _productPropertiesValues;
  @override
  @HiveField(5)
  List<ProductPropertiesValue>? get productPropertiesValues {
    final value = _productPropertiesValues;
    if (value == null) return null;
    if (_productPropertiesValues is EqualUnmodifiableListView)
      return _productPropertiesValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(6)
  final String? productStatus;
  @override
  @HiveField(7)
  final bool? isDefault;
  @override
  @JsonKey(name: 'product_variation_status_id')
  final int? productVariationStatusId;

  @override
  String toString() {
    return 'Variation(id: $id, price: $price, quantity: $quantity, inStock: $inStock, productVarientImages: $productVarientImages, productPropertiesValues: $productPropertiesValues, productStatus: $productStatus, isDefault: $isDefault, productVariationStatusId: $productVariationStatusId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.inStock, inStock) || other.inStock == inStock) &&
            const DeepCollectionEquality()
                .equals(other._productVarientImages, _productVarientImages) &&
            const DeepCollectionEquality().equals(
                other._productPropertiesValues, _productPropertiesValues) &&
            (identical(other.productStatus, productStatus) ||
                other.productStatus == productStatus) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(
                    other.productVariationStatusId, productVariationStatusId) ||
                other.productVariationStatusId == productVariationStatusId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      price,
      quantity,
      inStock,
      const DeepCollectionEquality().hash(_productVarientImages),
      const DeepCollectionEquality().hash(_productPropertiesValues),
      productStatus,
      isDefault,
      productVariationStatusId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VariationImplCopyWith<_$VariationImpl> get copyWith =>
      __$$VariationImplCopyWithImpl<_$VariationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VariationImplToJson(
      this,
    );
  }
}

abstract class _Variation implements Variation {
  factory _Variation(
      {@HiveField(0) final int? id,
      @HiveField(1) final int? price,
      @HiveField(2) final int? quantity,
      @HiveField(3) final bool? inStock,
      @JsonKey(name: 'ProductVarientImages')
      @HiveField(4)
      final List<ProductVarientImage>? productVarientImages,
      @HiveField(5) final List<ProductPropertiesValue>? productPropertiesValues,
      @HiveField(6) final String? productStatus,
      @HiveField(7) final bool? isDefault,
      @JsonKey(name: 'product_variation_status_id')
      final int? productVariationStatusId}) = _$VariationImpl;

  factory _Variation.fromJson(Map<String, dynamic> json) =
      _$VariationImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  int? get price;
  @override
  @HiveField(2)
  int? get quantity;
  @override
  @HiveField(3)
  bool? get inStock;
  @override
  @JsonKey(name: 'ProductVarientImages')
  @HiveField(4)
  List<ProductVarientImage>? get productVarientImages;
  @override
  @HiveField(5)
  List<ProductPropertiesValue>? get productPropertiesValues;
  @override
  @HiveField(6)
  String? get productStatus;
  @override
  @HiveField(7)
  bool? get isDefault;
  @override
  @JsonKey(name: 'product_variation_status_id')
  int? get productVariationStatusId;
  @override
  @JsonKey(ignore: true)
  _$$VariationImplCopyWith<_$VariationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
