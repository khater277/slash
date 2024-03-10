import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_properties_value.freezed.dart';
part 'product_properties_value.g.dart';

@freezed
class ProductPropertiesValue with _$ProductPropertiesValue {
  factory ProductPropertiesValue({
    String? value,
    String? property,
  }) = _ProductPropertiesValue;

  factory ProductPropertiesValue.fromJson(Map<String, dynamic> json) =>
      _$ProductPropertiesValueFromJson(json);
}
