import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:echo_bazaar/global/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class AppTimePickerTheme {
  static final TimePickerThemeData appTimePickerTheme = TimePickerThemeData(
    backgroundColor: AppColors.cBgPrimary400,
    dialBackgroundColor: AppColors.cBgPrimary,
    dialHandColor: AppColors.cPrimary,
    dialTextColor: AppColors.cPrimary100,
    hourMinuteColor: AppColors.cBgPrimary,
    hourMinuteTextColor: AppColors.cPrimary100,
    dayPeriodColor: AppColors.cBgPrimary,
    dayPeriodTextColor: AppColors.cPrimary100,
    entryModeIconColor: AppColors.cPrimary,
    helpTextStyle: AppTextStyles.bodySmallRegular.copyWith(
      color: AppColors.cBgPrimary100,
    ),
  );
}
