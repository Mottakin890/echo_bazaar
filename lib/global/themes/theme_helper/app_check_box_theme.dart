import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppCheckBoxTheme {
  static final CheckboxThemeData appCheckBoxTheme = CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.cPrimary;
      }
      return Colors.transparent;
    }),
    checkColor: WidgetStateProperty.all(AppColors.cBgPrimary500),
    side: BorderSide(color: AppColors.cBgPrimary200, width: 2),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  );
}
