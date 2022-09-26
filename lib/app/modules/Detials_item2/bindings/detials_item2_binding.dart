import 'package:get/get.dart';

import '../controllers/detials_item2_controller.dart';

class DetialsItem2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetialsItem2Controller>(
      () => DetialsItem2Controller(),
    );
  }
}
