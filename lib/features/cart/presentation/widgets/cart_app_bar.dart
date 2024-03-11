import 'package:flutter/material.dart';
import 'package:slash/core/shared_widgets/text.dart';
import 'package:slash/core/utils/app_fonts.dart';

class CartAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: LargeHeadText(
        text: "My cart",
        size: FontSize.s22,
      ),
      centerTitle: true,
      titleSpacing: 0.0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
