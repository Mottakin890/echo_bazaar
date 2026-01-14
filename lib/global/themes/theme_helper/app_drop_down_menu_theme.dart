import 'package:echo_bazaar/global/app_dimentions/app_paddings.dart';
import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:echo_bazaar/global/themes/app_text_style.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_input_decoration_theme.dart';
import 'package:flutter/material.dart';

class AppDropDownMenuTheme {
  static final DropdownMenuThemeData appDropDownMenuTheme =
      DropdownMenuThemeData(
        menuStyle: MenuStyle(
          backgroundColor: WidgetStateProperty.all(AppColors.cBgPrimary400),
          elevation: WidgetStateProperty.all(8),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppPaddings.kDefaultPadding),
            ),
          ),
        ),
        textStyle: AppTextStyles.bodyMediumRegular.copyWith(
          color: AppColors.cPrimary100,
        ),
        inputDecorationTheme: AppInputDecorationTheme.appInputDecorationTheme,
      );
}
