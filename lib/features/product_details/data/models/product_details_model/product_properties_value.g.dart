// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_properties_value.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductPropertiesValueAdapter
    extends TypeAdapter<ProductPropertiesValue> {
  @override
  final int typeId = 3;

  @override
  ProductPropertiesValue read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductPropertiesValue(
      value: fields[0] as String?,
      property: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ProductPropertiesValue obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.value)
      ..writeByte(1)
      ..write(obj.property);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductPropertiesValueAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductPropertiesValueImpl _$$ProductPropertiesValueImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductPropertiesValueImpl(
      value: json['value'] as String?,
      property: json['property'] as String?,
    );

Map<String, dynamic> _$$ProductPropertiesValueImplToJson(
        _$ProductPropertiesValueImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'property': instance.property,
    };
