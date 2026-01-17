import 'package:echo_bazaar/global/utils/routes/app_routes.dart';
import 'package:echo_bazaar/presentation/view/auth%20screens/sign_in/sign_in_screen.dart';
import 'package:echo_bazaar/presentation/view/auth%20screens/sign_up/sign_up_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.signUp, page: () => const SignUpScreen()),
    GetPage(name: AppRoutes.signIn, page: () => const SignInScreen()),
  ];
}
