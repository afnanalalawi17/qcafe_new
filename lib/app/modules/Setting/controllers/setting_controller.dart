import 'package:get/get.dart';

class SettingController extends GetxController {
  //TODO: Implement SettingController

  final count = 0.obs;


  @override
  void onClose() {}
  void increment() => count.value++;
}
