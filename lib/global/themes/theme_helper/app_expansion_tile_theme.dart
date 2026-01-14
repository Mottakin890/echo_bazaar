import 'package:echo_bazaar/global/app_dimentions/app_paddings.dart';
import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppExpansionTileTheme {
  static final ExpansionTileThemeData appExpansionTileTheme =
      ExpansionTileThemeData(
        backgroundColor: AppColors.cBgPrimary400,
        collapsedBackgroundColor: Colors.transparent,
        textColor: AppColors.cPrimary100,
        collapsedTextColor: AppColors.cBgPrimary100,
        iconColor: AppColors.cPrimary,
        collapsedIconColor: AppColors.cBgPrimary100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppPaddings.kPaddingSmall),
        ),
      );
}
