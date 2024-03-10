import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/app/injector.dart';
import 'package:slash/core/utils/app_values.dart';
import 'package:slash/features/product_details/cubit/product_details_cubit.dart';
import 'package:slash/features/product_details/presentation/widgets/product_details_row_image.dart';

class ProductDetailsImagesRow extends StatelessWidget {
  const ProductDetailsImagesRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: AppHeight.h50,
        child: BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
          builder: (context, state) {
            return ListView.separated(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  ProductDetailsRowImage(index: index),
              separatorBuilder: (context, index) =>
                  SizedBox(width: AppWidth.w5),
              itemCount: di<ProductDetailsCubit>().sliderImages.length,
            );
          },
        ),
      ),
    );
  }
}
