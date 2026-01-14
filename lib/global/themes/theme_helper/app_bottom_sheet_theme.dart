import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppBottomSheetTheme {
  static final BottomSheetThemeData appBottomSheetTheme = BottomSheetThemeData(
    backgroundColor: AppColors.cBgPrimary400,
    elevation: 8,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    modalBackgroundColor: AppColors.cBgPrimary400,
    modalElevation: 8,
  );
}
