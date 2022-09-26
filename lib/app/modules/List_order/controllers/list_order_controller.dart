import 'package:get/get.dart';

class ListOrderController extends GetxController {
  //TODO: Implement ListOrderController

  final count = 0.obs;


  @override
  void onClose() {}
  void increment() {
    count.value++;
    update();
  }

  void decrement() {
    if (count.value > 1) {
      count.value--;
    } else {
      count.value = 1;
    }

    update();
  }

}
