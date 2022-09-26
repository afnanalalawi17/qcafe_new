import 'package:get/get.dart';

class BasicController extends GetxController {
  //TODO: Implement BasicController
// final loginStatController = Get.put(LoginStateController());

  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }

  final count = 0.obs;


  @override
  void onClose() {}
  void increment() => count.value++;
}