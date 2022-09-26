import 'package:get/get.dart';

import '../controllers/enter_reset_password_controller.dart';

class EnterResetPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EnterResetPasswordController>(
      () => EnterResetPasswordController(),
    );
  }
}
