import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/app/injector.dart';
import 'package:slash/core/shared_widgets/rounded_image.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/app_values.dart';
import 'package:slash/features/product_details/cubit/product_details_cubit.dart';
import 'package:slash/features/product_details/presentation/widgets/variations/product_variation_builder.dart';

class ProductColorVariation extends StatelessWidget {
  const ProductColorVariation({super.key});

  @override
  Widget build(BuildContext context) {
    if (di<ProductDetailsCubit>().productDetails!.variations != null &&
        di<ProductDetailsCubit>().productDetails!.variations!.isNotEmpty) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: AppHeight.h20),
        child: ProductVariationBuilder(
          title: "Color",
          length: di<ProductDetailsCubit>().productDetails!.variations!.length,
          height: AppHeight.h50,
          item: (context, index) =>
              BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
            builder: (context, state) {
              return GestureDetector(
                onTap: () =>
                    di<ProductDetailsCubit>().changeVariationData(index: index),
                child: CustomRoundedImage(
                  imageUrl: di<ProductDetailsCubit>()
                      .productDetails!
                      .variations![index]
                      .productVarientImages!
                      .first
                      .imagePath!,
                  border: di<ProductDetailsCubit>().colorSelectedIndex == index
                      ? Border.all(width: 1, color: AppColors.primary)
                      : null,
                  isSmall: true,
                ),
              );
            },
          ),
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
