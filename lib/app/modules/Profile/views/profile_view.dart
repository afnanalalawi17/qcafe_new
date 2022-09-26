import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qcafe/Shared/color/colors.dart';
import 'package:qcafe/Shared/style/Text_style.dart';
import 'package:qcafe/Shared/widget/box_Text_Field.dart';
import 'package:qcafe/Shared/widget/constants.dart';
import 'package:qcafe/Shared/widget/main_button.dart';
import 'package:qcafe/app/routes/app_pages.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Text(
            "الملف الشخصي",
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
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: SingleChildScrollView(
            child: Column(children: [
              CircleAvatar(
                radius: 44,
                backgroundColor: kprimery,
                child: Icon(Icons.person_outline_sharp,size: 60,color: kwhite,),
              ),
              SizedBox(
                height: heightApp * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("رقم الجوال:0566220639 "),
                  Text("الاسم:أفنان أحمد العلاوي")
                ],
              ),
              SizedBox(
                height: heightApp * 0.04,
              ),
              GestureDetector(
                onTap: () {Get.offAndToNamed(Routes.EDIT_PROFILE);},
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      colors: [Color(0xffCDA349), Color(0xffDCB666)],
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      stops: [0.0, 8.2],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.edit_note_rounded,
                        color: kwhite,
                      ),
                      SizedBox(
                        width: widthApp * 0.02,
                      ),
                      Text(
                        'تعديل المعلومات',
                        style: kWhite_text,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: heightApp * 0.04,
              ),
              Container(
                  // height: 126,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xffCDA349), Color(0xffDCB666)],
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      stops: [0.0, 8.2],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, right: 10, left: 10),
                        child: Row(
                          children: [
                            Text(
                              " الطلبات",
                              style: TextStyle(
                                  color: kwhite,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      ListView.builder(
                          padding:
                              EdgeInsets.only(top: 10, left: 10, right: 10),
                          // padding: const EdgeInsets.only(
                          //     left: 20, right: 20),
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                                onTap: () {
                                  Get.toNamed(Routes.DETIALS_ITEM2);
                                },
                                child: Card(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text('رقم الطلب : '),
                                                  Text('101'),
                                                ],
                                              ),
                                               Text('عدد المنتجات : 47'),
                                              CircleAvatar(
                                                radius: 12,
                                                backgroundColor: Colors.green,
                                              ),

                                              // Padding(
                                              //   padding: const EdgeInsets.only(
                                              //     right: 10,
                                              //   ),
                                              //   child: Column(
                                              //       crossAxisAlignment:
                                              //           CrossAxisAlignment.start,
                                              //       children: [
                                              //         Text(
                                              //           "وجبة خفيفة",
                                              //           style: TextStyle(
                                              //               fontWeight:
                                              //                   FontWeight.bold),
                                              //         ),
                                              //         Container(
                                              //           width: widthApp -
                                              //               widthApp * 0.53,
                                              //           child: Text(
                                              //             "  ﻊﺿو ﻪﻘﻳﺮﻃ رﻮﺼﺘﻴﻟ ﻞﻴﻤﻌﻟا ﻰﻠﻋ ضﺮﻌﺘﻟ ﻢﻴﻣﺎﺼﺘﻟا ﻲﻓ ﻊﺿﻮﻳ ﻲﺿاﺮﺘﻓا جذﻮﻤﻧ ﻮﻫ مﻮﺴﺒﻳا ﻢﻳرو",
                                              //             style:
                                              //                 TextStyle(fontSize: 10),
                                              //           ),
                                              //         ),

                                              // ]),
                                              // )
                                            ]),
                                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('الاجمالي : 347'),  Padding(
                                              padding: const EdgeInsets.only(left: 44),
                                              child: Text('التاريخ: 12-02-2022'),
                                            ),  
                                          ],
                                        ),
                                      
                                       SizedBox(height: heightApp*0.01,),
                                      
                                     
                                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [   Text('طريقة الدفع : كاش'),
                                            Flexible(
                                              child: GestureDetector(
                                                onTap: () {
                                                  Get.toNamed(
                                                      Routes.DETIALS_ITEM2);
                                                },
                                                child: Container(
                                                  width: 150,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Color(0xffCDA349),
                                                        Color(0xffDCB666)
                                                      ],
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.topRight,
                                                      stops: [0.0, 8.2],
                                                    ),
                                                  ),
                                                  child: Center(
                                                    child: Text("تفاصيل الطلب",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: kwhite,
                                                        )),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ));
                          }),
                      SizedBox(
                        height: heightApp * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: kwhite,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(
                                  child: Icon(
                                Icons.line_weight_sharp,
                                color: Theme.of(context).primaryColor,
                              )),
                            ),
                            Text(
                              "6677",
                              style: TextStyle(
                                  color: kwhite,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: heightApp * 0.02,
                      )
                    ],
                  )),
            ]),
          ),
        ));
  }
}
