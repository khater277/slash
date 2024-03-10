// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VariationImpl _$$VariationImplFromJson(Map<String, dynamic> json) =>
    _$VariationImpl(
      id: json['id'] as int?,
      price: json['price'] as int?,
      quantity: json['quantity'] as int?,
      inStock: json['inStock'] as bool?,
      productVarientImages: (json['ProductVarientImages'] as List<dynamic>?)
          ?.map((e) => ProductVarientImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      productPropertiesValues: (json['productPropertiesValues']
              as List<dynamic>?)
          ?.map(
              (e) => ProductPropertiesValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      productStatus: json['productStatus'] as String?,
      isDefault: json['isDefault'] as bool?,
      productVariationStatusId: json['product_variation_status_id'] as int?,
    );

Map<String, dynamic> _$$VariationImplToJson(_$VariationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'quantity': instance.quantity,
      'inStock': instance.inStock,
      'ProductVarientImages': instance.productVarientImages,
      'productPropertiesValues': instance.productPropertiesValues,
      'productStatus': instance.productStatus,
      'isDefault': instance.isDefault,
      'product_variation_status_id': instance.productVariationStatusId,
    };
