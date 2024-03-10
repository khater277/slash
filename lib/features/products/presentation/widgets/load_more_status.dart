import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/app/injector.dart';
import 'package:slash/core/shared_widgets/circle_indicator.dart';
import 'package:slash/core/shared_widgets/text.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/app_fonts.dart';
import 'package:slash/core/utils/app_values.dart';
import 'package:slash/features/products/cubit/products_cubit.dart';

class LoadMoreStatus extends StatelessWidget {
  const LoadMoreStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      buildWhen: (previous, current) => current.maybeWhen(
        loadMoreLoading: () => true,
        loadMoreSuccess: () => true,
        loadMoreError: (errorMsg) => true,
        orElse: () => false,
      ),
      builder: (context, state) {
        return state.maybeWhen(
          loadMoreLoading: () => Padding(
            padding: EdgeInsets.symmetric(vertical: AppHeight.h10),
            child: const CustomCircleIndicator(),
          ),
          loadMoreError: (errorMsg) => Padding(
            padding: EdgeInsets.symmetric(vertical: AppHeight.h10),
            child: Column(
              children: [
                SmallHeadText(
                  text: errorMsg,
                  size: FontSize.s12,
                  color: AppColors.grey,
                  maxLines: 10,
                  center: true,
                ),
                IconButton(
                    onPressed: () => di<ProductsCubit>().loadMore(),
                    icon: const Icon(
                      Icons.refresh,
                      color: AppColors.primary,
                    ))
              ],
            ),
          ),
          orElse: () => SizedBox(height: AppHeight.h5),
        );
      },
    );
  }
}
