import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qcafe/Shared/color/colors.dart';
import 'package:qcafe/Shared/widget/box_Text_Field.dart';
import 'package:qcafe/Shared/widget/main_button.dart';
import 'package:qcafe/app/routes/app_pages.dart';

import '../../../../Shared/widget/constants.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Form(
                key: controller.LoginFormKey,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "مرحبا بك",
                          style: TextStyle(
                              color: kprimery,
                              fontSize: 36,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                
                            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "هنا حيث الراحة والهدوء",
                    style: TextStyle(
                        color: kprimery,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ],
                            ),
                            SizedBox(
                height: heightApp * 0.03,
                            ),
                //             BoxTextField(
                //  controller: controller.usernameController,
                //     keyboardType: TextInputType.text,
                //     onSaved: (value) {
                //       controller.username = value;
                //     },
                //     validator: (value) {
                //       return controller.validateName(value!);
                //     },
                // text: "رقم الجوال"
                
                // ),
                            BoxTextField(
                 controller: controller.usernameController,
                    keyboardType: TextInputType.text,
                    onSaved: (value) {
                      controller.username = value;
                    },
                    validator: (value) {
                      return controller.validateName(value!);
                    },
                text: "اسم المستخدم"),
                    BoxTextField(
                 controller: controller.phoneController,
                    keyboardType: TextInputType.phone,
                    onSaved: (value) {
                      controller.phone = value;
                    },
                    validator: (value) {
                      return controller.validateMobile(value!);
                    },hintText: "5xxxxxxxx",
                text: "رقم الجوال"), Obx(() => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Text('كلمة المرور',style: TextStyle(
             fontWeight: FontWeight.w600, color: kgrey,fontSize: 14
          ),),
        ),
                                    TextFormField(
                                      style: TextStyle(color: kblack),
                                      cursorColor:
                                          Theme.of(context).primaryColor,
                                      textDirection: TextDirection.ltr,
                                      textAlign: TextAlign.left,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                borderSide:  BorderSide(color: kwhite,width: 2),
                borderRadius: BorderRadius.circular(12.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:  BorderSide(color:kwhite,width: 2),
                borderRadius: BorderRadius.circular(12.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(12.0),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(12.0),
              ),
              filled: true,
              fillColor: kwhite,
             
             hintStyle:  TextStyle(
             fontWeight: FontWeight.w600, color: kblack,fontSize: 14
          ),   contentPadding: EdgeInsets.all(12),
                                          suffixIcon: IconButton(
                                            icon: controller.obscureText.value
                                                ? Icon(Icons
                                                    .visibility_off_outlined)
                                                : Icon(
                                                    Icons.visibility_outlined),
                                            onPressed: () {
                                              controller.changPassVisiblit();
                                            },
                                            color:
                                                Theme.of(context).primaryColor,
                                          )),
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      obscureText: controller.obscureText.value,
                                      controller: controller.passwordController,
                                      onSaved: (value) {
                                        controller.password = value!;
                                      },
                                      onChanged: (value) {
                                        controller.password = value;
                                      },
                                      validator: (value) {
                                        return controller
                                            .validatePassword(value!);
                                      },
                                    ),
                                  ],
                                )),
                            SizedBox(
                              height: heightApp * 0.01,
                            ),
                   Obx(() => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [              Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Text('تأكيد كلمة المرور',style: TextStyle(
             fontWeight: FontWeight.w600, color: kgrey,fontSize: 14
          ),),
        ),
                                    TextFormField(
                                      style: TextStyle(color: kblack),
                                      cursorColor:
                                          Theme.of(context).primaryColor,
                                      textDirection: TextDirection.ltr,
                                      textAlign: TextAlign.left,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      decoration: InputDecoration(
                                                       enabledBorder: OutlineInputBorder(
                borderSide:  BorderSide(color: kwhite,width: 2),
                borderRadius: BorderRadius.circular(12.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:  BorderSide(color:kwhite,width: 2),
                borderRadius: BorderRadius.circular(12.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(12.0),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(12.0),
              ),
              filled: true,
              fillColor: kwhite,
             
             hintStyle:  TextStyle(
             fontWeight: FontWeight.w600, color: kblack,fontSize: 14
          ),   contentPadding: EdgeInsets.all(12),
                                          suffixIcon: IconButton(
                                            icon: controller.obscureText1.value
                                                ? Icon(Icons
                                                    .visibility_off_outlined)
                                                : Icon(
                                                    Icons.visibility_outlined),
                                            onPressed: () {
                                              controller.changPassVisiblit1();
                                            },
                                            color:
                                                Theme.of(context).primaryColor,
                                          )),
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      obscureText:
                                          controller.obscureText1.value,
                                      controller:
                                          controller.confirmPasswordController,
                                      onSaved: (value) {
                                        controller.confirmpassword = value!;
                                      },
                                      onChanged: (value) {
                                        controller.confirmpassword = value;
                                      },
                                      validator: (value) {
                                        return controller
                                            .validateRePassword(value!);
                                      },
                                    ),
                                  ],
                                )),
                
                SizedBox(
                height: heightApp * 0.02,
                            ),
                              MainButton(text: "تسجيل", press: () { 
                controller.checkRegister();
              
                 }),
              
                             ],
                ),
              ),
            ),

            //  Padding(
            //    padding: const EdgeInsets.only(top: 60),
            //    child: Align(
            //      alignment: Alignment.bottomCenter,

            //     child:  Stack(
            //       children: [
                SizedBox(height: heightApp*0.04,),
                  Container(
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
                                colors: [Color(0xffCDA349), Color(0xffFFD271)],
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
                      child:Text("سيتم إرسال رمز تأكيد إلى رقم هاتفك",  style: TextStyle(
                      color: kwhite,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),)

                       ),
                      //  SizedBox(height: heightApp*0.08,),
                         Padding(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    
                                    Get.offAllNamed(Routes.LOGIN);
                                  },
                                  child: Text("تسجيل دخول",
                                      style: TextStyle(
                                          color: kwhite,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline)),
                                ), 
                                        Padding(
                                          padding: const EdgeInsets.only(left: 3 , right: 4),
                                          child: Text("أو",
                                    style: TextStyle(
                                          color: kwhite,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                      )),
                                        ),
                                GestureDetector(
                                  onTap: () {
                                       Get.offAllNamed(Routes.BASIC);
                                  },
                                  child: Text("الدخول كـ زائر",
                                      style: TextStyle(
                                          color: kwhite,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline)),
                                ),
                              ],
                            )),
                      )
                       
                       
                        ],
                )
               
               ),
                  ])
             
              //  ))],
        // ),
      ),
    );
  }
}
