// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_varient_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductVarientImageImpl _$$ProductVarientImageImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductVarientImageImpl(
      id: json['id'] as int?,
      imagePath: json['image_path'] as String?,
      productVarientId: json['product_varient_id'] as int?,
    );

Map<String, dynamic> _$$ProductVarientImageImplToJson(
        _$ProductVarientImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_path': instance.imagePath,
      'product_varient_id': instance.productVarientId,
    };
