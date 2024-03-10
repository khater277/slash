// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'brands.dart';
import 'product_variation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  factory ProductModel({
    int? id,
    String? name,
    String? type,
    @JsonKey(name: 'Brands') Brands? brands,
    @JsonKey(name: 'ProductVariations')
        List<ProductVariation>? productVariations,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
