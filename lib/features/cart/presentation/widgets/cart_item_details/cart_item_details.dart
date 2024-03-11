import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash/core/shared_widgets/rounded_image.dart';
import 'package:slash/core/utils/app_values.dart';
import 'package:slash/features/cart/data/models/cart_model/cart_model.dart';
import 'package:slash/features/cart/presentation/widgets/cart_item_details/cart_item_name_and_properties.dart';
import 'package:slash/features/cart/presentation/widgets/cart_item_details/cart_item_quantity.dart';
import 'package:slash/features/cart/presentation/widgets/cart_item_details/delete_cart_item_button.dart';

class CartItemDetails extends StatelessWidget {
  final CartModel cartModel;
  const CartItemDetails({
    super.key,
    required this.cartModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: AppHeight.h10,
        horizontal: AppWidth.w15,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomRoundedImage(
                imageUrl:
                    cartModel.variation.productVarientImages!.first.imagePath!,
                height: AppHeight.h60,
                width: AppWidth.w60,
              ),
              SizedBox(width: AppWidth.w8),
              CartItemNameAndProperties(
                productName: cartModel.productName,
                properties: cartModel.variation.productPropertiesValues!,
              ),
              SizedBox(width: AppWidth.w10),
              CartItemQuantity(cartModel: cartModel),
            ],
          ),
          SizedBox(height: AppHeight.h14),
          DeleteCartItemButton(id: cartModel.id)
        ],
      ),
    );
  }
}
