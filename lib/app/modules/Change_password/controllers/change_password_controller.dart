import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qcafe/app/routes/app_pages.dart';

class ChangePasswordController extends GetxController {
  //TODO: Implement ChangePasswordController
 final GlobalKey<FormState> ResetFormKey = GlobalKey<FormState>(); // Form
late TextEditingController oldpasswordController,  passwordController , confirmpasswordController;
var password = '';var confirmpassword = '';var oldpassword = '';
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();  oldpasswordController = TextEditingController();

  passwordController = TextEditingController();
    confirmpasswordController = TextEditingController();

  }


  @override
  void onClose() {
    oldpasswordController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();

  }
  void increment() => count.value++;

var obscureText = true.obs;
  var obscureText1 = true.obs;
    var obscureText2 = true.obs;

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
    changPassVisiblit3() {
    if (obscureText2.value == true) {
      obscureText2(false);
    } else {
      obscureText2(true);
    }
  }
 

 String? validatePassword(String value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp =  RegExp(pattern);
    if (value.isEmpty) {
      return "الرجاءإدخال كلمة المرور".tr;
    } else if (!regExp.hasMatch(value)) {
      return "الرجاء إدخال كلمة مرور تحتوي على رموز أحرف كبيرة وأحرف صغيرة وأرقام"
          ;
    }
    return null;
  }
 String? validateRePassword(String value) {
    if (value.isEmpty) {
      return "الرجاءإدخال تاكيد كلمة المرور";
    }
    if (value != confirmpasswordController.text) {
      return "كلمة المرور غير متطابقة";
    }
    return null;
  }
  
  void checkReset() {
    final isValid = ResetFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    Get.toNamed(Routes.LOGIN) ;
  }
}
