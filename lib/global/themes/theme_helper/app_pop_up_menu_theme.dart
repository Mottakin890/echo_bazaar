import 'package:echo_bazaar/global/app_dimentions/app_paddings.dart';
import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:echo_bazaar/global/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class AppPopUpMenuTheme {
  static final PopupMenuThemeData popupMenuTheme = PopupMenuThemeData(
    color: AppColors.cBgPrimary400,
    elevation: 8,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppPaddings.kDefaultPadding),
    ),
    textStyle: AppTextStyles.bodyMediumRegular.copyWith(
      color: AppColors.cPrimary100,
    ),
  );
}
