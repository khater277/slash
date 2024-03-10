import 'package:flutter/material.dart';
import 'package:slash/core/shared_widgets/text.dart';
import 'package:slash/core/utils/app_values.dart';

class ProductVariationBuilder extends StatelessWidget {
  final String title;
  final int length;
  final double height;
  final Widget? Function(BuildContext, int) item;
  const ProductVariationBuilder(
      {super.key,
      required this.title,
      required this.length,
      required this.height,
      required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LargeHeadText(text: title),
        SizedBox(height: AppHeight.h5),
        Center(
          child: SizedBox(
            height: height,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: item,
              separatorBuilder: (context, index) =>
                  SizedBox(width: AppWidth.w10),
              itemCount: length,
            ),
          ),
        ),
      ],
    );
  }
}
