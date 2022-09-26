import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:get/get.dart';
import 'package:qcafe/Shared/color/colors.dart';
import 'package:qcafe/Shared/widget/constants.dart';
import 'package:qcafe/app/routes/app_pages.dart';

import '../controllers/favorite_controller.dart';

class FavoriteView extends GetView<FavoriteController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Text(
            "المفضلة",
            style: TextStyle(
                color: kprimery, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          // leading: GestureDetector(
          //   onTap: () {
          //     Navigator.of(context).pop();
          //   },
          //   child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Container(
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(50),
          //           gradient: LinearGradient(
          //               colors: [Color(0xffCDA349), Color(0xffFFD271)],
          //               begin: const FractionalOffset(0.0, 0.0),
          //               end: const FractionalOffset(1.0, 0.0),
          //               stops: [0.0, 1.0],
          //               tileMode: TileMode.clamp),
          //         ),
          //         child: Padding(
          //           padding: const EdgeInsets.only(right: 6.0),
          //           child: Icon(
          //             Icons.arrow_back_ios,
          //             color: kwhite,
          //             size: 20.0,
          //           ),
          //         )),
          //   ),
          // )
          
          ),
        body: Column(children: [
          ListView.builder(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Slidable(
                    useTextDirection: false,
                    key: const ValueKey(0),
                    endActionPane: ActionPane(
                      motion: ScrollMotion(),
                      //dismissible: DismissiblePane(onDismissed: () {}),
                      children: [
                        Expanded(
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xffE22D2D),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 70),
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
                      ],
                    ),
                    child: GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.DETIALS_ITEM);
                        },
                        child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(15),
                                                    bottomRight:
                                                        Radius.circular(15)),
                                            child: Image.asset(
                                              "assets/images/img.png",
                                              height: 60.0,
                                              width: 102.0,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 5),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "نسكافية",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: heightApp * 0.01,
                                              ),
                                              Text(
                                                "كريمة",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: kprimery,
                                                    fontSize: 8),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "5 ر.س",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: kprimery),
                                        ),
                                        Text(
                                          "",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ]),
                            ))));
              }),
        ]));
  }
}
