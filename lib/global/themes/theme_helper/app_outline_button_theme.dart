import 'package:echo_bazaar/global/app_dimentions/app_paddings.dart';
import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:echo_bazaar/global/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class AppOutlineButtonTheme {
  static final OutlinedButtonThemeData appEvelvationButtonTheme =
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.cPrimary,
          side: BorderSide(color: AppColors.cPrimary, width: 1.5),
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppPaddings.kDefaultPadding),
          ),
          textStyle: AppTextStyles.bodyLargeSemibold,
        ),
      );
}
