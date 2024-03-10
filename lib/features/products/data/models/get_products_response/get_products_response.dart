// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'product_model.dart';
import 'pagination.dart';

part 'get_products_response.freezed.dart';
part 'get_products_response.g.dart';

@freezed
class GetProductsResponse with _$GetProductsResponse {
  factory GetProductsResponse({
    int? statusCode,
    String? message,
    Pagination? pagination,
    @JsonKey(name: 'data') List<ProductModel>? products,
  }) = _GetProductsResponse;

  factory GetProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetProductsResponseFromJson(json);
}
