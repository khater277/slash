import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/app/injector.dart';
import 'package:slash/core/shared_widgets/network_image.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/app_values.dart';
import 'package:slash/features/product_details/cubit/product_details_cubit.dart';
import 'package:slash/features/product_details/presentation/widgets/product_variation_builder.dart';

class ProductColorVariation extends StatelessWidget {
  const ProductColorVariation({super.key});

  @override
  Widget build(BuildContext context) {
    if (di<ProductDetailsCubit>()
                .productDetails!
                .productDetailsModel!
                .variations !=
            null &&
        di<ProductDetailsCubit>()
            .productDetails!
            .productDetailsModel!
            .variations!
            .isNotEmpty) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: AppHeight.h20),
        child: ProductVariationBuilder(
          title: "Color",
          length: di<ProductDetailsCubit>()
              .productDetails!
              .productDetailsModel!
              .variations!
              .length,
          height: AppHeight.h50,
          item: (context, index) =>
              BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
            builder: (context, state) {
              return GestureDetector(
                onTap: () =>
                    di<ProductDetailsCubit>().changeVariationData(index: index),
                child: Container(
                  decoration: di<ProductDetailsCubit>().colorSelectedIndex ==
                          index
                      ? BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(AppSize.s9),
                          border:
                              Border.all(width: 1, color: AppColors.primary),
                        )
                      : null,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppSize.s8),
                    child: CustomNetworkImage(
                      imageUrl: di<ProductDetailsCubit>()
                          .productDetails!
                          .productDetailsModel!
                          .variations![index]
                          .productVarientImages!
                          .first
                          .imagePath!,
                      fit: BoxFit.fill,
                      height: AppSize.s50,
                      width: AppSize.s50,
                      isSmall: true,
                    ),
                  ),
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
