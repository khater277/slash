import 'package:flutter/material.dart';
import 'package:slash/core/shared_widgets/text.dart';
import 'package:slash/core/utils/app_fonts.dart';
import 'package:slash/core/utils/app_values.dart';
import 'package:slash/features/cart/presentation/widgets/cart_item_details/cart_item_properties.dart';
import 'package:slash/features/product_details/data/models/product_details_model/product_properties_value.dart';

class CartItemNameAndProperties extends StatelessWidget {
  const CartItemNameAndProperties({
    super.key,
    required this.productName,
    required this.properties,
  });

  final String productName;
  final List<ProductPropertiesValue> properties;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LargeHeadText(
            text: productName,
            size: FontSize.s14,
            maxLines: 3,
          ),
          SizedBox(height: AppHeight.h2),
          CartItemProperties(properties: properties),
          SizedBox(height: AppHeight.h2),
        ],
      ),
    );
  }
}
