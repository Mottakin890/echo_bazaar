import 'package:echo_bazaar/global/themes/app_themes.dart';
import 'package:echo_bazaar/global/utils/routes/app_pages.dart';
import 'package:echo_bazaar/global/utils/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EchoBazaarApp extends StatelessWidget {
  const EchoBazaarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.signUp,
      theme: AppTheme.darkTheme,
      getPages: AppPages.pages,
    );
  }
}
