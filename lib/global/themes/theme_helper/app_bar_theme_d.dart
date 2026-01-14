import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:echo_bazaar/global/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarThemeD {
  static final AppBarTheme appBarThemeData = AppBarTheme(
      backgroundColor: AppColors.cBgPrimary,
      foregroundColor: AppColors.cPrimary100,
      elevation: 0,
      centerTitle: false,
      titleTextStyle: AppTextStyles.heading6.copyWith(
        color: AppColors.cPrimary100,
      ),
      iconTheme: IconThemeData(color: AppColors.cPrimary100, size: 24),
      systemOverlayStyle: SystemUiOverlayStyle.light,
    );
}