import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:slash/core/shared_widgets/circle_indicator.dart';
import 'package:slash/core/shared_widgets/text.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/app_values.dart';
import 'package:slash/core/utils/icons_broken.dart';

class ProductDetailsImage extends StatelessWidget {
  const ProductDetailsImage({
    super.key,
    required this.index,
    required this.imageName,
  });
  final int index;
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: index,
      child: CachedNetworkImage(
        imageUrl: imageName,
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            color: AppColors.lightBlack,
            borderRadius: BorderRadius.circular(AppSize.s30),
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.fill,
            ),
          ),
        ),
        placeholder: (context, s) => Container(
          decoration: BoxDecoration(
            color: AppColors.lightBlack,
            borderRadius: BorderRadius.circular(AppSize.s30),
          ),
          child: Center(
            child: CustomCircleIndicator(
              color: AppColors.black,
              size: AppSize.s20,
            ),
          ),
        ),
        errorWidget: (
          BuildContext context,
          String url,
          dynamic error,
        ) {
          return Container(
            decoration: BoxDecoration(
              color: AppColors.lightBlack,
              borderRadius: BorderRadius.circular(AppSize.s30),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    IconBroken.Danger,
                    size: AppSize.s50,
                    color: AppColors.grey,
                  ),
                  const SecondaryText(text: "connection error")
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
