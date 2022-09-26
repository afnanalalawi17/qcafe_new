import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class OtpController extends GetxController {
 final GlobalKey<FormState> otpFormKey = GlobalKey<FormState>(); // Form
  late TextEditingController otpController;
  var otp = '';
  final count = 0.obs;
      var codeError = false.obs;
  var timeOutTimer = false.obs;
  var enableInbut = true.obs;
  var isTimeOff = true.obs;
   int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 30;
  // int startTime = 30;
  late CountdownTimerController controller;
  void onStartTimer(){
  isTimeOff.value = !isTimeOff.value;
  controller = CountdownTimerController(endTime: endTime, onEnd: onEnd);

  }void onEnd() {

timeOutTimer.value = true;
    
  }
  @override
  void onInit() {
    super.onInit();
            otpController = TextEditingController();
  onStartTimer();
  }


  @override
  void onClose() {        otpController.dispose();
}
  void increment() => count.value++;
}
