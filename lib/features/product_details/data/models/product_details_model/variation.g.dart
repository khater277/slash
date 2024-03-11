// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variation.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VariationAdapter extends TypeAdapter<Variation> {
  @override
  final int typeId = 1;

  @override
  Variation read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Variation(
      id: fields[0] as int?,
      price: fields[1] as int?,
      quantity: fields[2] as int?,
      inStock: fields[3] as bool?,
      productVarientImages: (fields[4] as List?)?.cast<ProductVarientImage>(),
      productPropertiesValues:
          (fields[5] as List?)?.cast<ProductPropertiesValue>(),
      productStatus: fields[6] as String?,
      isDefault: fields[7] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, Variation obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.price)
      ..writeByte(2)
      ..write(obj.quantity)
      ..writeByte(3)
      ..write(obj.inStock)
      ..writeByte(4)
      ..write(obj.productVarientImages)
      ..writeByte(5)
      ..write(obj.productPropertiesValues)
      ..writeByte(6)
      ..write(obj.productStatus)
      ..writeByte(7)
      ..write(obj.isDefault);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VariationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VariationImpl _$$VariationImplFromJson(Map<String, dynamic> json) =>
    _$VariationImpl(
      id: json['id'] as int?,
      price: json['price'] as int?,
      quantity: json['quantity'] as int?,
      inStock: json['inStock'] as bool?,
      productVarientImages: (json['ProductVarientImages'] as List<dynamic>?)
          ?.map((e) => ProductVarientImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      productPropertiesValues: (json['productPropertiesValues']
              as List<dynamic>?)
          ?.map(
              (e) => ProductPropertiesValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      productStatus: json['productStatus'] as String?,
      isDefault: json['isDefault'] as bool?,
      productVariationStatusId: json['product_variation_status_id'] as int?,
    );

Map<String, dynamic> _$$VariationImplToJson(_$VariationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'quantity': instance.quantity,
      'inStock': instance.inStock,
      'ProductVarientImages': instance.productVarientImages,
      'productPropertiesValues': instance.productPropertiesValues,
      'productStatus': instance.productStatus,
      'isDefault': instance.isDefault,
      'product_variation_status_id': instance.productVariationStatusId,
    };
