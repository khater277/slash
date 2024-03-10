import 'package:flutter/material.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/app_values.dart';

class CustomCircleIndicator extends StatelessWidget {
  final double? size;
  final Color? color;
  final double? strokeWidth;
  final double? percentage;
  const CustomCircleIndicator(
      {super.key, this.size, this.color, this.strokeWidth, this.percentage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size ?? AppSize.s30,
      height: size ?? AppSize.s30,
      child: CircularProgressIndicator(
        color: color ?? AppColors.primary,
        strokeWidth: strokeWidth ?? AppSize.s2,
        backgroundColor: percentage != null ? AppColors.lightBlack : null,
        value: percentage,
      ),
    );
  }
}
