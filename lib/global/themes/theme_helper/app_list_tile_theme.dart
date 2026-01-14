import 'package:echo_bazaar/global/app_dimentions/app_paddings.dart';
import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:echo_bazaar/global/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class AppListTileTheme {
  static final ListTileThemeData appListTileTheme = ListTileThemeData(
    tileColor: Colors.transparent,
    selectedTileColor: AppColors.cPrimary.withValues(alpha: 0.1),
    iconColor: AppColors.cBgPrimary100,
    textColor: AppColors.cPrimary100,
    titleTextStyle: AppTextStyles.bodyLargeMedium.copyWith(
      color: AppColors.cPrimary100,
    ),
    subtitleTextStyle: AppTextStyles.bodySmallRegular.copyWith(
      color: AppColors.cBgPrimary100,
    ),
    contentPadding: EdgeInsets.symmetric(
      horizontal: AppPaddings.kPaddingMedium,
      vertical: AppPaddings.kPaddingSmall,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppPaddings.kPaddingSmall),
    ),
  );
}
