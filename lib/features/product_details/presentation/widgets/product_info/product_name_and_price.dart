import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/app/injector.dart';
import 'package:slash/core/shared_widgets/text.dart';
import 'package:slash/core/utils/app_values.dart';
import 'package:slash/features/product_details/cubit/product_details_cubit.dart';

class ProductNameAndPrice extends StatelessWidget {
  const ProductNameAndPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LargeHeadText(
          text: di<ProductDetailsCubit>().productDetails!.name ?? "unknown",
          maxLines: 2,
        ),
        SizedBox(height: AppHeight.h10),
        BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
          builder: (context, state) {
            return LargeHeadText(
              text: "EGP ${di<ProductDetailsCubit>().price}",
            );
          },
        ),
      ],
    );
  }
}
