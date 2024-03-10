import 'package:flutter/material.dart';
import 'package:slash/config/navigation.dart';
import 'package:slash/core/shared_widgets/text.dart';
import 'package:slash/core/utils/app_values.dart';
import 'package:slash/features/product_details/presentation/screens/product_details_screen.dart';
import 'package:slash/features/products/data/models/get_products_response/product_model.dart';
import 'package:slash/features/products/presentation/widgets/product_image.dart';
import 'package:slash/features/products/presentation/widgets/product_name_and_brand_image.dart';

class ProductCard extends StatelessWidget {
  final ProductModel productModel;
  const ProductCard({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return GestureDetector(
          onTap: () => Go.to(
            context: context,
            screen: ProductDetailsScreen(id: productModel.id!),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductImage(
                imageUrl: productModel.productVariations!.first
                    .productVarientImages!.first.imagePath!,
                height: constraints.maxHeight * 0.60,
              ),
              SizedBox(height: AppHeight.h5),
              ProductNameAndBrandImage(
                productName: productModel.name!,
                brandImage: productModel.brands!.brandLogoImagePath!,
              ),
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: LargeHeadText(
                      text:
                          "EGP ${productModel.productVariations!.first.price!}",
                      size: AppHeight.h12,
                      maxLines: 2,
                    ),
                  ),
                  SizedBox(width: AppWidth.w5),
                  Icon(
                    Icons.favorite_outline,
                    size: AppSize.s18,
                  ),
                  SizedBox(width: AppWidth.w5),
                  Icon(
                    Icons.add_shopping_cart,
                    size: AppSize.s18,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
