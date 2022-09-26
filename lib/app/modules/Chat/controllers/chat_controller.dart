import 'package:get/get.dart';

class ChatController extends GetxController {
  //TODO: Implement ChatController

  final count = 0.obs;


  @override
  void onClose() {}
  void increment() => count.value++;
}
