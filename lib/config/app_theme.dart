import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/app_fonts.dart';
import 'package:slash/core/utils/app_values.dart';
import 'package:slash/core/utils/font_styles.dart';

class AppTheme {
  static ThemeData darkTheme() {
    return ThemeData(
      primarySwatch: AppColors.generateMaterialColor(AppColors.primary),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.white70,
        foregroundColor: Colors.black,
        elevation: 0,
        // shape: RoundedRectangleBorder(),
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),

      textTheme: TextTheme(
        bodyLarge: getSemiBoldStyle(fontColor: Colors.white),
        bodyMedium: getMediumStyle(fontColor: Colors.white),
        bodySmall: getRegularStyle(fontColor: Colors.white.withOpacity(0.5)),
      ),
      scaffoldBackgroundColor: AppColors.black,
      appBarTheme: AppBarTheme(
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          elevation: 0,
          backgroundColor: AppColors.black,
          surfaceTintColor: AppColors.black,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.dark,
            statusBarColor: AppColors.black,
          ),
          titleTextStyle:
              getBoldStyle(fontSize: FontSize.s20, fontColor: AppColors.white),
          actionsIconTheme: const IconThemeData(
            color: Colors.white,
          )),
      cardColor: AppColors.black,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: AppColors.darkBlack,
        type: BottomNavigationBarType.fixed,
      ),

      ///card
      cardTheme: CardTheme(
        elevation: 0,
        color: Colors.transparent,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s16)),
      ),

      /// elevated button
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColors.primary,
        textStyle: getMediumStyle(
          fontColor: AppColors.black,
          fontSize: FontSize.s15,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s20)),
        minimumSize: Size(double.infinity, AppHeight.h45),
      )),

      /// text button
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: AppColors.primary)),

      /// input decoration
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: getRegularStyle(
          fontColor: AppColors.grey.withOpacity(0.6),
        ),
        fillColor: AppColors.lightBlack,
        filled: true,
        contentPadding: EdgeInsets.symmetric(
            vertical: AppHeight.h2, horizontal: AppWidth.w12),
        errorStyle: getRegularStyle(
            fontColor: AppColors.lightRed, fontSize: FontSize.s12),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s20),
            borderSide: BorderSide(
              color: AppColors.lightRed,
            )),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s20),
            borderSide: BorderSide(
              color: AppColors.lightRed,
            )),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s20),
            borderSide: const BorderSide(
              color: AppColors.lightBlack,
            )),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s20),
          borderSide: const BorderSide(
            color: AppColors.lightBlack,
          ),
        ),
      ),
    );
  }
}
