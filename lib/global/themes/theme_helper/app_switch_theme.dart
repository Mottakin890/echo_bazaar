import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppSwitchTheme {
  static final SwitchThemeData appSwitchTheme = SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.cPrimary;
      }
      return AppColors.cBgPrimary100;
    }),
    trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.cPrimary.withValues(alpha: 0.5);
      }
      return AppColors.cBgPrimary200;
    }),
  );
}
