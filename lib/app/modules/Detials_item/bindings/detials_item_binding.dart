import 'package:get/get.dart';

import '../controllers/detials_item_controller.dart';

class DetialsItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetialsItemController>(
      () => DetialsItemController(),
    );
  }
}
