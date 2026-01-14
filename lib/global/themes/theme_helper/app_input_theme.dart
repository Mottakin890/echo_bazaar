import 'package:echo_bazaar/global/app_dimentions/app_paddings.dart';
import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppInputTheme {
  static final InputDecorationTheme appInpuTheme = InputDecorationTheme(
    filled: true,
    fillColor: AppColors.cBgPrimary400,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppPaddings.kDefaultPadding),
      borderSide: BorderSide(color: AppColors.cBgPrimary200),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppPaddings.kDefaultPadding),
      borderSide: BorderSide(color: AppColors.cBgPrimary200),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppPaddings.kDefaultPadding),
      borderSide: BorderSide(color: AppColors.cPrimary, width: 2),
    ),
  );
}
