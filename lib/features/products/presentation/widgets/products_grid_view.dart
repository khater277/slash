import 'package:flutter/material.dart';
import 'package:slash/app/injector.dart';
import 'package:slash/core/utils/app_values.dart';
import 'package:slash/features/products/cubit/products_cubit.dart';
import 'package:slash/features/products/presentation/widgets/load_more_status.dart';
import 'package:slash/features/products/presentation/widgets/product_card.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({
    super.key,
    required ScrollController scrollController,
  }) : _scrollController = scrollController;

  final ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            controller: _scrollController,
            padding: EdgeInsets.symmetric(
                vertical: AppHeight.h10, horizontal: AppWidth.w20),
            physics: const BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: MediaQuery.sizeOf(context).width / 2,
              mainAxisSpacing: AppHeight.h30,
              crossAxisSpacing: AppWidth.w25,
              childAspectRatio: 0.68,
            ),
            itemBuilder: (context, index) =>
                ProductCard(productModel: di<ProductsCubit>().products[index]),
            itemCount: di<ProductsCubit>().products.length,
          ),
        ),
        const LoadMoreStatus(),
      ],
    );
  }
}
