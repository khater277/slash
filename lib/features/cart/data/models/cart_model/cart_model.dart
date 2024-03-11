import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:slash/features/product_details/data/models/product_details_model/variation.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
@HiveType(typeId: 0)
class CartModel with _$CartModel {
  factory CartModel({
    @HiveField(0) required int id,
    @HiveField(1) required Variation variation,
    @HiveField(2) required int quantity,
    @HiveField(3) required String brandImage,
    @HiveField(4) required String brandName,
    @HiveField(5) required String productName,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}
