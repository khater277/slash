// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'avaiable_property.dart';
import 'count.dart';
import 'variation.dart';

part 'product_details_model.freezed.dart';
part 'product_details_model.g.dart';

@freezed
class ProductDetailsModel with _$ProductDetailsModel {
  factory ProductDetailsModel({
    int? id,
    String? name,
    String? type,
    String? description,
    @JsonKey(name: '_count') Count? count,
    List<Variation>? variations,
    List<AvaiableProperty>? avaiableProperties,
    String? brandName,
    String? brandImage,
  }) = _ProductDetailsModel;

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsModelFromJson(json);
}
