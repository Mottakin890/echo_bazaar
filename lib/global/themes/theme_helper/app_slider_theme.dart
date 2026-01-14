import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:echo_bazaar/global/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class AppSliderTheme {
  static final SliderThemeData appSliderTheme = SliderThemeData(
    activeTrackColor: AppColors.cPrimary,
    inactiveTrackColor: AppColors.cBgPrimary200,
    thumbColor: AppColors.cPrimary,
    overlayColor: AppColors.cPrimary.withValues(alpha: 0.2),
    valueIndicatorColor: AppColors.cPrimary,
    valueIndicatorTextStyle: AppTextStyles.bodySmallBold.copyWith(
      color: AppColors.cBgPrimary500,
    ),
  );
}
