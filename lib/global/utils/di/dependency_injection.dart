import 'package:echo_bazaar/presentation/vm/auth_controller.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static void init() {
    Get.put<AuthController>(AuthController());
  }
}
