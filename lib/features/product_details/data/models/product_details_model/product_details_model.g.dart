// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDetailsModelImpl _$$ProductDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDetailsModelImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      description: json['description'] as String?,
      count: json['_count'] == null
          ? null
          : Count.fromJson(json['_count'] as Map<String, dynamic>),
      variations: (json['variations'] as List<dynamic>?)
          ?.map((e) => Variation.fromJson(e as Map<String, dynamic>))
          .toList(),
      avaiableProperties: (json['avaiableProperties'] as List<dynamic>?)
          ?.map((e) => AvaiableProperty.fromJson(e as Map<String, dynamic>))
          .toList(),
      brandName: json['brandName'] as String?,
      brandImage: json['brandImage'] as String?,
    );

Map<String, dynamic> _$$ProductDetailsModelImplToJson(
        _$ProductDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'description': instance.description,
      '_count': instance.count,
      'variations': instance.variations,
      'avaiableProperties': instance.avaiableProperties,
      'brandName': instance.brandName,
      'brandImage': instance.brandImage,
    };
