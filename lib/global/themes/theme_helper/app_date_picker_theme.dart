import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:echo_bazaar/global/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class AppDatePickerTheme {
  static final DatePickerThemeData appDatePickerTheme = DatePickerThemeData(
    backgroundColor: AppColors.cBgPrimary400,
    headerBackgroundColor: AppColors.cPrimary,
    headerForegroundColor: AppColors.cBgPrimary500,
    weekdayStyle: AppTextStyles.bodySmallSemibold.copyWith(
      color: AppColors.cPrimary,
    ),
    dayStyle: AppTextStyles.bodyMediumRegular.copyWith(
      color: AppColors.cPrimary100,
    ),
    yearStyle: AppTextStyles.bodyMediumRegular.copyWith(
      color: AppColors.cPrimary100,
    ),
    dayForegroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.cBgPrimary500;
      }
      if (states.contains(WidgetState.disabled)) {
        return AppColors.cBgPrimary200;
      }
      return AppColors.cPrimary100;
    }),
    dayBackgroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.cPrimary;
      }
      return Colors.transparent;
    }),
    todayBackgroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.cPrimary;
      }
      return Colors.transparent;
    }),
    todayForegroundColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.cBgPrimary500;
      }
      return AppColors.cPrimary;
    }),
    todayBorder: BorderSide(color: AppColors.cPrimary, width: 1),
  );
}
