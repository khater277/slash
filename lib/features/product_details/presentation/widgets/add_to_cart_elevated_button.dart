import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/app/injector.dart';
import 'package:slash/core/shared_widgets/button.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/app_fonts.dart';
import 'package:slash/features/product_details/cubit/product_details_cubit.dart';

class AddToCartElevatedButton extends StatelessWidget {
  const AddToCartElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
      builder: (context, state) {
        return CustomButton(
          text: di<ProductDetailsCubit>()
                      .productDetails!
                      .productDetailsModel!
                      .variations![di<ProductDetailsCubit>().colorSelectedIndex]
                      .inStock ==
                  true
              ? "Add to cart"
              : "Out of stock",
          textSize: FontSize.s16,
          textColor: di<ProductDetailsCubit>()
                      .productDetails!
                      .productDetailsModel!
                      .variations![di<ProductDetailsCubit>().colorSelectedIndex]
                      .inStock ==
                  true
              ? null
              : AppColors.grey.withOpacity(0.7),
          onPressed: di<ProductDetailsCubit>()
                      .productDetails!
                      .productDetailsModel!
                      .variations![di<ProductDetailsCubit>().colorSelectedIndex]
                      .inStock ==
                  true
              ? () {}
              : null,
        );
      },
    );
  }
}
