// ignore: depend_on_referenced_packages
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/app/injector.dart';
import 'package:slash/core/local_storage/cart_storage.dart';
import 'package:slash/core/shared_widgets/button.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/app_fonts.dart';
import 'package:slash/features/cart/cubit/cart_cubit.dart';
import 'package:slash/features/cart/data/models/cart_model/cart_model.dart';
import 'package:slash/features/product_details/cubit/product_details_cubit.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
      builder: (context, state) {
        final variation = di<ProductDetailsCubit>()
            .productDetails!
            .variations![di<ProductDetailsCubit>().colorSelectedIndex];
        return BlocBuilder<CartCubit, CartState>(
          builder: (context, state) {
            final inCart = di<CartStorage>().getCartItems().firstWhereOrNull(
                        (element) => element.id == variation.id) ==
                    null
                ? false
                : true;
            return CustomButton(
              text: variation.inStock == true
                  ? inCart
                      ? "Remove from cart"
                      : "Add to cart"
                  : "Out of stock",
              textSize: FontSize.s16,
              textColor: variation.inStock == true
                  ? null
                  : AppColors.grey.withOpacity(0.7),
              onPressed: variation.inStock == true
                  ? () {
                      if (inCart) {
                        di<CartCubit>()
                            .deleteProductFromCart(id: variation.id!);
                      } else {
                        di<CartCubit>().addProductToCart(
                          cartModel: CartModel(
                            id: variation.id!,
                            variation: variation,
                            quantity: 1,
                            brandImage: di<ProductDetailsCubit>()
                                .productDetails!
                                .brandImage!,
                            brandName: di<ProductDetailsCubit>()
                                .productDetails!
                                .brandName!,
                            productName:
                                di<ProductDetailsCubit>().productDetails!.name!,
                          ),
                        );
                      }
                    }
                  : null,
            );
          },
        );
      },
    );
  }
}
