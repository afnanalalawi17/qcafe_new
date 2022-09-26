import 'package:get/get.dart';

import '../controllers/confirm_order_delivery_controller.dart';

class ConfirmOrderDeliveryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmOrderDeliveryController>(
      () => ConfirmOrderDeliveryController(),
    );
  }
}
