import 'package:flutter/material.dart';
import 'package:slash/core/shared_widgets/text.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/app_fonts.dart';
import 'package:slash/core/utils/app_values.dart';
import 'package:slash/features/product_details/data/models/product_details_model/product_properties_value.dart';

class CartItemProperties extends StatelessWidget {
  const CartItemProperties({
    super.key,
    required this.properties,
  });

  final List<ProductPropertiesValue> properties;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppHeight.h20,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => properties[index].property != "Color"
            ? Container(
                padding: EdgeInsets.symmetric(
                  vertical: AppHeight.h2,
                  horizontal: AppWidth.w5,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(AppSize.s10),
                ),
                child: SmallHeadText(
                  text: properties[index].value!,
                  size: FontSize.s12,
                  color: AppColors.black,
                ),
              )
            : const SizedBox(),
        separatorBuilder: (context, index) => SizedBox(width: AppWidth.w4),
        itemCount: properties.length,
      ),
    );
  }
}
