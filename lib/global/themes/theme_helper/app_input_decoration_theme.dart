import 'package:echo_bazaar/global/app_dimentions/app_paddings.dart';
import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:echo_bazaar/global/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class AppInputDecorationTheme {
  static final InputDecorationTheme appInputDecorationTheme =
      InputDecorationTheme(
        filled: true,
        fillColor: AppColors.cBgPrimary,
        contentPadding: EdgeInsets.symmetric(
          horizontal: AppPaddings.kPaddingMedium,
          vertical: AppPaddings.kPaddingButton,
        ),

        // Border styles
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppPaddings.kPaddingMedium),
          borderSide: BorderSide(color: AppColors.cBgPrimary200, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppPaddings.kPaddingMedium),
          borderSide: BorderSide(color: AppColors.cBgPrimary200, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppPaddings.kPaddingMedium),
          borderSide: BorderSide(color: AppColors.cPrimary, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppPaddings.kPaddingMedium),
          borderSide: BorderSide(color: AppColors.cError, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppPaddings.kPaddingMedium),
          borderSide: BorderSide(color: AppColors.cError, width: 1),
        ),

        // Text styles
        labelStyle: AppTextStyles.bodyMediumRegular.copyWith(
          color: AppColors.cBgPrimary100,
        ),
        floatingLabelStyle: AppTextStyles.bodyMediumSemibold.copyWith(
          color: AppColors.cPrimary,
        ),
        hintStyle: AppTextStyles.bodyMediumRegular.copyWith(
          color: AppColors.cBgPrimary200,
          fontWeight: .bold
        ),
        errorStyle: AppTextStyles.bodySmallRegular.copyWith(
          color: AppColors.cError,

        ),

        // Icon colors
        prefixIconColor: AppColors.cBgPrimary100,
        suffixIconColor: AppColors.cBgPrimary100,
      );
}
