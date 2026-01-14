import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:echo_bazaar/global/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class AppNavigationTheme {
  static final NavigationBarThemeData navigationBarTheme =
      NavigationBarThemeData(
        backgroundColor: AppColors.cBgPrimary400,
        indicatorColor: AppColors.cPrimary.withValues(alpha: 0.2),
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return AppTextStyles.bodySmallSemibold.copyWith(
              color: AppColors.cPrimary,
            );
          }
          return AppTextStyles.bodySmallRegular.copyWith(
            color: AppColors.cBgPrimary100,
          );
        }),
      );
}
