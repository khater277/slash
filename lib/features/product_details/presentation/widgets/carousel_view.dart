import 'dart:math';

import 'package:flutter/material.dart';
import 'package:slash/app/injector.dart';
import 'package:slash/features/product_details/cubit/product_details_cubit.dart';
import 'package:slash/features/product_details/presentation/widgets/product_details_image.dart';

class CarouselView extends StatelessWidget {
  final PageController pageController;
  final int index;
  const CarouselView({
    super.key,
    required this.pageController,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, child) {
        double value = index == 0 ? 0.0 : 0.15;
        if (pageController.position.haveDimensions) {
          value = index.toDouble() - (pageController.page ?? 0);
          value = (value * 0.15).clamp(-1, 1);
          // print("value $value index $index");
        }
        return Transform.rotate(
          angle: pi * value,
          child: ProductDetailsImage(
            index: index,
            imageName: di<ProductDetailsCubit>().sliderImages[index].imagePath!,
          ),
        );
      },
    );
  }
}
