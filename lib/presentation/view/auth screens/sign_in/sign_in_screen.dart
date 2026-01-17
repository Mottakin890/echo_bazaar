import 'package:echo_bazaar/global/app_dimentions/app_paddings.dart';
import 'package:echo_bazaar/global/app_dimentions/app_spacings.dart';
import 'package:echo_bazaar/global/resources/app_assets/app_assets.dart';
import 'package:echo_bazaar/global/themes/app_colors.dart';
import 'package:echo_bazaar/presentation/view/auth%20screens/helper/app_text_form_field.dart';
import 'package:echo_bazaar/presentation/view/auth%20screens/helper/auth_button.dart';
import 'package:echo_bazaar/presentation/vm/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final AuthController _authController = Get.find<AuthController>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
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
                    child: RPadding(
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
                  Spacing.vertical(90),
                  // Logo Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Ba', style: Theme.of(context).textTheme.displayMedium),
                      Text(
                        'za',
                        style: Theme.of(context).textTheme.displayMedium!.copyWith(
                              color: AppColors.cPrimary,
                            ),
                      ),
                      Text('ar', style: Theme.of(context).textTheme.displayMedium),
                    ],
                  ),
                  Spacing.vertical(100),

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
                    child: RPadding(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppPaddings.kDefaultPadding,
                        vertical: AppPaddings.kPaddingLarge,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Header
                          Text(
                            'Welcome Back!',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Spacing.vertical(10),
                          Text(
                            'Enter your details below.',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
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
                              suffixIconWidget: RPadding(
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

                          // Forgot Password Link
                          Align(
                            alignment: Alignment.centerRight,
                            child: RPadding(
                              padding: EdgeInsets.only(top: 8.h),
                              child: GestureDetector(
                                onTap: () {
                                  // Navigate to forgot password
                                },
                                child: Text(
                                  'Forgot Password?',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        color: AppColors.cPrimary,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ),
                          ),

                          Spacing.vertical(24),

                          // Sign In Button
                          AuthButton(
                            buttonName: 'Sign In',
                            onTapAction: () {
                              // Handle sign in
                            },
                          ),

                          Spacing.vertical(70),

                          // Sign Up Link
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account? ",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              GestureDetector(
                                onTap: () {
                                  // Navigate to sign up
                                },
                                child: Text(
                                  'Sign Up',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
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
                              'Signing in...',
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