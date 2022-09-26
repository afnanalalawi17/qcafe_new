import 'package:get/get.dart';

class ReservationController extends GetxController {
  //TODO: Implement ReservationController

  final count = 1.obs;


  @override
  void onClose() {}

     var selectedCatIndex;
     
  onSelectCat(int index) {
    selectedCatIndex = index;   
    update();
  }  
   var selectedCatIndex1;
  onSelectCat1(int index) {
    selectedCatIndex1 = index;
    update();
  }   var selectedCatIndex2;
  onSelectCat2(int index) {
    selectedCatIndex2 = index;
    update();
  }void increment() {
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
