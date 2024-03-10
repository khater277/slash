import 'package:flutter/material.dart';
import 'package:slash/app/injector.dart';
import 'package:slash/features/product_details/cubit/product_details_cubit.dart';
import 'package:slash/features/product_details/presentation/widgets/product_details_app_bar.dart';
import 'package:slash/features/product_details/presentation/widgets/product_details_body.dart';

class ProductDetailsScreen extends StatefulWidget {
  final int id;
  const ProductDetailsScreen({super.key, required this.id});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  void initState() {
    di<ProductDetailsCubit>().getProductDetails(id: widget.id);
    super.initState();
  }

  @override
  void dispose() {
    di<ProductDetailsCubit>().imageIndex = 0;
    di<ProductDetailsCubit>().sub = 1;
    di<ProductDetailsCubit>().price = 0;
    di<ProductDetailsCubit>().colorSelectedIndex = 0;
    di<ProductDetailsCubit>().sizeSelectedIndex = 0;
    di<ProductDetailsCubit>().materialSelectedIndex = 0;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ProductDetailsAppBar(),
      body: ProductDetailsBody(id: widget.id),
    );
  }
}
