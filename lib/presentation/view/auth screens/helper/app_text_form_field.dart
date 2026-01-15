import 'package:echo_bazaar/global/app_dimentions/app_paddings.dart';
import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppTextFormField extends StatefulWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final bool obsecureText;
  final String suffixIcon;
  final VoidCallback? toggleVisibility;
  final Widget? suffixIconWidget;

  const AppTextFormField({
    super.key,
    required this.textEditingController,
    required this.hintText,
    required this.obsecureText,
    required this.suffixIcon,
    this.toggleVisibility,
    this.suffixIconWidget,
  });

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obsecureText,
      controller: widget.textEditingController,
      decoration: InputDecoration(
        hintText: widget.hintText,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(AppPaddings.kPaddingButton),
          child: SvgPicture.asset(
            widget.suffixIcon,
            colorFilter: ColorFilter.mode(
              AppColors.cPrimary100,
              BlendMode.srcIn,
            ),
          ),
        ),
        suffixIcon: widget.suffixIconWidget,
      ),
    );
  }
}
