import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash/app/injector.dart';
import 'package:slash/config/app_theme.dart';
import 'package:slash/features/cart/cubit/cart_cubit.dart';
import 'package:slash/features/product_details/cubit/product_details_cubit.dart';
import 'package:slash/features/products/cubit/products_cubit.dart';
import 'package:slash/features/products/presentation/screens/products_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 667),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (BuildContext context) =>
                    di<ProductsCubit>()..getProducts(),
              ),
              BlocProvider(
                create: (BuildContext context) => di<ProductDetailsCubit>(),
              ),
              BlocProvider(
                create: (BuildContext context) => di<CartCubit>(),
              ),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: AppTheme.darkTheme(),
              home: const ProductsScreen(),
            ),
          );
        });
  }
}
