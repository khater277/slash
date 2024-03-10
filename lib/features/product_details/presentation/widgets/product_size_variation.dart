import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/app/injector.dart';
import 'package:slash/core/shared_widgets/text.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/app_values.dart';
import 'package:slash/features/product_details/cubit/product_details_cubit.dart';
import 'package:slash/features/product_details/presentation/widgets/product_variation_builder.dart';

class ProductSizeVariation extends StatelessWidget {
  const ProductSizeVariation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
      builder: (context, state) {
        if (di<ProductDetailsCubit>().sizesList.isNotEmpty) {
          return Padding(
            padding: EdgeInsets.only(bottom: AppHeight.h10),
            child: ProductVariationBuilder(
              title: "Size",
              length: di<ProductDetailsCubit>().sizesList.length,
              height: AppHeight.h40,
              item: (context, index) => Center(
                child: GestureDetector(
                  onTap: () => di<ProductDetailsCubit>()
                      .changeSelectedSizeIndex(index: index),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: AppHeight.h5,
                      horizontal: AppWidth.w10,
                    ),
                    decoration: BoxDecoration(
                      color:
                          di<ProductDetailsCubit>().sizeSelectedIndex == index
                              ? AppColors.primary
                              : AppColors.lightBlack,
                      borderRadius: BorderRadius.circular(AppSize.s8),
                    ),
                    child: LargeHeadText(
                      text:
                          "${di<ProductDetailsCubit>().sizesList[index].value}",
                      color:
                          di<ProductDetailsCubit>().sizeSelectedIndex == index
                              ? AppColors.black
                              : AppColors.white,
                    ),
                  ),
                ),
              ),
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
