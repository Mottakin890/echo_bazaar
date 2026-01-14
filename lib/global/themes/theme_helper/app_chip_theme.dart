import 'package:echo_bazaar/global/app_dimentions/app_paddings.dart';
import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:echo_bazaar/global/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class AppChipTheme {
  static final ChipThemeData appChipTheme = ChipThemeData(
    backgroundColor: AppColors.cBgPrimary400,
    selectedColor: AppColors.cPrimary.withValues(alpha: 0.2),
    disabledColor: AppColors.cBgPrimary200,
    labelStyle: AppTextStyles.bodySmallSemibold.copyWith(
      color: AppColors.cPrimary100,
    ),
    secondaryLabelStyle: AppTextStyles.bodySmallSemibold.copyWith(
      color: AppColors.cPrimary,
    ),
    padding: EdgeInsets.symmetric(
      horizontal: AppPaddings.kDefaultPadding,
      vertical: AppPaddings.kPaddingSmall,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppPaddings.kPaddingBottomSheet),
    ),
    side: BorderSide.none,
  );
}
