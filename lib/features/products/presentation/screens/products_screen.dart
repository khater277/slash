import 'package:flutter/material.dart';
import 'package:slash/features/products/presentation/widgets/products_app_bar.dart';
import 'package:slash/features/products/presentation/widgets/products_body.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: ProductsAppBar(),
        body: ProductsBody(),
      ),
    );
  }
}
