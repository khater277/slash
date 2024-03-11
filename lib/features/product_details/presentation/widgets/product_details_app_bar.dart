import 'package:flutter/material.dart';
import 'package:slash/core/shared_widgets/text.dart';
import 'package:slash/core/utils/app_fonts.dart';

class ProductDetailsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ProductDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: LargeHeadText(
        text: "Product details",
        size: FontSize.s18,
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
