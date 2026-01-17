import 'package:echo_bazaar/global/app_dimentions/app_paddings.dart';
import 'package:echo_bazaar/global/app_dimentions/app_spacings.dart';
import 'package:echo_bazaar/global/resources/app_assets/app_assets.dart';
import 'package:echo_bazaar/global/resources/widgets/app_divider.dart';
import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:echo_bazaar/presentation/view/auth%20screens/helper/app_text_form_field.dart';
import 'package:echo_bazaar/presentation/view/auth%20screens/helper/auth_button.dart';
import 'package:echo_bazaar/presentation/view/auth%20screens/helper/o_auth_button.dart';
import 'package:echo_bazaar/presentation/vm/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final AuthController _authController = Get.find<AuthController>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Main content - Entire page scrollable
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Back Button
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(AppPaddings.kDefaultPadding),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 40.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              AppPaddings.kPaddingButton,
                            ),
                            border: Border.all(color: AppColors.cBgPrimary100),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              AppAssets.chevronLeftRight,
                              height: 30.h,
                              width: 30.w,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Logo Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ba',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      Text(
                        'za',
                        style: Theme.of(context).textTheme.displayMedium!
                            .copyWith(color: AppColors.cPrimary),
                      ),
                      Text(
                        'ar',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ],
                  ),
                  Spacing.vertical(40),

                  // Form Container - No longer Expanded, just a regular Container
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.cBgPrimary500,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.r),
                        topRight: Radius.circular(40.r),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppPaddings.kDefaultPadding,
                        vertical: AppPaddings.kPaddingLarge,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Header
                          Text(
                            'Get Started!',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Spacing.vertical(10),
                          Text(
                            'Enter your details below.',
                            style: Theme.of(context).textTheme.bodyMedium!
                                .copyWith(color: AppColors.cBgPrimary200),
                          ),
                          Spacing.vertical(30),

                          // Email Field
                          AppTextFormField(
                            textEditingController: _emailController,
                            hintText: 'Enter your email',
                            obsecureText: false,
                            suffixIcon: AppAssets.email,
                          ),
                          Spacing.vertical(16),

                          // Password Field
                          Obx(
                            () => AppTextFormField(
                              textEditingController: _passwordController,
                              hintText: 'Enter your password',
                              obsecureText:
                                  !_authController.isPasswordVisible.value,
                              suffixIcon: AppAssets.password,
                              suffixIconWidget: Padding(
                                padding: const EdgeInsets.all(
                                  AppPaddings.kPaddingButton,
                                ),
                                child: GestureDetector(
                                  onTap: _authController.togglePassVisibility,
                                  child: _authController.isPasswordVisible.value
                                      ? SvgPicture.asset(AppAssets.eye)
                                      : SvgPicture.asset(AppAssets.eyeSlash),
                                ),
                              ),
                            ),
                          ),
                          Spacing.vertical(16),

                          // Confirm Password Field
                          Obx(
                            () => AppTextFormField(
                              textEditingController: _confirmPasswordController,
                              hintText: 'Enter your password again',
                              obsecureText: !_authController
                                  .isConfirmPasswordVisible
                                  .value,
                              suffixIcon: AppAssets.password,
                              suffixIconWidget: Padding(
                                padding: const EdgeInsets.all(
                                  AppPaddings.kPaddingButton,
                                ),
                                child: GestureDetector(
                                  onTap: _authController
                                      .toggleConfirmPassVisibility,
                                  child:
                                      _authController
                                          .isConfirmPasswordVisible
                                          .value
                                      ? SvgPicture.asset(AppAssets.eye)
                                      : SvgPicture.asset(AppAssets.eyeSlash),
                                ),
                              ),
                            ),
                          ),
                          Spacing.vertical(24),

                          // Sign Up Button
                          AuthButton(
                            buttonName: 'Sign Up',
                            onTapAction: () {
                              // Handle sign up
                            },
                          ),
                          Spacing.vertical(40),

                          // Divider with Text
                          Row(
                            children: [
                              const Expanded(child: AppDivider()),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: AppPaddings.kDefaultPadding,
                                ),
                                child: Text(
                                  'or continue with',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ),
                              const Expanded(child: AppDivider()),
                            ],
                          ),
                          Spacing.vertical(40),

                          // OAuth Buttons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              OAuthButton(
                                icon: SvgPicture.asset(AppAssets.google),
                                onTapAction: () {},
                              ),
                              OAuthButton(
                                icon: SvgPicture.asset(
                                  AppAssets.apple,
                                  height: 35.sp,
                                  colorFilter: ColorFilter.mode(
                                    AppColors.cPrimary100,
                                    BlendMode.srcIn,
                                  ),
                                ),
                                onTapAction: () {},
                              ),
                            ],
                          ),
                          Spacing.vertical(40),

                          // Sign In Link
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Already have an account? ',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              GestureDetector(
                                onTap: () {
                                  // Navigate to sign in
                                },
                                child: Text(
                                  'Sign In',
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                        color: AppColors.cPrimary,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Spacing.vertical(20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Loading overlay
          Obx(
            () => _authController.isLoading.value
                ? Container(
                    color: Colors.black.withValues(alpha: 0.6),
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(24.w),
                        decoration: BoxDecoration(
                          color: AppColors.cBgPrimary500,
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircularProgressIndicator(
                              color: AppColors.cPrimary,
                            ),
                            Spacing.vertical(16),
                            Text(
                              'Creating your account...',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
