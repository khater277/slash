import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:slash/core/shared_widgets/text.dart';
import 'package:slash/core/utils/app_fonts.dart';
import 'package:slash/core/utils/app_values.dart';

class ProductNameAndBrandImage extends StatelessWidget {
  const ProductNameAndBrandImage({
    super.key,
    required this.productName,
    required this.brandImage,
  });

  final String productName;
  final String brandImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: LargeHeadText(
            text: productName,
            size: FontSize.s13,
            maxLines: 3,
          ),
        ),
        SizedBox(width: AppWidth.w10),
        CircleAvatar(
          radius: AppSize.s13,
          backgroundImage: CachedNetworkImageProvider(brandImage),
        )
      ],
    );
  }
}
