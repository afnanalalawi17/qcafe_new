import 'package:get/get.dart';

class FavoriteController extends GetxController {
  //TODO: Implement FavoriteController

  final count = 0.obs;


  @override
  void onClose() {}
  void increment() => count.value++;
}
