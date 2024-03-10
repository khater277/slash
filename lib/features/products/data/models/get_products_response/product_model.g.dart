// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      brands: json['Brands'] == null
          ? null
          : Brands.fromJson(json['Brands'] as Map<String, dynamic>),
      productVariations: (json['ProductVariations'] as List<dynamic>?)
          ?.map((e) => ProductVariation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'Brands': instance.brands,
      'ProductVariations': instance.productVariations,
    };
