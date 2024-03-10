import 'package:flutter/material.dart';
import 'package:slash/core/shared_widgets/network_image.dart';
import 'package:slash/core/utils/app_values.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.imageUrl,
    required this.height,
  });

  final String imageUrl;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppSize.s20),
      child: CustomNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.fill,
        height: height,
        width: double.infinity,
      ),
    );
  }
}
