import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qcafe/Shared/color/colors.dart';
import 'package:qcafe/Shared/widget/constants.dart';
import 'package:qcafe/Shared/widget/gradient.dart';
import 'package:qcafe/Shared/widget/main_button.dart';
import 'package:qcafe/app/routes/app_pages.dart';

import '../controllers/list_order_controller.dart';

class ListOrderView extends GetView<ListOrderController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Text(
            "قائمة الطلبات",
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
        body:  Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           
              TextField(
                decoration: InputDecoration(
                    hintText: 'ابحث عن صنفك المفضل',
                    contentPadding: const EdgeInsets.all(10.0),
                    filled: true,
                    fillColor:kwhite,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kwhite, width: 2),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kwhite, width: 2),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    suffixIcon: const Icon(
                      Icons.search,
                      color: Color(0xff828282),
                      size: 28.0,
                      textDirection: TextDirection.ltr,
                    ),
                    hintStyle: TextStyle(color: Color(0xff828282,),fontSize: 14)),
                textAlign: TextAlign.start,
                onChanged: (string) {}),
                SizedBox(height: heightApp*0.02,),
              SizedBox(
                height: 20,
                child: ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: kwhite),
                          child: Text(
                            "المشروبات الباردة",
                            style: TextStyle(
                                color: Color(0xffCDA349),
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: heightApp * 0.02,
              ),
              Expanded(
                child:  ListView.builder(
                          // padding: EdgeInsets.only(top: 7,left: 10,right: 10),
                          // padding: const EdgeInsets.only(
                          //     left: 20, right: 20),
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          itemCount: 4,
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
                                  child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topRight:
                                                          Radius.circular(15),
                                                      bottomRight:
                                                          Radius.circular(15)),
                                              child: Image.asset(
                                                "assets/images/img2.png",
                                                height: 130.0,
                                                width: 217.0,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            right: 10,
                                          ),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "وجبة خفيفة",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Container(
                                                  width: widthApp -
                                                      widthApp * 0.53,
                                                  child: Text(
                                                    "  ﻊﺿو ﻪﻘﻳﺮﻃ رﻮﺼﺘﻴﻟ ﻞﻴﻤﻌﻟا ﻰﻠﻋ ضﺮﻌﺘﻟ ﻢﻴﻣﺎﺼﺘﻟا ﻲﻓ ﻊﺿﻮﻳ ﻲﺿاﺮﺘﻓا جذﻮﻤﻧ ﻮﻫ مﻮﺴﺒﻳا ﻢﻳرو",
                                                    style:
                                                        TextStyle(fontSize: 10),
                                                  ),
                                                ),SizedBox(height: heightApp*0.01,),
                                                 Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                   children: [
                                                     Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                
                                                                  UnicornOutlineButton(
                                                                    strokeWidth: 2,
                                                                    radius: 8.61,
                                                                    gradient:
                                                                        LinearGradient(
                                                                      colors: [
                                                                        Color(
                                                                            0xffCDA349),
                                                                        Color(
                                                                            0xffFFD271)
                                                                      ],
                                                                    ),
                                                                    child: Icon(
                                                                      Icons.add,
                                                                      color: Color(
                                                                          0xffCDA349),
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                          print("object");
                                                                              controller.increment() ;
                                                                        },
                                                                  ),
                                                                  SizedBox(
                                                                    width:
                                                                        widthApp *
                                                                            0.04,
                                                                  ),
                                                                  Text(
                                                                    controller.count.toString(),
                                                                    style: TextStyle(
                                                                        color:
                                                                            kblack,
                                                                        fontSize:
                                                                            20,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold),
                                                                  ),
                                                                  SizedBox(
                                                                    width:
                                                                        widthApp *
                                                                            0.04,
                                                                  ),
                                                                  UnicornOutlineButton(
                                                                    strokeWidth: 2,
                                                                    radius: 8.61,
                                                                    gradient:
                                                                        LinearGradient(
                                                                      colors: [
                                                                        Color(
                                                                            0xffCDA349),
                                                                        Color(
                                                                            0xffFFD271)
                                                                      ],
                                                                    ),
                                                                    child: Icon(
                                                                      Icons.remove,
                                                                      color: Color(
                                                                          0xffCDA349),
                                                                    ),
                                                                    onPressed:
                                                                        () {    controller.decrement() ;},
                                                                  ),
                                                                  
                                                                ],
                                                              ),SizedBox(width: widthApp*0.01,),
                                                             GestureDetector(
                                                  onTap: () {
                                                    Get.toNamed(
                                                        Routes.DETIALS_ITEM2);
                                                  },
                                                  child: Container(
                                                    width: 70,
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
                                                        begin:
                                                            Alignment.topLeft,
                                                        end: Alignment.topRight,
                                                        stops: [0.0, 8.2],
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Text("إضافة",
                                                          style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold,
                                                            color: kwhite,
                                                          )),
                                                    ),
                                                  ),
                                                ),  SizedBox(width: widthApp*0.01,),
                                                   ],
                                                 ),
                                                // GestureDetector(
                                                //   onTap: () {
                                                //     Get.toNamed(
                                                //         Routes.DETIALS_ITEM);
                                                //   },
                                                //   child: Container(
                                                //     width: 90,
                                                //     height: 40,
                                                //     decoration: BoxDecoration(
                                                //       borderRadius:
                                                //           BorderRadius.circular(
                                                //               12),
                                                //       gradient: LinearGradient(
                                                //         colors: [
                                                //           Color(0xffCDA349),
                                                //           Color(0xffDCB666)
                                                //         ],
                                                //         begin:
                                                //             Alignment.topLeft,
                                                //         end: Alignment.topRight,
                                                //         stops: [0.0, 8.2],
                                                //       ),
                                                //     ),
                                                //     child: Center(
                                                //       child: Text("إضافة",
                                                //           style: TextStyle(
                                                //             fontSize: 14,
                                                //             fontWeight:
                                                //                 FontWeight
                                                //                     .bold,
                                                //             color: kwhite,
                                                //           )),
                                                //     ),
                                                //   ),
                                                // ),
                                        //         Row(
                                        //           mainAxisAlignment:
                                        //               MainAxisAlignment
                                        //                   .spaceBetween,
                                        //           children: [
                                        //             Row(
                                        //             children: [
                                        //               Icon(
                                        //                 Icons
                                        //                     .star_border_rounded,
                                        //                 color: Theme.of(context).primaryColor,
                                        //               ),
                                        //               Text(
                                        //                 "4.7",
                                        //                 style: TextStyle(
                                        //                   color: Theme.of(context).primaryColor,
                                        //                     fontSize: 11,
                                        //                     fontWeight:
                                        //                         FontWeight
                                        //                             .bold),
                                        //               )
                                        //             ]),
                                        //             SizedBox(
                                        //               width: widthApp * 0.18,
                                        //             ),
                                        //             Text(
                                        //               "70 ر.س",
                                        //               style: TextStyle(
                                        //                 fontSize: 14,
                                        //                 fontWeight:
                                        //                     FontWeight.bold,
                                        //                 color: kprimery,
                                        //               ),
                                        //             )
                                        //           ],
                                        //         )
                                              ]),
                                        )
                                      ]),
                                ));
                          })
              ),
              SizedBox(
                height: heightApp * 0.02,
              ),
              
            ],
          ),
        ));
  }
}
