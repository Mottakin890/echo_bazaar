import 'package:echo_bazaar/global/app_dimentions/app_paddings.dart';
import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OAuthButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback onTapAction;
  const OAuthButton({super.key, required this.icon, required this.onTapAction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapAction,
      child: Container(
        width: 120.w,
        
        decoration: BoxDecoration(border: .all(color: AppColors.cBgPrimary200), borderRadius: .circular(AppPaddings.kPaddingMedium)),
        child: Padding(
          padding: const EdgeInsets.all(AppPaddings.kPaddingButton),
          child: icon,
        ),
      ),
    );
  }
}
