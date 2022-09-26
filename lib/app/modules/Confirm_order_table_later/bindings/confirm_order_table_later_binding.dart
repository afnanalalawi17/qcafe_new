import 'package:get/get.dart';

import '../controllers/confirm_order_table_later_controller.dart';

class ConfirmOrderTableLaterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmOrderTableLaterController>(
      () => ConfirmOrderTableLaterController(),
    );
  }
}
