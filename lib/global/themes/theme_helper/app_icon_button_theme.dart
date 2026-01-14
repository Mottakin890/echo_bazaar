import 'package:echo_bazaar/global/app_dimentions/app_paddings.dart';
import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppIconButtonTheme {
  static final IconButtonThemeData appIconButtonTheme = IconButtonThemeData(
    style: IconButton.styleFrom(
      foregroundColor: AppColors.cPrimary100,
      iconSize: 24,
      padding: EdgeInsets.all(AppPaddings.kPaddingSmall),
      highlightColor: AppColors.cPrimary.withValues(alpha: 0.1),
    ),
  );
}
