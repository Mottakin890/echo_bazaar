import 'package:echo_bazaar/global/app_dimentions/app_paddings.dart';
import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:echo_bazaar/global/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class AppSearchBarTheme {
  static final SearchBarThemeData appSearchBarTheme = SearchBarThemeData(
    backgroundColor: WidgetStateProperty.all(AppColors.cBgPrimary400),
    elevation: WidgetStateProperty.all(0),
    padding: WidgetStateProperty.all(
      EdgeInsets.symmetric(horizontal: AppPaddings.kPaddingMedium),
    ),
    textStyle: WidgetStateProperty.all(
      AppTextStyles.bodyMediumRegular.copyWith(color: AppColors.cPrimary100),
    ),
    hintStyle: WidgetStateProperty.all(
      AppTextStyles.bodyMediumRegular.copyWith(color: AppColors.cBgPrimary200),
    ),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppPaddings.kDefaultPadding),
      ),
    ),
  );
}
