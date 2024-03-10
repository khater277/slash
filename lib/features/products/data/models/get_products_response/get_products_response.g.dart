// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetProductsResponseImpl _$$GetProductsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetProductsResponseImpl(
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      products: (json['data'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetProductsResponseImplToJson(
        _$GetProductsResponseImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'pagination': instance.pagination,
      'data': instance.products,
    };
