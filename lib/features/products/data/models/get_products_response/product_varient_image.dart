// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_varient_image.freezed.dart';
part 'product_varient_image.g.dart';

@freezed
class ProductVarientImage with _$ProductVarientImage {
  factory ProductVarientImage({
    int? id,
    @JsonKey(name: 'image_path') String? imagePath,
    @JsonKey(name: 'product_varient_id') int? productVarientId,
  }) = _ProductVarientImage;

  factory ProductVarientImage.fromJson(Map<String, dynamic> json) =>
      _$ProductVarientImageFromJson(json);
}
