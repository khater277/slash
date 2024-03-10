import 'package:flutter/material.dart';
import 'package:slash/app/injector.dart';
import 'package:slash/core/shared_widgets/text.dart';
import 'package:slash/core/utils/app_fonts.dart';
import 'package:slash/features/product_details/cubit/product_details_cubit.dart';

class ProductDetailsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ProductDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: LargeHeadText(
        text:
            "Product details. ${di<ProductDetailsCubit>().productDetails!.productDetailsModel!.id}",
        size: FontSize.s20,
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
