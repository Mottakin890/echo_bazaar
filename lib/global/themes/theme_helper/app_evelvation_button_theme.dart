import 'package:echo_bazaar/global/app_dimentions/app_paddings.dart';
import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:echo_bazaar/global/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class AppEvelvationButtonTheme {
  static final ElevatedButtonThemeData appEvelvationButtonTheme =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.cPrimary,
          foregroundColor: AppColors.cBgPrimary500,
          elevation: 0,
          padding: EdgeInsets.symmetric(
            horizontal: AppPaddings.kPaddingButtonHorizontal,
            vertical: AppPaddings.kPaddingButton,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppPaddings.kDefaultPadding),
          ),
          textStyle: AppTextStyles.bodyLargeSemibold,
        ),
      );
}
