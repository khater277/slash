import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/app/injector.dart';
import 'package:slash/config/navigation.dart';
import 'package:slash/core/local_storage/cart_storage.dart';
import 'package:slash/core/shared_widgets/expansion_tile.dart';
import 'package:slash/core/shared_widgets/no_items_founded.dart';
import 'package:slash/core/utils/app_values.dart';
import 'package:slash/features/cart/cubit/cart_cubit.dart';
import 'package:slash/features/cart/presentation/widgets/cart_item_details/cart_item_details.dart';
import 'package:slash/features/cart/presentation/widgets/cart_item_title.dart';

class CartScreenBody extends StatelessWidget {
  const CartScreenBody({
    super.key,
    required ScrollController scrollController,
  }) : _scrollController = scrollController;

  final ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCubit, CartState>(
      listener: (context, state) {
        state.maybeWhen(
          deleteProductFromCart: (id) => Go.back(context: context),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Padding(
            padding: EdgeInsets.symmetric(horizontal: AppWidth.w10),
            child: di<CartStorage>().hasData()
                ? ListView.separated(
                    itemBuilder: (context, index) => CustomExpansionTile(
                      scrollController: _scrollController,
                      title: CartItemTitle(
                        brandLogo:
                            di<CartStorage>().getCartItems()[index].brandImage,
                        brandName:
                            di<CartStorage>().getCartItems()[index].brandName,
                        price: di<CartStorage>()
                            .getCartItems()[index]
                            .variation
                            .price!,
                      ),
                      borderRadius: AppSize.s20,
                      children: [
                        CartItemDetails(
                          cartModel: di<CartStorage>().getCartItems()[index],
                        )
                      ],
                    ),
                    separatorBuilder: (context, index) =>
                        SizedBox(height: AppHeight.h14),
                    itemCount: di<CartStorage>().getCartItems().length,
                  )
                : const NoItemsFounded(
                    text: "Add new items to your cart.",
                    icon: Icons.shopping_cart));
      },
    );
  }
}
