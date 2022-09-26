import 'package:get/get.dart';

import '../controllers/dash_bord_controller.dart';

class DashBordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashBordController>(
      () => DashBordController(),
    );
  }
}
