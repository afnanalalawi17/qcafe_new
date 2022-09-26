import 'package:get/get.dart';

import '../controllers/confirm_order_table_now_controller.dart';

class ConfirmOrderTableNowBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmOrderTableNowController>(
      () => ConfirmOrderTableNowController(),
    );
  }
}
