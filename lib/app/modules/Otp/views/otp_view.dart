import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:im_animations/im_animations.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:get/get.dart';
import 'package:qcafe/Shared/color/colors.dart';
import 'package:qcafe/Shared/widget/constants.dart';
import 'package:qcafe/Shared/widget/main_button.dart';
import 'package:qcafe/app/routes/app_pages.dart';

import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          leading:
              // title: Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       "",
              //       style: TextStyle(
              //           color: kprimery,
              //           fontSize: 18,
              //           fontWeight: FontWeight.bold),
              //     ),
              GestureDetector(
            onTap: () {
              Get.offAllNamed(Routes.LOGIN);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  // padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: LinearGradient(
                        colors: [Color(0xffCDA349), Color(0xffFFD271)],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(1.0, 0.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 6.0),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: kwhite,
                      size: 22.0,
                    ),
                  )),
            ),
          ),
          //   ],
          // )
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "لقد تم ارسال رمز التحقيق إلي الرقم",
                    style: TextStyle(
                        color: kblack,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    width: widthApp * 0.01,
                  ),
                  Text(
                    "345678989",
                    style: TextStyle(
                        color: kprimery,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: heightApp * 0.04,
              ),
              Image.asset("assets/images/otp.png"),
              Form(
                key: controller.otpFormKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 30),
                      child: Directionality(
                          textDirection: TextDirection.ltr,
                          child: PinCodeTextField(
                            //  enabled: controller.enableInbut.value,
                            appContext: context,
                            length: 6,
                            obscureText: false,
                            keyboardType: TextInputType.number,
                            animationType: AnimationType.fade,
                            pinTheme: PinTheme(
                              borderRadius: BorderRadius.circular(20),
                              shape: PinCodeFieldShape.box,
                              fieldWidth: 55,
                              fieldHeight: 50,
                              // activeColor: controller.codeError.value
                              //     ? Colors.red
                              //     : Colors.green,
                              activeFillColor: kwhite,
                              inactiveFillColor: kwhite,

                              inactiveColor: kwhite,
                              borderWidth: 2,
                              selectedColor: kwhite,
                              selectedFillColor: kwhite,
                            ),
                            animationDuration: Duration(milliseconds: 300),
                            enableActiveFill: true,
                            // errorAnimationController: errorController,
                            controller: controller.otpController,
                            onCompleted: (value) {
                              controller.otp = value;
                            },
                            onChanged: (value) {},
                            validator: (value) {
                              return null;

                              // return controller.validate(value!);
                            },
                            beforeTextPaste: (text) {
                              print("Allowing to paste ");
                              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                              //but you can show anything you want here, like your pop up saying wrong paste format or etc
                              return true;
                            },
                          )),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Stack(children: [
                              Container(
                                  height: 230,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10))),
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            height: 90,
                                            width: 90,
                                            decoration: BoxDecoration(
                                                // color: kgrey,
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 40),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color(0xffCDA349),
                                                  Color(0xffFFD271)
                                                ],
                                                begin: Alignment.centerLeft,
                                                end: Alignment.centerRight,
                                                stops: [0.0, 8.2],
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                      ),
                                      Obx(() {
                                        if (controller.timeOutTimer.isFalse ||
                                            controller.codeError.isFalse) {
                                          return Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10, left: 10, right: 10),
                                              child: CircleAvatar(
                                                  radius: 44,
                                                  // backgroundColor: kwhite,
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      Get.offAllNamed(
                                                          Routes.BASIC);
                                                    },
                                                    child: ColorSonar(
                                                        duration: Duration(
                                                            seconds: 5),
                                                        innerWaveColor:
                                                            Theme.of(context)
                                                                .primaryColor,
                                                        middleWaveColor:
                                                            Theme.of(context)
                                                                .primaryColor
                                                                .withOpacity(
                                                                    .4),
                                                        outerWaveColor: kwhite
                                                            .withOpacity(.4),
                                                        // wavesDisabled: true,
                                                        // waveMotion: WaveMotion.synced,
                                                        contentAreaRadius: 33.0,
                                                        waveFall: 8.0,
                                                        // waveMotionEffect: Curves.elasticIn,
                                                        waveMotion:
                                                            WaveMotion.synced,
                                                        // duration: Duration(seconds: 5),
                                                        child: Text(
                                                          "تأكيد",
                                                          style: TextStyle(
                                                              color: Theme.of(
                                                                      context)
                                                                  .primaryColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        )),
                                                  )));
                                        } else {
                                          return Container();
                                        }
                                      }),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              //                                           Obx(() {
                                              //           if (controller.timeOutTimer.isFalse ||
                                              //               controller.codeError.isFalse) {
                                              //             return Padding(
                                              //               padding: const EdgeInsets.only(left: 30, right: 30,top: 80),
                                              //               child: GestureDetector(
                                              //   onTap: () {

                                              //   },
                                              //   child: Container(
                                              //     width: 90,
                                              //     height: 40,
                                              //     decoration: BoxDecoration(
                                              //       borderRadius: BorderRadius.circular(20),
                                              //     color: kwhite
                                              //     ),
                                              //     child: Center(
                                              //       child: Text(
                                              //         'تأكيد',
                                              //         // style: kWhite_text,
                                              //       ),
                                              //     ),
                                              //   ),
                                              // )
                                              //             );
                                              //           } else {
                                              //             return Container();
                                              //           }
                                              //         }),
                                              SizedBox(
                                                height: heightApp * 0.08,
                                              ),
                                              Obx(() {
                                                if (controller
                                                    .codeError.isFalse) {
                                                  return Center(
                                                    child: Column(
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              'إعادة الارسال خلال',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                fontSize: 16,
                                                                //  color: KColor_Text_Main_2,
                                                              ),
                                                            ),
                                                            !controller.timeOutTimer
                                                                        .value ||
                                                                    controller
                                                                        .codeError
                                                                        .value
                                                                ? Timer(
                                                                    controller:
                                                                        controller,
                                                                  )
                                                                : Text(
                                                                    ' 0',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      //    color: KColor_Text_Main_2,
                                                                    ),
                                                                  ),
                                                            Text(
                                                              ' ثانية',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                fontSize: 16,
                                                                //    color: KColor_Text_Main_2,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        controller.timeOutTimer
                                                                    .value ||
                                                                controller
                                                                    .codeError
                                                                    .value
                                                            ? Center(
                                                                child:
                                                                    TextButton(
                                                                  onPressed:
                                                                      () {
                                                                    controller
                                                                        .endTime = DateTime.now()
                                                                            .millisecondsSinceEpoch +
                                                                        1000 *
                                                                            30;
                                                                    //   controller.getTOPAgain();
                                                                    controller
                                                                        .timeOutTimer
                                                                        .value = true;

                                                                    controller
                                                                        .onStartTimer();
                                                                  },
                                                                  child: Text(
                                                                    'إعادة ارسال الرسالة',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        color:
                                                                            kwhite),
                                                                  ),
                                                                ),
                                                              )
                                                            : Container()
                                                      ],
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                              Obx(() {
                                                if (controller
                                                    .codeError.isTrue) {
                                                  return Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 40),
                                                    child: Center(
                                                      child: Center(
                                                        child: Text(
                                                          'الرقم الذي قمت بادخاله لا يتوافق مع الكود المرسل الرجاء المحاولة مرة اخرى',
                                                          textAlign:
                                                              TextAlign.center,
                                                          //  style: KText_Style_16,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                } else {
                                                  return Container();
                                                }
                                              }),
                                            ],
                                          ))
                                    ],
                                  )),
                            ])))
                  ],
                ),
              )
            ]),
          ),
        )));
  }
}

class Timer extends StatelessWidget {
  const Timer({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final OtpController controller;

  @override
  Widget build(BuildContext context) {
    return CountdownTimer(
      endTime: DateTime.now().millisecondsSinceEpoch + 1000 * 30,
      onEnd: controller.onEnd,
      widgetBuilder: (_, CurrentRemainingTime? time) {
        if (time == null) {
          return Text('0');
        }
        return Text(
          '${time.sec}',
          style: TextStyle(
            fontSize: 16,
            // color: KColor_Text_Main_2,
          ),
        );
      },
    );
  }
}
