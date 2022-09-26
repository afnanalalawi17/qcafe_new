import 'package:get/get.dart';

class DetialsItem2Controller extends GetxController {
  //TODO: Implement DetialsItem2Controller

  final count = 1.obs;


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
    var selectedCatIndex;
  onSelectCat(int index) {
    selectedCatIndex = index;
    update();
  }
}
