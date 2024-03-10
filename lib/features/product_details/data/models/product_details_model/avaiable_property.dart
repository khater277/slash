import 'package:freezed_annotation/freezed_annotation.dart';

import 'value.dart';

part 'avaiable_property.freezed.dart';
part 'avaiable_property.g.dart';

@freezed
class AvaiableProperty with _$AvaiableProperty {
  factory AvaiableProperty({
    String? property,
    List<Value>? values,
  }) = _AvaiableProperty;

  factory AvaiableProperty.fromJson(Map<String, dynamic> json) =>
      _$AvaiablePropertyFromJson(json);
}
