import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash/core/shared_widgets/rounded_image.dart';
import 'package:slash/core/shared_widgets/text.dart';
import 'package:slash/core/utils/app_fonts.dart';
import 'package:slash/core/utils/app_values.dart';

class CartItemTitle extends StatelessWidget {
  final String brandLogo;
  final String brandName;
  final int price;
  const CartItemTitle({
    super.key,
    required this.brandLogo,
    required this.brandName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomRoundedImage(imageUrl: brandLogo),
        SizedBox(width: AppWidth.w8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmallHeadText(
                text: "Order from",
                size: FontSize.s12,
              ),
              SizedBox(height: AppHeight.h1),
              LargeHeadText(
                text: brandName,
                size: FontSize.s14,
                maxLines: 3,
              ),
            ],
          ),
        ),
        SizedBox(width: AppWidth.w5),
        SmallHeadText(text: "EGP $price"),
      ],
    );
  }
}
