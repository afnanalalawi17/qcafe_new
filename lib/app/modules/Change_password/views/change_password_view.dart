import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qcafe/Shared/color/colors.dart';
import 'package:qcafe/Shared/widget/constants.dart';
import 'package:qcafe/Shared/widget/main_button.dart';
import 'package:qcafe/app/routes/app_pages.dart';

import '../controllers/change_password_controller.dart';

class ChangePasswordView extends GetView<ChangePasswordController> {
  const ChangePasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            title: Text(
              "تغير كلمة المرور",
              style: TextStyle(
                  color: kprimery, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
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
                        size: 20.0,
                      ),
                    )),
              ),
            )),
        body: Container(
            child: Column(children: [
          Expanded(
              child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Form(
                key: controller.ResetFormKey,
                child: Column(
                  children: [  Obx(() => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Text(
                                'كلمة المرور القديمة',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: kgrey,
                                    fontSize: 14),
                              ),
                            ),
                            TextFormField(
                              style: TextStyle(color: kblack),
                              cursorColor: Theme.of(context).primaryColor,
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.left,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: kwhite, width: 2),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: kwhite, width: 2),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  filled: true,
                                  fillColor: kwhite,
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: kblack,
                                      fontSize: 14),
                                  contentPadding: EdgeInsets.all(12),
                                  suffixIcon: IconButton(
                                    icon: controller.obscureText.value
                                        ? Icon(Icons.visibility_off_outlined)
                                        : Icon(Icons.visibility_outlined),
                                    onPressed: () {
                                      controller.changPassVisiblit();
                                    },
                                    color: Theme.of(context).primaryColor,
                                  )),
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: controller.obscureText.value,
                              controller: controller.passwordController,
                              onSaved: (value) {
                                controller.password = value!;
                              },
                              onChanged: (value) {
                                controller.password = value;
                              },
                              validator: (value) {
                                return controller.validatePassword(value!);
                              },
                            ),
                          ],
                        )),
                    SizedBox(
                      height: heightApp * 0.01,
                    ),
                    Obx(() => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Text(
                                'كلمة المرور الجديدة',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: kgrey,
                                    fontSize: 14),
                              ),
                            ),
                            TextFormField(
                              style: TextStyle(color: kblack),
                              cursorColor: Theme.of(context).primaryColor,
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.left,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: kwhite, width: 2),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: kwhite, width: 2),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  filled: true,
                                  fillColor: kwhite,
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: kblack,
                                      fontSize: 14),
                                  contentPadding: EdgeInsets.all(12),
                                  suffixIcon: IconButton(
                                    icon: controller.obscureText2.value
                                        ? Icon(Icons.visibility_off_outlined)
                                        : Icon(Icons.visibility_outlined),
                                    onPressed: () {
                                      controller.changPassVisiblit3();
                                    },
                                    color: Theme.of(context).primaryColor,
                                  )),
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: controller.obscureText2.value,
                              controller: controller.oldpasswordController,
                              onSaved: (value) {
                                controller.oldpassword = value!;
                              },
                              onChanged: (value) {
                                controller.oldpassword = value;
                              },
                              validator: (value) {
                                return controller.validatePassword(value!);
                              },
                            ),
                          ],
                        )),
                    SizedBox(
                      height: heightApp * 0.01,
                    ),
                    Obx(() => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Text(
                                'تأكيد كلمة المرور الجديدة',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: kgrey,
                                    fontSize: 14),
                              ),
                            ),
                            TextFormField(
                              style: TextStyle(color: kblack),
                              cursorColor: Theme.of(context).primaryColor,
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.left,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: kwhite, width: 2),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: kwhite, width: 2),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  filled: true,
                                  fillColor: kwhite,
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: kblack,
                                      fontSize: 14),
                                  contentPadding: EdgeInsets.all(12),
                                  suffixIcon: IconButton(
                                    icon: controller.obscureText1.value
                                        ? Icon(Icons.visibility_off_outlined)
                                        : Icon(Icons.visibility_outlined),
                                    onPressed: () {
                                      controller.changPassVisiblit1();
                                    },
                                    color: Theme.of(context).primaryColor,
                                  )),
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: controller.obscureText1.value,
                              controller: controller.confirmpasswordController,
                              onSaved: (value) {
                                controller.confirmpassword = value!;
                              },
                              onChanged: (value) {
                                controller.confirmpassword = value;
                              },
                              validator: (value) {
                                return controller.validateRePassword(value!);
                              },
                            ),
                          ],
                        )),
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
            ),
          ])),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //       height: 220,
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.only(
          //               bottomRight: Radius.circular(10),
          //               bottomLeft: Radius.circular(10))),
          //       child: Stack(
          //         alignment: Alignment.topCenter,
          //         children: [
          //           Column(
          //             children: [
          //               Container(
          //                 height: 90,
          //                 width: 90,
          //                 decoration: BoxDecoration(
          //                     gradient: LinearGradient(
          //                       colors: [
          //                         Color(0xffCDA349),
          //                         Color(0xffFFD271)
          //                       ],
          //                       begin: Alignment.centerLeft,
          //                       end: Alignment.centerRight,
          //                       stops: [0.0, 8.2],
          //                     ),
          //                     borderRadius: BorderRadius.circular(50)),
          //               ),
          //             ],
          //           ),
          //           Padding(
          //             padding: EdgeInsets.only(top: 40),
          //             child: Container(
          //               decoration: BoxDecoration(
          //                   gradient: LinearGradient(
          //                     colors: [Color(0xffCDA349), Color(0xffFFD271)],
          //                     begin: Alignment.centerLeft,
          //                     end: Alignment.centerRight,
          //                     stops: [0.0, 8.2],
          //                   ),
          //                   borderRadius: BorderRadius.circular(10)),
          //             ),
          //           ),
          //           Padding(
          //             padding:
          //                 const EdgeInsets.only(top: 10, left: 10, right: 10),
          //             child: CircleAvatar(
          //               radius: 33,
          //               backgroundColor: kwhite,
          //               child: Row(
          //                 mainAxisSize: MainAxisSize.min,
          //                 children: [Image.asset("assets/images/logo.png")],
          //               ),
          //             ),
          //           ),
          //           // Align(
          //           //     alignment: Alignment.center,
          //           //     child: Text(
          //           //       "سيتم إرسال رمز تأكيد إلى رقم جوالك",
          //           //       style: TextStyle(
          //           //           color: kwhite,
          //           //           fontSize: 14,
          //           //           fontWeight: FontWeight.normal),
          //           //     )),
          //           //  SizedBox(height: heightApp*0.08,),

          //         ],
          //       )),
          // ),
        ])));
  }
}
