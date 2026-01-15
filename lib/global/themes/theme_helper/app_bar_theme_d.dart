import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:echo_bazaar/global/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarThemeD {
  static final AppBarTheme appBarThemeData = AppBarTheme(
      backgroundColor: AppColors.cBgPrimary,
      foregroundColor: AppColors.cBgPrimary,
      elevation: 0,
      centerTitle: false,
      titleTextStyle: AppTextStyles.heading6.copyWith(
        color: AppColors.cPrimary100,
      ),
      iconTheme: IconThemeData(color: AppColors.cPrimary100, size: 24.sp),
      systemOverlayStyle: SystemUiOverlayStyle.light,
    );
}