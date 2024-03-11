import 'package:flutter/material.dart';
import 'package:slash/config/navigation.dart';
import 'package:slash/core/shared_widgets/text.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/app_fonts.dart';
import 'package:slash/features/cart/presentation/screens/cart_screen.dart';

class ProductsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProductsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: LargeHeadText(
        text: "SLASH.",
        size: FontSize.s26,
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () => Go.to(context: context, screen: const CartScreen()),
          icon: const Icon(
            Icons.shopping_cart,
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
