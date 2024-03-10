// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'brands.freezed.dart';
part 'brands.g.dart';

@freezed
class Brands with _$Brands {
  factory Brands({
    int? id,
    @JsonKey(name: 'brand_logo_image_path') String? brandLogoImagePath,
  }) = _Brands;

  factory Brands.fromJson(Map<String, dynamic> json) => _$BrandsFromJson(json);
}
