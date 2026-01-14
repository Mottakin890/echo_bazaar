import 'package:echo_bazaar/global/app_dimentions/app_paddings.dart';
import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppScrollBarTheme {
  static final ScrollbarThemeData appScrollBarTheme = ScrollbarThemeData(
    thumbColor: WidgetStateProperty.all(
      AppColors.cPrimary.withValues(alpha: 0.5),
    ),
    trackColor: WidgetStateProperty.all(
      AppColors.cBgPrimary200.withValues(alpha: 0.2),
    ),
    trackBorderColor: WidgetStateProperty.all(Colors.transparent),
    radius: Radius.circular(AppPaddings.kPaddingSmall),
    thickness: WidgetStateProperty.all(6),
    thumbVisibility: WidgetStateProperty.all(false),
    trackVisibility: WidgetStateProperty.all(false),
  );
}
