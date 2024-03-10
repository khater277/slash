// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'product_varient_image.dart';

part 'product_variation.freezed.dart';
part 'product_variation.g.dart';

@freezed
class ProductVariation with _$ProductVariation {
  factory ProductVariation({
    int? id,
    @JsonKey(name: 'product_id') int? productId,
    int? price,
    @JsonKey(name: 'ProductVarientImages')
        List<ProductVarientImage>? productVarientImages,
  }) = _ProductVariation;

  factory ProductVariation.fromJson(Map<String, dynamic> json) =>
      _$ProductVariationFromJson(json);
}
