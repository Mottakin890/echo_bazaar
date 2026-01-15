import 'package:echo_bazaar/global/app_dimentions/app_paddings.dart';
import 'package:echo_bazaar/global/themes/app_text_style.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_action_icon_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_banner_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_bar_theme_d.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_bottom_sheet_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_card_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_check_box_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_chip_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_color_scheme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_data_table_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_date_picker_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_dialog_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_drawer_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_drop_down_menu_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_evelvation_button_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_expansion_tile_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_icon_button_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_input_decoration_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_list_tile_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_navigation_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_outline_button_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_pop_up_menu_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_scroll_bar_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_search_bar_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_slider_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_snackbar_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_switch_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_text_button_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_time_picker_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/app_tool_tip_theme.dart';
import 'package:echo_bazaar/global/themes/theme_helper/bottom_navigation_theme_d.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    // Color Scheme
    colorScheme: AppColorScheme.appColorScheme,

    //text style
    textTheme: TextTheme(
      displayLarge: AppTextStyles.heading1,
      displayMedium: AppTextStyles.heading2,
      displaySmall: AppTextStyles.heading3,
      headlineLarge: AppTextStyles.heading3,
      headlineMedium: AppTextStyles.heading4,
      headlineSmall: AppTextStyles.heading5,
      titleLarge: AppTextStyles.heading6,
      titleMedium: AppTextStyles.bodyXLargeSemibold,
      titleSmall: AppTextStyles.bodyLargeSemibold,
      bodyLarge: AppTextStyles.bodyLargeRegular,
      bodyMedium: AppTextStyles.bodyMediumRegular,
      bodySmall: AppTextStyles.bodySmallRegular,
      labelLarge: AppTextStyles.bodyMediumSemibold,
      labelMedium: AppTextStyles.bodySmallSemibold,
      labelSmall: AppTextStyles.bodyXSmallSemibold,
    ),

    // Scaffold Background
    scaffoldBackgroundColor: AppColors.cBgPrimary,

    // AppBar Theme
    appBarTheme: AppBarThemeD.appBarThemeData,

    // Bottom Navigation Bar
    bottomNavigationBarTheme:
        BottomNavigationThemeD.bottomNavigationBarThemeData,

    // Navigation Bar (Material 3)
    navigationBarTheme: AppNavigationTheme.navigationBarTheme,

    // Card Theme
    cardTheme: AppCardTheme.appCardTheme,

    // Elevated Button
    elevatedButtonTheme: AppEvelvationButtonTheme.appEvelvationButtonTheme,

    // Outlined Button
    outlinedButtonTheme: AppOutlineButtonTheme.appEvelvationButtonTheme,

    // Text Button
    textButtonTheme: AppTextButtonTheme.appTextButtonTheme,

    // Icon Button
    iconButtonTheme: AppIconButtonTheme.appIconButtonTheme,

    // Icon Theme
    iconTheme: IconThemeData(color: AppColors.cPrimary100, size: 24),

    // Input Decoration Theme
    inputDecorationTheme: AppInputDecorationTheme.appInputDecorationTheme,

    // Chip Theme
    chipTheme: AppChipTheme.appChipTheme,

    // Dialog Theme
    dialogTheme: AppDialogTheme.appDialogTheme,

    // Bottom Sheet Theme
    bottomSheetTheme: AppBottomSheetTheme.appBottomSheetTheme,

    // Snackbar Theme (with proper color usage)
    snackBarTheme: AppSnackbarTheme.appSnackbarTheme,

    // Divider Theme
    dividerTheme: DividerThemeData(
      color: AppColors.cBgPrimary200,
      thickness: 1,
      space: 1,
    ),

    // Switch Theme
    switchTheme: AppSwitchTheme.appSwitchTheme,

    // Checkbox Theme
    checkboxTheme: AppCheckBoxTheme.appCheckBoxTheme,

    // Radio Theme
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.cPrimary;
        }
        return AppColors.cBgPrimary200;
      }),
    ),

    // Slider Theme
    sliderTheme: AppSliderTheme.appSliderTheme,

    // Progress Indicator Theme
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: AppColors.cPrimary,
      circularTrackColor: AppColors.cBgPrimary200,
      linearTrackColor: AppColors.cBgPrimary200,
    ),

    // Badge Theme
    badgeTheme: BadgeThemeData(
      backgroundColor: AppColors.cError,
      textColor: AppColors.cPrimary100,
      textStyle: AppTextStyles.bodyXSmallBold,
    ),

    // Floating Action Button
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.cPrimary,
      foregroundColor: AppColors.cBgPrimary500,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppPaddings.kPaddingMedium),
      ),
    ),

    // List Tile Theme
    listTileTheme: AppListTileTheme.appListTileTheme,

    // Tooltip Theme
    tooltipTheme: AppToolTipTheme.appToolTipTheme,

    // Tab Bar Theme
    tabBarTheme: TabBarThemeData(
      labelColor: AppColors.cPrimary,
      unselectedLabelColor: AppColors.cBgPrimary100,
      labelStyle: AppTextStyles.bodyMediumSemibold,
      unselectedLabelStyle: AppTextStyles.bodyMediumRegular,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: AppColors.cPrimary, width: 2),
      ),
    ),

    // Search Bar Theme
    searchBarTheme: AppSearchBarTheme.appSearchBarTheme,

    // Popup Menu Theme
    popupMenuTheme: AppPopUpMenuTheme.popupMenuTheme,

    // Drawer Theme
    drawerTheme: AppDrawerTheme.appDrawerTheme,

    // Expansion Tile Theme
    expansionTileTheme: AppExpansionTileTheme.appExpansionTileTheme,

    // Time Picker Theme
    timePickerTheme: AppTimePickerTheme.appTimePickerTheme,

    // Date Picker Theme
    datePickerTheme: AppDatePickerTheme.appDatePickerTheme,

    // Menu Theme (for DropdownMenu, MenuBar, etc)
    menuTheme: MenuThemeData(
      style: MenuStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.cBgPrimary400),
        elevation: WidgetStateProperty.all(8),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppPaddings.kDefaultPadding),
          ),
        ),
      ),
    ),

    menuButtonTheme: MenuButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.hovered)) {
            return AppColors.cPrimary.withValues(alpha: 0.1);
          }
          return Colors.transparent;
        }),
        foregroundColor: WidgetStateProperty.all(AppColors.cPrimary100),
      ),
    ),

    // Dropdown Menu Theme
    dropdownMenuTheme: AppDropDownMenuTheme.appDropDownMenuTheme,

    // Banner Theme (for MaterialBanner - useful for warnings/alerts)
    bannerTheme: AppBannerTheme.appBannerTheme,

    // Action Icon Theme
    actionIconTheme: AppActionIconTheme.actionIconTheme,

    // Text Selection Theme
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.cPrimary,
      selectionColor: AppColors.cPrimary.withValues(alpha: 0.3),
      selectionHandleColor: AppColors.cPrimary,
    ),

    // Scrollbar Theme
    scrollbarTheme: AppScrollBarTheme.appScrollBarTheme,

    // Data Table Theme
    dataTableTheme: AppDataTableTheme.appDataTableTheme,
  );
}
