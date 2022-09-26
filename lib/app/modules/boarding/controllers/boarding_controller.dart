import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qcafe/app/modules/boarding/controllers/on_boarding_model.dart';

class BoardingController extends GetxController {
  //TODO: Implement BoardingController
var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value ==  screens.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
 // Get.toNamed(Routes.SIGNUP);
    } else {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.easeIn);
    }
  }
  final count = 0.obs;


  @override
  void onClose() {}
  void increment() => count.value++;


   List<OnBoardingModel> screens = <OnBoardingModel>[
    OnBoardingModel(
      img: 'assets/images/boarding1.png',
      text: "مركز رعاية الحيوانات الأليفة الخاص بك ",
 des: "يمكنك القيام باعمالك واجتماعاتك بهدوء في الاماكن المخصصة لها",

    ),
    OnBoardingModel(
      img: 'assets/images/boarding2.png',
      text: "حيوانك الأليف هو جزء من عائلتنا",
  des: "يمكنك القيام باعمالك واجتماعاتك بهدوء في الاماكن المخصصة لها",

    ),
    OnBoardingModel(
      img: 'assets/images/boarding3.png',
      text: "إشتري لحيوانك الأليف كل ما يحتاجه",
    des: "يمكنك القيام باعمالك واجتماعاتك بهدوء في الاماكن المخصصة لها",

    ),
  ];
}
