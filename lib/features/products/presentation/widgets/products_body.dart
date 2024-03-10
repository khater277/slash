import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/app/injector.dart';
import 'package:slash/core/shared_widgets/circle_indicator.dart';
import 'package:slash/core/shared_widgets/get_data_error.dart';
import 'package:slash/features/products/cubit/products_cubit.dart';
import 'package:slash/features/products/presentation/widgets/products_grid_view.dart';

class ProductsBody extends StatefulWidget {
  const ProductsBody({super.key});

  @override
  State<ProductsBody> createState() => _ProductsBodyState();
}

class _ProductsBodyState extends State<ProductsBody> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.offset >=
              _scrollController.position.maxScrollExtent &&
          !_scrollController.position.outOfRange &&
          di<ProductsCubit>().state != const ProductsState.loadMoreLoading()) {
        di<ProductsCubit>().loadMore();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductsCubit, ProductsState>(
      listener: (context, state) {
        state.maybeWhen(
          loadMoreSuccess: () => _scrollController.animateTo(
            _scrollController.offset + (MediaQuery.sizeOf(context).height / 3),
            duration: const Duration(milliseconds: 600),
            curve: Curves.easeIn,
          ),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          getProductsLoading: () => const Center(
            child: CustomCircleIndicator(),
          ),
          getProductsError: (errorMsg) => GetDataError(
            errorMsg: errorMsg,
            onPressed: () => di<ProductsCubit>().getProducts(),
          ),
          orElse: () => ProductsGridView(scrollController: _scrollController),
        );
      },
    );
  }
}
