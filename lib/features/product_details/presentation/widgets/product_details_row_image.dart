import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/app/injector.dart';
import 'package:slash/core/shared_widgets/network_image.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/app_values.dart';
import 'package:slash/features/product_details/cubit/product_details_cubit.dart';

class ProductDetailsRowImage extends StatelessWidget {
  final int index;
  const ProductDetailsRowImage({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
      // buildWhen: (previous, current) => current.maybeWhen(
      //   // changeImageIndexFromRow: (imageIndex) => true,
      //   orElse: () => false,
      // ),
      builder: (context, state) {
        return GestureDetector(
          onTap: () => di<ProductDetailsCubit>()
              .changeImageIndexFromRow(imageIndex: index),
          child: Container(
            decoration: di<ProductDetailsCubit>().imageIndex == index
                ? BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(AppSize.s9),
                    border: Border.all(width: 1, color: AppColors.primary),
                  )
                : null,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppSize.s8),
              child: CustomNetworkImage(
                imageUrl:
                    di<ProductDetailsCubit>().sliderImages[index].imagePath!,
                fit: BoxFit.fill,
                height: AppSize.s50,
                width: AppSize.s50,
                isSmall: true,
              ),
            ),
          ),
        );
      },
    );
  }
}
