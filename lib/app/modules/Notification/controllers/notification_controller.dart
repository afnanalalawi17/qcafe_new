import 'package:get/get.dart';

class NotificationController extends GetxController {
  //TODO: Implement NotificationController

  final count = 0.obs;


  @override
  void onClose() {}
  void increment() => count.value++;
}
