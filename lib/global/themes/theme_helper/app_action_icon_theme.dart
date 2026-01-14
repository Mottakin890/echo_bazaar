import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppActionIconTheme {
  static final ActionIconThemeData actionIconTheme = ActionIconThemeData(
    backButtonIconBuilder: (context) =>
        Icon(Icons.arrow_back_ios_new_outlined, color: AppColors.cPrimary100),
    closeButtonIconBuilder: (context) =>
        Icon(Icons.close, color: AppColors.cPrimary100),
    drawerButtonIconBuilder: (context) =>
        Icon(Icons.menu, color: AppColors.cPrimary100),
    endDrawerButtonIconBuilder: (context) =>
        Icon(Icons.menu, color: AppColors.cPrimary100),
  );
}
