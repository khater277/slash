// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avaiable_property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvaiablePropertyImpl _$$AvaiablePropertyImplFromJson(
        Map<String, dynamic> json) =>
    _$AvaiablePropertyImpl(
      property: json['property'] as String?,
      values: (json['values'] as List<dynamic>?)
          ?.map((e) => Value.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AvaiablePropertyImplToJson(
        _$AvaiablePropertyImpl instance) =>
    <String, dynamic>{
      'property': instance.property,
      'values': instance.values,
    };
