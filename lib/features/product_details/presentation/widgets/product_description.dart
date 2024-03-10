import 'package:flutter/material.dart';
import 'package:slash/app/injector.dart';
import 'package:slash/config/app_theme.dart';
import 'package:slash/core/shared_widgets/text.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/app_values.dart';
import 'package:slash/features/product_details/cubit/product_details_cubit.dart';

class ProductDescription extends StatefulWidget {
  final ScrollController scrollController;
  const ProductDescription({
    super.key,
    required this.scrollController,
  });

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  final GlobalKey expansionTileKey = GlobalKey();
  void _scrollToSelectedContent({required GlobalKey expansionTileKey}) {
    final keyContext = expansionTileKey.currentContext;
    if (keyContext != null) {
      Future.delayed(const Duration(milliseconds: 200)).then((value) {
        Scrollable.ensureVisible(keyContext,
            duration: const Duration(milliseconds: 200));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.darkTheme().copyWith(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      child: ExpansionTile(
        key: expansionTileKey,
        title: const LargeHeadText(text: "Description"),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: AppColors.lightBlack,
          ),
          borderRadius: BorderRadius.circular(AppSize.s20),
        ),
        iconColor: AppColors.grey,
        backgroundColor: AppColors.lightBlack,
        collapsedBackgroundColor: AppColors.lightBlack,
        collapsedShape: RoundedRectangleBorder(
          side: const BorderSide(
            color: AppColors.lightBlack,
          ),
          borderRadius: BorderRadius.circular(AppSize.s20),
        ),
        expandedCrossAxisAlignment: CrossAxisAlignment.center,
        onExpansionChanged: (value) {
          if (value) {
            _scrollToSelectedContent(expansionTileKey: expansionTileKey);
          }
        },
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppWidth.w10)
                .add(EdgeInsets.only(bottom: AppHeight.h10)),
            child: SmallHeadText(
              text: di<ProductDetailsCubit>()
                  .productDetails!
                  .productDetailsModel!
                  .description!,
              maxLines: 100,
            ),
          ),
        ],
      ),
    );
  }
}
