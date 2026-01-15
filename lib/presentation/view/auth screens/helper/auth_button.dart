import 'package:echo_bazaar/global/app_dimentions/app_paddings.dart';
import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback onTapAction;
  const AuthButton({
    super.key,
    required this.buttonName,
    required this.onTapAction,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapAction,
      child: Container(
        height: 53.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.cPrimary,
          borderRadius: .circular(AppPaddings.kPaddingMedium),
        ),
        child: Center(
          child: Text(
            buttonName,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: AppColors.cBgPrimary500,
              fontSize: 18.sp,
            ),
          ),
        ),
      ),
    );
  }
}
