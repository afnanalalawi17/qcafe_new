import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qcafe/Shared/color/colors.dart';
import 'package:qcafe/Shared/widget/constants.dart';
import 'package:qcafe/app/routes/app_pages.dart';

import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
         automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
          
            title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
 Text(
              "الإعدادات",
              style: TextStyle(
                  color: kprimery, fontSize: 18, fontWeight: FontWeight.bold),
            ),
                Text(
              "",
              style: TextStyle(
                  color: kprimery, fontSize: 18, fontWeight: FontWeight.bold),
            ),
              ],
            ),
      ),
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            SizedBox(
              height: heightApp * 0.04,
            ),
            GestureDetector(
              onTap: () {
                   Get.toNamed(Routes.PROFILE) ;      
                },
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    
                  ),
                child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("الملف الشخصي"),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 20,
                        )
                      ],
                    ),
                  ),
              ),
            ),
            
           SizedBox(
              height: heightApp * 0.02,
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.CHANGE_PASSWORD);
              },
              child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("تغير كلمة المرور"),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 20,
                        )
                      ],
                    ),
                  )),
            ),
                SizedBox(
              height: heightApp * 0.02,
            ),
            GestureDetector(
              onTap: () {
                  Get.toNamed(Routes.CHAT) ;  
              },
              child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("الدردشة مع شخص ما "),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 20,
                        )
                      ],
                    ),
                  )),
            ),SizedBox(
              height: heightApp * 0.02,
            ),
            GestureDetector(
              onTap: () {
                  Get.toNamed(Routes.NOTIFICATION) ;  
              },
              child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("الاشعارات"),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 20,
                        )
                      ],
                    ),
                  )),
            ),SizedBox(
              height: heightApp * 0.02,
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.ABOUT);
              },
              child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("من نحن "),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 20,
                        )
                      ],
                    ),
                  )),
            ),
                SizedBox(
              height: heightApp * 0.02,
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.RATING);
              },
              child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("التقييم"),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 20,
                        )
                      ],
                    ),
                  )),
            ), SizedBox(
              height: heightApp * 0.02,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    scrollable: true,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12.0))),
                                    content: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                          "هل أنت متأكد من عملية تسجيل الخروج ؟"
                                              .tr),
                                    ),
                                    actionsAlignment: MainAxisAlignment.center,
                                    actions: <Widget>[
                                      TextButton(
                                        child: Text(
                                          "نعم".tr,
                                          style: TextStyle(color: Colors.red),
                                        ),
                                        onPressed: () async {
//                                           GetStorage().remove('Token');
//                                           loginState
//                                               .changeLoginState('notLogin');
// // GetStorage().write('onBoardin', 0);
//                                           ThemeHelper.saveThemeToBox('th2');
//                                           ThemeHelper.switchTheme('th2');
                                          Get.toNamed(Routes.LOGIN);
                                        },
                                      ),
                                      TextButton(
                                        child: Text("إلغاء",style: TextStyle(color: kblack),),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                });
              },
              child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Center(child: Text('تسجيل الخروج',style: TextStyle(color: Colors.red),)),
                  )),
            ),
                SizedBox(
              height: heightApp * 0.02,
            ),
          ],
        ),
      ),
    ));
  }
}
