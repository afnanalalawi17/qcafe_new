
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qcafe/Shared/color/colors.dart';
import 'package:qcafe/Shared/widget/constants.dart';
import 'package:qcafe/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';
 final List<String> imgList = [
  'assets/images/5765041-1520375531.jpeg',
  'assets/images/5765041-1520375531.jpeg',
  'assets/images/5765041-1520375531.jpeg',
];
class HomeView extends GetView<HomeController> {

  // final CarouselController _controller = CarouselController();
  final List<Widget> imageSliders = imgList
      .map((item) => ClipRRect(
           borderRadius: const BorderRadius.all(Radius.circular(12)),
          child: SizedBox(
              width: double.infinity,
              child: Image.asset(
                item,
                fit: BoxFit.fill,
              ))))
      .toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: GetBuilder<HomeController>(
            init: HomeController(),
            initState: (_) {},
            builder: (_) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only( top: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          "نقدم لك أفضل الخدمات",
                          style: TextStyle(
                              color: kprimery,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: heightApp * 0.02,
                      ),
              Column(
              children: [
                SizedBox(
                  height: 150.0,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child:
CarouselSlider(
   items: imageSliders,
   options: CarouselOptions(
      height: 400,
      aspectRatio: 16/9,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      // onPageChanged: callbackFunction,
      scrollDirection: Axis.horizontal,
   )
 )
                  ),
                ),
              ],
            ),
                      SizedBox(
                        height: heightApp * 0.01,
                      ),
                      // SizedBox(
                      //   height: 180,
                      //   child: GridView.builder(
                      //     scrollDirection: Axis.horizontal,
                      //     itemCount: 12,
                      //     gridDelegate:
                      //         SliverGridDelegateWithFixedCrossAxisCount(
                      //       crossAxisCount: 1,
                      //       crossAxisSpacing: 8,
                      //       mainAxisSpacing: 8,
                      //       childAspectRatio: (0.8 / 0.6),
                      //     ),
                      //     itemBuilder: (
                      //       context,
                      //       index,
                      //     ) {
                      //       return GestureDetector(
                      //         onTap: () {
                      //           Get.toNamed(Routes.DETIALS_ITEM);
                      //         },
                      //         child: Padding(
                      //           padding: const EdgeInsets.all(4.0),
                      //           child: Container(
                      //             decoration: BoxDecoration(
                      //                 color: kwhite,
                      //                 borderRadius: BorderRadius.circular(20)),
                      //             child: Column(
                      //               crossAxisAlignment:
                      //                   CrossAxisAlignment.start,
                      //               children: [
                      //                 Padding(
                      //                   padding: const EdgeInsets.only(
                      //                       left: 10, right: 10),
                      //                   child: Stack(children: [
                      //                     Align(
                      //                       alignment: Alignment.center,
                      //                       child: Image.asset(
                      //                         "assets/images/img.png",
                      //                         width: 120,
                      //                         height: 120,
                      //                       ),
                      //                     ),
                      //                     Padding(
                      //                       padding: const EdgeInsets.only(
                      //                           top: 22.0, left: 10.0),
                      //                       child: Align(
                      //                         alignment: Alignment.topLeft,
                      //                         child: Container(
                      //                           width: 45,
                      //                           decoration: BoxDecoration(
                      //                               color: kprimery,
                      //                               borderRadius:
                      //                                   BorderRadius.circular(
                      //                                       12)),
                      //                           child: Padding(
                      //                             padding:
                      //                                 const EdgeInsets.only(
                      //                                     left: 1, right: 1),
                      //                             child: Row(
                      //                               children: [
                      //                                 Icon(
                      //                                   Icons
                      //                                       .star_border_rounded,
                      //                                   color: kwhite,
                      //                                 ),
                      //                                 Text(
                      //                                   "4.7",
                      //                                   style: TextStyle(
                      //                                       color: kwhite,
                      //                                       fontSize: 11,
                      //                                       fontWeight:
                      //                                           FontWeight
                      //                                               .bold),
                      //                                 )
                      //                               ],
                      //                             ),
                      //                           ),
                      //                         ),
                      //                       ),
                      //                     ),
                      //                   ]),
                      //                 ),
                      //                 Padding(
                      //                   padding: const EdgeInsets.only(
                      //                       left: 10, right: 10),
                      //                   child: Text(
                      //                     'نسكافية',
                      //                     style: TextStyle(
                      //                         color: kblack,
                      //                         fontSize: 10,
                      //                         fontWeight: FontWeight.bold),
                      //                   ),
                      //                 ),
                      //                 Padding(
                      //                   padding: const EdgeInsets.only(
                      //                       left: 10, right: 10),
                      //                   child: Row(
                      //                     mainAxisAlignment:
                      //                         MainAxisAlignment.spaceBetween,
                      //                     children: [
                      //                       Text(
                      //                         '12 ر.س',
                      //                         style: TextStyle(
                      //                             color: kprimery,
                      //                             fontSize: 11,
                      //                             fontWeight: FontWeight.bold),
                      //                       ),
                      //                       SizedBox(
                      //                           height: 22,
                      //                           width: 22,
                      //                           child: Container(
                      //                               decoration: BoxDecoration(
                      //                                   borderRadius:
                      //                                       BorderRadius
                      //                                           .circular(50),
                      //                                   color: kprimery),
                      //                               child: Icon(
                      //                                 Icons.add,
                      //                                 color: kwhite,
                      //                                 size: 15.0,
                      //                               ))),
                      //                     ],
                      //                   ),
                      //                 )
                      //               ],
                      //             ),
                      //           ),
                      //         ),
                      //       );
                      //     },
                      //   ),
                      // ),
                      SizedBox(
                        height: heightApp * 0.02,
                      ),
                      // Text(
                      //   "العروض والتخفيضات",
                      //   style: TextStyle(
                      //       color: kprimery,
                      //       fontSize: 14,
                      //       fontWeight: FontWeight.bold),
                      // ),
                         SizedBox(
                        height: 20,
                        child: ListView.builder(
                            physics: const ClampingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                  onTap: () {
                                    controller.onSelectCat(index);
                                  },
                                  child: controller.selectedCatIndex == index
                                      ? Padding(
                                          padding: const EdgeInsets.only(
                                             left: 10,right: 10),
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                left: 10, right: 10),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
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
                                            child: Text(
                                              "المشروبات الباردة",
                                              style: TextStyle(
                                                  color: kwhite,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        )
                                      : Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10,right: 10),
                                          child: Container(
                                            padding: EdgeInsets.only(
                                                left: 10, right: 10),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: kwhite),
                                            child: Text(
                                              "المشروبات الباردة",
                                              style: TextStyle(
                                                  color: Color(0xffCDA349),
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ));
                            }),
                      ),
                      ListView.builder(
                          padding: EdgeInsets.only(top: 7,left: 10,right: 10),
                          // padding: const EdgeInsets.only(
                          //     left: 20, right: 20),
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                                onTap: () {
                                  Get.toNamed(Routes.DETIALS_ITEM);
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
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    Get.toNamed(
                                                        Routes.DETIALS_ITEM);
                                                  },
                                                  child: Container(
                                                    // width: double.infinity,
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
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 50,
                                                              right: 50),
                                                      child: Center(
                                                        child: Text("اطلب الان",
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: kwhite,
                                                            )),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .star_border_rounded,
                                                        color: Theme.of(context).primaryColor,
                                                      ),
                                                      Text(
                                                        "4.7",
                                                        style: TextStyle(
                                                          color: Theme.of(context).primaryColor,
                                                            fontSize: 11,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      )
                                                    ]),
                                                    SizedBox(
                                                      width: widthApp * 0.18,
                                                    ),
                                                    Text(
                                                      "70 ر.س",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: kprimery,
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ]),
                                        )
                                      ]),
                                ));
                          })
                    ],
                  ),
                ),
              );
            }));
  }
}
