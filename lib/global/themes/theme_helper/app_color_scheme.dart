import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppColorScheme {
  static final ColorScheme appColorScheme = ColorScheme.dark(
    primary: AppColors.cPrimary,
    onPrimary: AppColors.cBgPrimary500,
    primaryContainer: AppColors.cPrimary500,
    onPrimaryContainer: AppColors.cPrimary100,
    primaryFixed: AppColors.cPrimary400,
    primaryFixedDim: AppColors.cPrimary500,

    secondary: AppColors.cBlueJeans,
    onSecondary: AppColors.cPrimary100,
    secondaryContainer: AppColors.cLavender,
    onSecondaryContainer: AppColors.cPrimary100,

    tertiary: AppColors.cOrange,
    onTertiary: AppColors.cPrimary100,
    tertiaryContainer: AppColors.cSussie,
    onTertiaryContainer: AppColors.cPrimary100,

    error: AppColors.cError,
    onError: AppColors.cPrimary100,
    errorContainer: AppColors.cError,
    onErrorContainer: AppColors.cPrimary100,

    surface: AppColors.cBgPrimary,
    onSurface: AppColors.cPrimary100,
    surfaceContainerHighest: AppColors.cBgPrimary400,
    surfaceDim: AppColors.cBgPrimary500,
    surfaceBright: AppColors.cBgPrimary200,
    surfaceContainerLowest: AppColors.cBgPrimary500,
    surfaceContainerLow: AppColors.cBgPrimary400,
    surfaceContainer: AppColors.cBgPrimary,
    surfaceContainerHigh: AppColors.cBgPrimary200,

    outline: AppColors.cBgPrimary200,
    outlineVariant: AppColors.cBgPrimary100,

    shadow: AppColors.cBlack,
    scrim: AppColors.cBlack,
    inverseSurface: AppColors.cPrimary100,
    onInverseSurface: AppColors.cBgPrimary500,
    inversePrimary: AppColors.cPrimary500,
  );
}
