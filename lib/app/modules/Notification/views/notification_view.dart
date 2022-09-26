import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qcafe/Shared/color/colors.dart';
import 'package:qcafe/Shared/widget/constants.dart';

import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  final kInnerDecoration = BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.white),
    borderRadius: BorderRadius.circular(19),
  );

  final kGradientBoxDecoration = BoxDecoration(
    gradient: LinearGradient(
      colors: [Color(0xffCDA349), Color(0xffDCB666)],
      begin: FractionalOffset(0.0, 0.0),
      end: FractionalOffset(0.9, 2.6),
      stops: [0.0, 8.2],
    ),
    // border: Border.all(
    //   color: kprimery,
    // ),
    borderRadius: BorderRadius.circular(20),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Text(
            "الإشعارات",
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
                SizedBox(
                  height: heightApp * 0.04,
                ),
                Container(
                    width: double.infinity,
                    height: 110,
                    decoration: BoxDecoration(
                      color: kwhite,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 5, right: 5, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "مرحبا بك عملينا العزيز ",
                            style: TextStyle(
                                color: kprimery,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                "لديك حجز مسبق معنا على الطاولة رقم ",
                                style: TextStyle(
                                    color: Color(0xff828282),
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal),
                              ),
                              Text(
                                " 20 ",
                                style: TextStyle(
                                    color: kprimery,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "الرجاء دفع فاتورة الحجز",
                                style: TextStyle(
                                    color: Color(0xff828282),
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ), SizedBox(
                  height: heightApp * 0.01,
                ),
                          Row(
                            children: [
                              Flexible(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    // width: 105,
                                    // height: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xffCDA349),
                                          Color(0xffDCB666)
                                        ],
                                        begin: FractionalOffset(0.0, 0.0),
                                        end: FractionalOffset(0.9, 2.6),
                                        stops: [0.0, 8.2],
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5,
                                          bottom: 5,
                                          left: 10,
                                          right: 10),
                                      child: Text("دفع الفاتورة الان",
                                          style: TextStyle(
                                              color: kwhite,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal)),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      // top: 1,
                                       //  bottom: 1,
                                        left: 30,
                                        right: 10
                                        
                                        ),
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Container(
                                       //   height: 20,
                                          width: 100,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                               // top: 1,
                                               bottom: 1,
                                                left: 10,
                                               right: 10
                                                
                                                ),
                                            child: Center(
                                              child: Text("إلغاء الحجز",
                                                  style: TextStyle(
                                                      color: Color(0xffCDA349),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.normal)),
                                            ),
                                          ),
                                          decoration: kInnerDecoration,
                                        ),
                                      ),
                                      // width: 142,
                                      // height: 45.0,
                                      decoration: kGradientBoxDecoration,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  height: heightApp * 0.02,
                ),
                Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 5, right: 5, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "مرحبا بك عملينا العزيز ",
                            style: TextStyle(
                                color: kprimery,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                "يوجد لدينا تخفيض على طاولات الاجتماعات وبعض المنتجات",
                                style: TextStyle(
                                    color: Color(0xff828282),
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: heightApp * 0.01,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              // width: 105,
                              // height: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffCDA349),
                                    Color(0xffDCB666)
                                  ],
                                  begin: FractionalOffset(0.0, 0.0),
                                  end: FractionalOffset(0.9, 2.6),
                                  stops: [0.0, 8.2],
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                      top: 5,
                                          bottom: 5,
                                          left: 10,
                                          right: 10),
                                child: Text("الاطلاع علي العروض",
                                    style: TextStyle(
                                        color: kwhite,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal)),
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}
