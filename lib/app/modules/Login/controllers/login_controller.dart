import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qcafe/app/routes/app_pages.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  final GlobalKey<FormState> LoginFormKey = GlobalKey<FormState>(); // Form
 late TextEditingController   phoneController,passwordController;
  var password = '';
var phone = '';
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
      passwordController = TextEditingController();
  phoneController = TextEditingController();
  }


  @override
  void onClose() {
        passwordController.dispose();
    phoneController.dispose();

  }
  void increment() => count.value++;
   var obscureText = true.obs;
  var obscureText1 = true.obs;
  var terms = false;
  changPassVisiblit() {
    if (obscureText.value == true) {
      obscureText(false);
    } else {
      obscureText(true);
    }
  }

  changPassVisiblit1() {
    if (obscureText1.value == true) {
      obscureText1(false);
    } else {
      obscureText1(true);
    }
  }

 String? validateName(String value) {
    if (value.isEmpty) {
      return "الرجاء إدخال اسم المستخدم";
    }
    return null;
  }
 String? validatePassword(String value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp =  RegExp(pattern);
    if (value.isEmpty) {
      return "الرجاء إدخال كلمة المرور";
    } else if (!regExp.hasMatch(value)) {
      return "الرجاء إدخال كلمة مرور تحتوي على رموز أحرف كبيرة وأحرف صغيرة وأرقام"
          ;
    }
    return null;
  }
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
  void checkRegister() {
    final isValid = LoginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    Get.toNamed(Routes.OTP) ;
  }
}
