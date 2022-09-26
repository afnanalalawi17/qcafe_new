import 'package:get/get.dart';

import '../controllers/confirm_order_inside_cafe_controller.dart';

class ConfirmOrderInsideCafeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmOrderInsideCafeController>(
      () => ConfirmOrderInsideCafeController(),
    );
  }
}
