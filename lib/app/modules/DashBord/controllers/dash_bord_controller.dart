import 'package:get/get.dart';

class DashBordController extends GetxController {
  //TODO: Implement DashBordController

  final count = 0.obs;


  @override
  void onClose() {}
  void increment() => count.value++;
}
