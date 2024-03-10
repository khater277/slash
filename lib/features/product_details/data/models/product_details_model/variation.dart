// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'product_properties_value.dart';
import 'product_varient_image.dart';

part 'variation.freezed.dart';
part 'variation.g.dart';

@freezed
class Variation with _$Variation {
  factory Variation({
    int? id,
    int? price,
    int? quantity,
    bool? inStock,
    @JsonKey(name: 'ProductVarientImages')
    List<ProductVarientImage>? productVarientImages,
    List<ProductPropertiesValue>? productPropertiesValues,
    String? productStatus,
    bool? isDefault,
    @JsonKey(name: 'product_variation_status_id') int? productVariationStatusId,
  }) = _Variation;

  factory Variation.fromJson(Map<String, dynamic> json) =>
      _$VariationFromJson(json);
}
