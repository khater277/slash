import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/app/injector.dart';
import 'package:slash/features/product_details/cubit/product_details_cubit.dart';
import 'package:slash/features/product_details/presentation/widgets/carousel_view.dart';

class ProductDetailsImageSlider extends StatelessWidget {
  const ProductDetailsImageSlider({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductDetailsCubit, ProductDetailsState>(
      listener: (context, state) {
        state.maybeWhen(
          changeImageIndexFromRow: (index) {
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 400),
              curve: Curves.bounceInOut,
            );
          },
          changeVariationData: (index) => _pageController.jumpToPage(0),
          orElse: () {},
        );
      },
      builder: (context, state) => SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.4,
        width: double.infinity,
        child: PageView.builder(
          itemCount: di<ProductDetailsCubit>().sliderImages.length,
          physics: const ClampingScrollPhysics(),
          controller: _pageController,
          itemBuilder: (context, index) {
            return CarouselView(
              pageController: _pageController,
              index: index,
            );
          },
          onPageChanged: (value) {
            // print("========>${value} ${di<ProductDetailsCubit>().imageIndex}");
            di<ProductDetailsCubit>().changeImageIndexFromSlider(
              imageIndex: value,
            );
          },
          // (di<ProductDetailsCubit>().imageIndex - value).abs() == 1
          // ? di<ProductDetailsCubit>()
          //     .changeImageIndexFromSlider(imageIndex: value)
          //     : () {},
          // onPageChanged: (value) => di<ProductDetailsCubit>()
          // .changeImageIndexFromSlider(imageIndex: value),
        ),
      ),
    );
  }
}
