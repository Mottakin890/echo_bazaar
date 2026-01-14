import 'package:echo_bazaar/global/app_dimentions/app_paddings.dart';
import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:echo_bazaar/global/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class AppToolTipTheme {
  static final TooltipThemeData appToolTipTheme = TooltipThemeData(
    decoration: BoxDecoration(
      color: AppColors.cBgPrimary400,
      borderRadius: BorderRadius.circular(AppPaddings.kPaddingSmall),
    ),
    textStyle: AppTextStyles.bodySmallRegular.copyWith(
      color: AppColors.cPrimary100,
    ),
    padding: EdgeInsets.symmetric(
      horizontal: AppPaddings.kDefaultPadding,
      vertical: AppPaddings.kPaddingSmall,
    ),
  );
}
