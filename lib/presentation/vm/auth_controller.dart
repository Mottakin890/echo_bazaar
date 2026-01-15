import 'package:get/get.dart';

class AuthController extends GetxController {
  RxBool isPasswordVisible = false.obs;
  RxBool isConfirmPasswordVisible = false.obs;



  void togglePassVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void toggleConfirmPassVisibility() {
    isConfirmPasswordVisible.value = !isConfirmPasswordVisible.value;

  }

}
