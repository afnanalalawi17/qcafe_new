import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qcafe/Shared/color/colors.dart';
import 'package:qcafe/Shared/widget/box_Text_Field.dart';
import 'package:qcafe/Shared/widget/constants.dart';
import 'package:qcafe/Shared/widget/main_button.dart';
import 'package:qcafe/app/routes/app_pages.dart';


import '../controllers/enter_reset_password_controller.dart';

class EnterResetPasswordView extends GetView<EnterResetPasswordController> {
  const EnterResetPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 80),
                child: Form(
                  key: controller.ResetFormKey,
                  child: Column(
                    children: [
                      Row(crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(onTap: () {
                  Get.offAllNamed(Routes.LOGIN);
                },
                  child: Container(
                    padding: EdgeInsets.all(8.0),
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
                        ],
                      ),
                      SizedBox(height: heightApp*0.04,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "لا تقلق سيتم استعادة كلمة المرور الخاصه بك...",
                            style: TextStyle(
                                color: kprimery,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: heightApp * 0.04,
                      ),
                      BoxTextField(
                          controller: controller.phoneController,
                          keyboardType: TextInputType.phone,
                          textAlign: TextAlign.left,
                          onSaved: (value) {
                            controller.phone = value;
                          },
                          validator: (value) {
                            return controller.validateMobile(value!);
                          },
                          hintText: "5xxxxxxxx",
                          text: "رقم الجوال"),
                 
                      SizedBox(
                        height: heightApp * 0.04,
                      ),
                      MainButton(
                          text: "تأكيد",
                          press: () {
                            controller.checkReset();
                          }),
                    ],
                  ),
                ),
              ),

              //  Padding(
              //    padding: const EdgeInsets.only(top: 70),
              //    child: Align(
              //      alignment: Alignment.bottomCenter,

              //     child:
              // Stack(
              //       children: [
              SizedBox(
                height: heightApp * 0.08,
              ),     ])),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    height: 220,
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
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffCDA349),
                                      Color(0xffFFD271)
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    stops: [0.0, 8.2],
                                  ),
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Color(0xffCDA349), Color(0xffFFD271)],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  stops: [0.0, 8.2],
                                ),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 10, right: 10),
                          child: CircleAvatar(
                            radius: 33,
                            backgroundColor: kwhite,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [Image.asset("assets/images/logo.png")],
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Text(
                              "سيتم إرسال رمز تأكيد إلى رقم جوالك",
                              style: TextStyle(
                                  color: kwhite,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                            )),
                        //  SizedBox(height: heightApp*0.08,),
                        
                      ],
                    )),
              ),
       


       ])) );
  }
}
