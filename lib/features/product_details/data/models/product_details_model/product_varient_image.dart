// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'product_varient_image.freezed.dart';
part 'product_varient_image.g.dart';

@freezed
@HiveType(typeId: 2)
class ProductVarientImage with _$ProductVarientImage {
  factory ProductVarientImage({
    @HiveField(0) int? id,
    @HiveField(1) @JsonKey(name: 'image_path') String? imagePath,
  }) = _ProductVarientImage;

  factory ProductVarientImage.fromJson(Map<String, dynamic> json) =>
      _$ProductVarientImageFromJson(json);
}
