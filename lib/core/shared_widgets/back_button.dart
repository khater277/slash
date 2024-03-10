import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slash/core/utils/app_values.dart';
import 'package:slash/core/utils/icons_broken.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.pop(),
      icon: Icon(
        IconBroken.Arrow___Left_2,
        size: AppSize.s18,
      ),
    );
  }
}
