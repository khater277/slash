import 'package:flutter/material.dart';
import 'package:slash/app/injector.dart';
import 'package:slash/core/shared_widgets/text.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/app_fonts.dart';
import 'package:slash/core/utils/app_values.dart';
import 'package:slash/features/cart/cubit/cart_cubit.dart';
import 'package:slash/features/cart/data/models/cart_model/cart_model.dart';

class CartItemQuantity extends StatelessWidget {
  const CartItemQuantity({
    super.key,
    required this.cartModel,
  });

  final CartModel cartModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LargeHeadText(
          text: "EGP ${cartModel.quantity * cartModel.variation.price!}",
          size: FontSize.s14,
        ),
        SizedBox(height: AppHeight.h5),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.offWhite,
              width: 0.4,
            ),
            borderRadius: BorderRadius.circular(AppSize.s5),
          ),
          padding: EdgeInsets.symmetric(
            vertical: AppHeight.h3,
            horizontal: AppWidth.w6,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {
                  if (cartModel.quantity > 1) {
                    final quantity = cartModel.quantity - 1;
                    di<CartCubit>().addProductToCart(
                      cartModel: cartModel.copyWith(
                        quantity: quantity,
                      ),
                    );
                  }
                },
                child: Icon(
                  Icons.remove,
                  size: AppSize.s18,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppWidth.w10),
                child: SmallHeadText(
                  text: "${cartModel.quantity}",
                ),
              ),
              GestureDetector(
                onTap: () {
                  final quantity = cartModel.quantity + 1;
                  di<CartCubit>().addProductToCart(
                      cartModel: cartModel.copyWith(
                    quantity: quantity,
                  ));
                },
                child: Icon(
                  Icons.add,
                  size: AppSize.s18,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
