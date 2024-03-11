import 'package:flutter/material.dart';
import 'package:slash/features/cart/presentation/widgets/cart_app_bar.dart';
import 'package:slash/features/cart/presentation/widgets/cart_body.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final ScrollController _scrollController = ScrollController();
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CartAppBar(),
      body: CartScreenBody(scrollController: _scrollController),
    );
  }
}
