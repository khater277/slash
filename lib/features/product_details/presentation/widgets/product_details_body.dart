import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/app/injector.dart';
import 'package:slash/core/shared_widgets/circle_indicator.dart';
import 'package:slash/core/shared_widgets/get_data_error.dart';
import 'package:slash/core/utils/app_values.dart';
import 'package:slash/features/product_details/cubit/product_details_cubit.dart';
import 'package:slash/features/product_details/presentation/widgets/add_to_cart_button.dart';
import 'package:slash/features/product_details/presentation/widgets/image_slider/product_details_image_slider.dart';
import 'package:slash/features/product_details/presentation/widgets/image_slider/product_details_images_row.dart';
import 'package:slash/features/product_details/presentation/widgets/product_info/brand_details.dart';
import 'package:slash/features/product_details/presentation/widgets/product_info/product_description.dart';
import 'package:slash/features/product_details/presentation/widgets/product_info/product_name_and_price.dart';
import 'package:slash/features/product_details/presentation/widgets/variations/product_color_variation.dart';
import 'package:slash/features/product_details/presentation/widgets/variations/product_material_variation.dart';
import 'package:slash/features/product_details/presentation/widgets/variations/product_size_variation.dart';

class ProductDetailsBody extends StatefulWidget {
  const ProductDetailsBody({
    super.key,
    required this.id,
  });

  final int id;

  @override
  State<ProductDetailsBody> createState() => _ProductDetailsBodyState();
}

class _ProductDetailsBodyState extends State<ProductDetailsBody> {
  late PageController _pageController;
  final ScrollController _scrollController = ScrollController();
  final int _currentPage = 0;

  @override
  void initState() {
    _pageController =
        PageController(initialPage: _currentPage, viewportFraction: 0.8);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
      builder: (context, state) {
        return state.maybeWhen(
          getProductDetailsLoading: () => const Center(
            child: CustomCircleIndicator(),
          ),
          getProductDetailsError: (errorMsg) => GetDataError(
            errorMsg: errorMsg,
            onPressed: () =>
                di<ProductDetailsCubit>().getProductDetails(id: widget.id),
          ),
          orElse: () => Padding(
            padding: EdgeInsets.symmetric(horizontal: AppWidth.w8),
            child: SingleChildScrollView(
              controller: _scrollController,
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: AppHeight.h20),
                  ProductDetailsImageSlider(pageController: _pageController),
                  SizedBox(height: AppHeight.h20),
                  const ProductDetailsImagesRow(),
                  SizedBox(height: AppHeight.h20),
                  const Row(
                    children: [
                      Expanded(child: ProductNameAndPrice()),
                      BrandDetails()
                    ],
                  ),
                  const ProductColorVariation(),
                  const ProductSizeVariation(),
                  const ProductMaterialVariation(),
                  SizedBox(height: AppHeight.h20),
                  ProductDescription(scrollController: _scrollController),
                  SizedBox(height: AppHeight.h20),
                  const AddToCartButton(),
                  SizedBox(height: AppHeight.h20),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
