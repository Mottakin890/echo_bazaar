import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.cBgPrimary100,
        
      ),
    );
  }
}