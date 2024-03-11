import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/app/injector.dart';
import 'package:slash/core/shared_widgets/rounded_image.dart';
import 'package:slash/core/utils/app_colors.dart';
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
      builder: (context, state) {
        return GestureDetector(
          onTap: () => di<ProductDetailsCubit>()
              .changeImageIndexFromRow(imageIndex: index),
          child: CustomRoundedImage(
            imageUrl: di<ProductDetailsCubit>().sliderImages[index].imagePath!,
            border: di<ProductDetailsCubit>().imageIndex == index
                ? Border.all(width: 1, color: AppColors.primary)
                : null,
            isSmall: true,
          ),
        );
      },
    );
  }
}
