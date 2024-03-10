import 'package:flutter/material.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/app_values.dart';
import 'package:slash/core/utils/font_styles.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final bool readOnly;
  final int? maxlength;
  final IconData? prefixIcon;
  final Widget? suffixIcon;

  final ValueChanged<String>? onChange;
  final ValueChanged<String>? onFelidSubmitted;
  final void Function()? onTap;
  final TextEditingController controller;
  final TextInputType inputType;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxlength,
    this.obscureText = false,
    this.readOnly = false,
    required this.controller,
    this.onChange,
    this.onFelidSubmitted,
    this.onTap,
    required this.inputType,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: inputType,
      // onTapOutside: (event) => FocusScope.of(context).unfocus(),
      maxLength: maxlength,
      style: getSemiBoldStyle(
          fontColor: Theme.of(context).textTheme.bodyLarge!.color!),
      validator: validator,
      onChanged: onChange,
      onFieldSubmitted: onFelidSubmitted,
      onTap: onTap,
      readOnly: readOnly,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon != null
            ? Icon(
                prefixIcon,
                color: AppColors.primary,
                size: AppSize.s20,
              )
            : null,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
