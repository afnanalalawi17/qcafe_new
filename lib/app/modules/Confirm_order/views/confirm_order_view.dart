import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qcafe/Shared/color/colors.dart';
import 'package:qcafe/Shared/widget/constants.dart';
import 'package:qcafe/Shared/widget/gradient.dart';
import 'package:qcafe/app/routes/app_pages.dart';

import '../controllers/confirm_order_controller.dart';

class ConfirmOrderView extends GetView<ConfirmOrderController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        appBar: AppBar(
          automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "تأكيد الطلب",
                  style: TextStyle(
                      color: kprimery,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                   Get.toNamed(Routes.RESERVATION) ;  
                  },
                  child: SizedBox(
                      height: 35,
                      width: 35,
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
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: kwhite,
                            size: 15.0,
                          ))),
                ),
              ],
            )),
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: kwhite, borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                      child: Text(
                        "الطلبات",
                        style: TextStyle(
                            color: kprimery,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    ListView.builder(
                                         padding: const EdgeInsets.only(left: 10, right: 10),

                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(top: 7, bottom: 7),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/images/img4.png"),
                                    SizedBox(
                                      width: widthApp * 0.03,
                                    ),
                                    Text(
                                      "نسكافيه",
                                      style: TextStyle(
                                          color: kblack,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Text(
                                  "2 طلب",
                                  style: TextStyle(
                                      color: kprimery,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "5 ر.س",
                                  style: TextStyle(
                                      color: kprimery,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          );
                        }),
                    Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, ),
                      child: Divider(
                        thickness: 01.0,
                        color: Color(0xffE2E2E1),
                      ),
                    ),
                    Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "المجموع",
                            style: TextStyle(
                                color: kprimery,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "5 ر.س",
                            style: TextStyle(
                                color: kprimery,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),      SizedBox(height: heightApp*0.02,),
                    Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10,),
                      child: Container(
                        width: double.infinity,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Color(0xffE22D2D).withOpacity(.40),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.warning_amber_rounded, color: kwhite),
                            Text(
                              "يجب تأكيد الطلب والدفع قبل الموعد بساعتين",
                              style: TextStyle(
                                  color: kwhite,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    ),      SizedBox(height: heightApp*0.02,),
                    Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/icon1.png"),
                              SizedBox(
                                width: widthApp * 0.03,
                              ),
                              Text(
                                "عدد الضيوف",
                                style: TextStyle(
                                    color: Color(0xff828282),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Text(
                            "2",
                            style: TextStyle(
                                color: Color(0xff828282),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),  SizedBox(height: heightApp*0.01,),
                    Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/terrace2.png"),
                              SizedBox(
                                width: widthApp * 0.03,
                              ),
                              Text(
                                "رقم الطاولة",
                                style: TextStyle(
                                    color: Color(0xff828282),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Text(
                            "15",
                            style: TextStyle(
                                color: Color(0xff828282),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),  SizedBox(height: heightApp*0.01,),
                    Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/calendar.png"),
                              SizedBox(
                                width: widthApp * 0.03,
                              ),
                              Text(
                                "التاريخ",
                                style: TextStyle(
                                    color: Color(0xff828282),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Text(
                            "12 - 4 - 2022",
                            style: TextStyle(
                                color: Color(0xff828282),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),  SizedBox(height: heightApp*0.01,),
                    Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/alarm-clock.png"),
                              SizedBox(
                                width: widthApp * 0.03,
                              ),
                              Text(
                                "الزمن",
                                style: TextStyle(
                                    color: Color(0xff828282),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Text(
                            "6:00 AM",
                            style: TextStyle(
                                color: Color(0xff828282),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),

                     SizedBox(height: heightApp*0.07,),
                     Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                           height: 60,
                           width: 30,
                           decoration: BoxDecoration(
                             color:  Color(0xffE5E5E5),
                             borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomLeft:Radius.circular(30) )
                           ),
                         ),Container(
                           height: 60,
                           width: 30,
                           decoration: BoxDecoration(
                             color:  Color(0xffE5E5E5),
                             borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomRight:Radius.circular(30) )
                           ),
                         ),
                       ],
                     ),
                        SizedBox(height: heightApp*0.06,),
                  ],
                ),
              ),
            ), Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            SizedBox(width: widthApp*0.42,
                              child:GestureDetector(
      onTap: (){},
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [Color(0xffCDA349), Color(0xffDCB666)  ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.9, 2.6),
            stops: [0.0, 8.2],
          ),
        ),
        child: Center(
          child: Text(
           "إدفع الان",
           style:  TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
  color: kwhite,
)
          ),
        ),
      ),
                            )),
                            SizedBox(
                              width: widthApp*0.42,
                              height: heightApp * 0.055,
                              child:  UnicornOutlineButton(
                            strokeWidth: 2,
                            radius: 12,
                            gradient: LinearGradient(
                                  colors: [Color(0xffCDA349), Color(0xffFFD271)],
                            ),
                       onPressed: () {},
                                child: Center(
                                  child: Text(
                                    "إدفع لاحقا",
                                    style:  TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
  color: Color(0xffCDA349),
)
                                  ),
                                ),
                              ),
                            )
                          ]),
            ),
          ],
        ));
  }
}
