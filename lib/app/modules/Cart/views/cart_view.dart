import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:get/get.dart';
import 'package:qcafe/Shared/color/colors.dart';
import 'package:qcafe/Shared/widget/box_Text_Field.dart';
import 'package:qcafe/Shared/widget/constants.dart';
import 'package:qcafe/Shared/widget/gradient.dart';
import 'package:qcafe/Shared/widget/main_button.dart';
import 'package:qcafe/app/routes/app_pages.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  @override
  final controller = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return DefaultTabController(
          length: 2,
          child: Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Text(
            "السلة",
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
              body: GetBuilder<CartController>(
                  init: CartController(),
                  initState: (_) {},
                  builder: (_) {
                    return SingleChildScrollView(
                      child: Column(
                          //   shrinkWrap: true,
                          children: [
                            ListView.builder(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                shrinkWrap: true,
                                physics: const ClampingScrollPhysics(),
                                itemCount: 4,
                                itemBuilder: (context, index) {
                     
                                  return Slidable(
                                      useTextDirection: false,
                                      key: const ValueKey(0),
                                      endActionPane: ActionPane(
                                        motion: ScrollMotion(),  
                                        extentRatio: 0.20,
                        
                                        children: [
                                            //  Center(child: IconButton(onPressed: () {}, icon: Icon(Icons.delete))),
                
                                    Expanded(
                                      child: Container(
                                                height: 100,
                                              
                                                decoration: BoxDecoration(
                                                  color: Color(0xffE22D2D),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    // SizedBox(width: 70),
                                                    GestureDetector(
                                                      child: Icon(
                                                        Icons.delete,
                                                        color: kwhite,
                                                        size: 25,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                    ),
                                          // ),
                                        ],
                                      ),
                                      child: GestureDetector(
                                          onTap: () {},
                                          child: Card(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Flexible(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            const BorderRadius
                                                                    .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        15),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        15)),
                                                        child: Image.asset(
                                                          "assets/images/img.png",
                                                          height: 90.0,
                                                          width: 112.0,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      right: 10,
                                                    ),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                "نسكافية",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              SizedBox(
                                                                width:
                                                                    widthApp *
                                                                        0.29,
                                                              ),
                                                              Text(
                                                                "5 ر.س",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color:
                                                                        kprimery),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: heightApp *
                                                                0.01,
                                                          ),
                                                          Container(
                                                            width: widthApp -
                                                                widthApp * 0.55,
                                                            child: Text(
                                                              "كريمة",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color:
                                                                      kprimery,
                                                                  fontSize: 8),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: heightApp *
                                                                0.01,
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              SizedBox(
                                                                width:
                                                                    widthApp *
                                                                        0.20,
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
                                                          ),
                                                          SizedBox(
                                                            height: heightApp *
                                                                0.01,
                                                          ),
                                                        ]),
                                                  )
                                                ]),
                                          )));
                                }),
                            SizedBox(
                              height: heightApp * 0.01,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Column(
                                children: [
                                  Divider(
                                    thickness: 03.0,
                                    color: Color(0xffE0E0E0),
                                  ),
                                  SizedBox(
                                    height: heightApp * 0.01,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(child: BoxTextField(text: "رمز التخفيض")),SizedBox(
                                    width: widthApp * 0.01,
                                  ),
                                     Column(
                                       children: [  SizedBox(
                                    height: heightApp * 0.02,
                                  ),
                                         SizedBox(
                                            height: heightApp * 0.063,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                primary:
                                                    Theme.of(context).primaryColor,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(12)),
                                              ),
                                              onPressed: () {},
                                              child: Center(
                                                child: Text(
                                                  'تطبيق',
                                                  style: TextStyle(color: kwhite),
                                                ),
                                              ),
                                            ),
                                          ),
                                       ],
                                     ),
                                    ],
                                  ),
                                  Divider(
                                    thickness: 03.0,
                                    color: Color(0xffE0E0E0),
                                  ),
                                  SizedBox(
                                    height: heightApp * 0.01,),
                                  Container(
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: kprimery, width: 1)),
                        child: TabBar(
                          onTap: controller.selectTab,
                          // controller: _tabController,
                          // give the indicator a decoration (color and border radius)
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kprimery,
                          ),
                          labelColor: Colors.white,
                          unselectedLabelColor: kprimery,
                                        tabs: [
                                          Tab(
                                            child: Text(
                                              'داخل المقهى',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Tab(
                                            child: Text(
                                              'توصيل',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                
                                ],
                              ),
                            ),
                            controller.menu
                          ]),
                    );
                  })));
    });
  }
}
