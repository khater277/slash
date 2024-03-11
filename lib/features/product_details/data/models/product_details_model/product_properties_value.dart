import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'product_properties_value.freezed.dart';
part 'product_properties_value.g.dart';

@freezed
@HiveType(typeId: 3)
class ProductPropertiesValue with _$ProductPropertiesValue {
  factory ProductPropertiesValue({
    @HiveField(0) String? value,
    @HiveField(1) String? property,
  }) = _ProductPropertiesValue;

  factory ProductPropertiesValue.fromJson(Map<String, dynamic> json) =>
      _$ProductPropertiesValueFromJson(json);
}
