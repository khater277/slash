import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:slash/app/injector.dart';
import 'package:slash/core/shared_widgets/text.dart';
import 'package:slash/core/utils/app_fonts.dart';
import 'package:slash/core/utils/app_values.dart';
import 'package:slash/features/product_details/cubit/product_details_cubit.dart';

class BrandDetails extends StatelessWidget {
  const BrandDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: AppSize.s22,
          backgroundImage: CachedNetworkImageProvider(di<ProductDetailsCubit>()
              .productDetails!
              .productDetailsModel!
              .brandImage!),
        ),
        SizedBox(height: AppHeight.h5),
        SmallHeadText(
          text: di<ProductDetailsCubit>()
                  .productDetails!
                  .productDetailsModel!
                  .brandName ??
              "unknown",
          size: FontSize.s13,
        ),
      ],
    );
  }
}
