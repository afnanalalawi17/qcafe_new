import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qcafe/app/routes/app_pages.dart';

class EnterResetPasswordController extends GetxController {
  //TODO: Implement EnterResetPasswordController
  final GlobalKey<FormState> ResetFormKey = GlobalKey<FormState>(); // Form
late TextEditingController   phoneController;
var phone = '';
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  phoneController = TextEditingController();
  }


  @override
  void onClose() {
    phoneController.dispose();

  }
  void increment() => count.value++;


 



   String? validateMobile(String value) {
    String patttern = r'^(?:[+0]9)?[0-9]{10}$';
    RegExp regExp = RegExp(patttern);
    if (value.isEmpty) {
      return "الرجاء ادخال رقم الجوال";
    } else if (!regExp.hasMatch(value)) {
      return "الرجاء ادخال رقم جوال صحيح";
    }
    return null;
  }
  void checkReset() {
    final isValid = ResetFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    Get.toNamed(Routes.OTP_RESET_PASSWORD) ;
  }
}
