// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'product_details_model.dart';

part 'get_product_details_response.freezed.dart';
part 'get_product_details_response.g.dart';

@freezed
class GetProductDetailsResponse with _$GetProductDetailsResponse {
  factory GetProductDetailsResponse({
    @JsonKey(name: 'data') ProductDetailsModel? productDetailsModel,
    String? message,
    int? statusCode,
  }) = _GetProductDetailsResponse;

  factory GetProductDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetProductDetailsResponseFromJson(json);
}
