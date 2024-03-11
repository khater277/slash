import 'package:flutter/material.dart';
import 'package:slash/app/injector.dart';
import 'package:slash/core/shared_widgets/expansion_tile.dart';
import 'package:slash/core/shared_widgets/text.dart';
import 'package:slash/core/utils/app_fonts.dart';
import 'package:slash/core/utils/app_values.dart';
import 'package:slash/features/product_details/cubit/product_details_cubit.dart';

class ProductDescription extends StatelessWidget {
  final ScrollController scrollController;
  const ProductDescription({
    super.key,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return CustomExpansionTile(
      scrollController: scrollController,
      title: SmallHeadText(
        text: "Description",
        size: FontSize.s15,
      ),
      borderRadius: AppSize.s20,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppWidth.w10)
              .add(EdgeInsets.only(bottom: AppHeight.h10)),
          child: SmallHeadText(
            text: di<ProductDetailsCubit>().productDetails!.description!,
            maxLines: 100,
            size: FontSize.s13,
            center: true,
          ),
        ),
      ],
    );
  }
}
