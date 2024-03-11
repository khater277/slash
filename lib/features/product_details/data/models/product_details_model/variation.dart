// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'product_properties_value.dart';
import 'product_varient_image.dart';

part 'variation.freezed.dart';
part 'variation.g.dart';

@freezed
@HiveType(typeId: 1)
class Variation with _$Variation {
  factory Variation({
    @HiveField(0) int? id,
    @HiveField(1) int? price,
    @HiveField(2) int? quantity,
    @HiveField(3) bool? inStock,
    @JsonKey(name: 'ProductVarientImages')
    @HiveField(4)
    List<ProductVarientImage>? productVarientImages,
    @HiveField(5) List<ProductPropertiesValue>? productPropertiesValues,
    @HiveField(6) String? productStatus,
    @HiveField(7) bool? isDefault,
    @JsonKey(name: 'product_variation_status_id') int? productVariationStatusId,
  }) = _Variation;

  factory Variation.fromJson(Map<String, dynamic> json) =>
      _$VariationFromJson(json);
}
