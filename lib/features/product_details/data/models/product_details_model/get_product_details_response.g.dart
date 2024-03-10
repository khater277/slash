// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_product_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetProductDetailsResponseImpl _$$GetProductDetailsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetProductDetailsResponseImpl(
      productDetailsModel: json['data'] == null
          ? null
          : ProductDetailsModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int?,
    );

Map<String, dynamic> _$$GetProductDetailsResponseImplToJson(
        _$GetProductDetailsResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.productDetailsModel,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };
