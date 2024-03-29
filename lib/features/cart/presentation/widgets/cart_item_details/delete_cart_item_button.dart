import 'package:flutter/material.dart';
import 'package:slash/app/injector.dart';
import 'package:slash/core/shared_widgets/alert_dialog.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/app_values.dart';
import 'package:slash/features/cart/cubit/cart_cubit.dart';

class DeleteCartItemButton extends StatelessWidget {
  const DeleteCartItemButton({
    super.key,
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showAlertDialog(
        context: context,
        text: "Are you sure you want to delete this product from your cart?",
        okPressed: () => di<CartCubit>().deleteProductFromCart(id: id),
      ),
      child: Icon(
        Icons.delete,
        color: AppColors.red,
        size: AppSize.s20,
      ),
    );
  }
}
