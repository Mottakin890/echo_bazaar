import 'package:echo_bazaar/global/app_dimentions/app_paddings.dart';
import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:echo_bazaar/global/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class AppDataTableTheme {
  static final DataTableThemeData appDataTableTheme = DataTableThemeData(
    decoration: BoxDecoration(
      color: AppColors.cBgPrimary400,
      borderRadius: BorderRadius.circular(AppPaddings.kDefaultPadding),
    ),
    dataRowColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.cPrimary.withValues(alpha: 0.1);
      }
      return null;
    }),
    dataTextStyle: AppTextStyles.bodyMediumRegular.copyWith(
      color: AppColors.cPrimary100,
    ),
    headingTextStyle: AppTextStyles.bodyMediumSemibold.copyWith(
      color: AppColors.cPrimary,
    ),
    headingRowColor: WidgetStateProperty.all(AppColors.cBgPrimary),
    dividerThickness: 1,
    columnSpacing: 24,
    horizontalMargin: AppPaddings.kPaddingMedium,
    checkboxHorizontalMargin: AppPaddings.kDefaultPadding,
  );
}
