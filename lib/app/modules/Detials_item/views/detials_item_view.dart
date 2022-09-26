import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qcafe/Shared/color/colors.dart';
import 'package:qcafe/Shared/widget/constants.dart';
import 'package:qcafe/Shared/widget/gradient.dart';
import 'package:qcafe/app/routes/app_pages.dart';

import '../controllers/detials_item_controller.dart';

class DetialsItemView extends GetView<DetialsItemController> {
  final kInnerDecoration = BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.white),
    borderRadius: BorderRadius.circular(8.16),
  );

  final kGradientBoxDecoration = BoxDecoration(
    gradient: LinearGradient(
      colors: [Color(0xffCDA349), Color(0xffFFD271)],
      begin: FractionalOffset(0.0, 0.0),
      end: FractionalOffset(0.9, 2.6),
      stops: [0.0, 8.2],
    ),
    // border: Border.all(
    //   color: kprimery,
    // ),
    borderRadius: BorderRadius.circular(8.16),
  );

    var isSelected = false;
      var mycolor=Colors.white;

      void toggleSelection() {
    
      if (isSelected) {
        mycolor=Colors.white;
        isSelected = false;
      } else {
        mycolor=Colors.grey[300]!;
        isSelected = true;
      }
   controller.update();}
   
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
                GestureDetector(
                  onTap: () {
                       Navigator.of(context).pop();
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
                            Icons.arrow_back_ios,
                            color: kwhite,
                            size: 15.0,
                          ))),
                ),  Text(
                  "تفاصيل الصنف",
                  style: TextStyle(
                      color: kprimery,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                  GestureDetector(
                  onTap: () {
    Get.toNamed(Routes.CART) ;               
                  },
                    child: SizedBox(
                        height: 35,
                        width: 35,
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: LinearGradient(
                                colors: [Color(0xffCDA349), Color(0xffFFD271)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                stops: [0.0, 8.2],
                              ),
                            ),
                            child: Icon(
                              Icons.shopping_bag_outlined,
                              color: kwhite,
                              size: 15.0,
                            ))),
                  ),
                      
               
              ],
            )),
      body:GetBuilder<DetialsItemController>(
                  init: DetialsItemController(),
                  initState: (_) {},
                  builder: (_) {
                    return SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only( right: 15, left: 15),
              child: Image.asset("assets/images/img3.png"),
            ),
            
            SingleChildScrollView(
                child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 290),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "نسكافيه",
                              style: TextStyle(
                                  color: kblack,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: 45,
                              decoration: BoxDecoration(
                                  color: kprimery,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 1, right: 1),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star_border_rounded,
                                      color: kwhite,
                                    ),
                                    Text(
                                      "4.7",
                                      style: TextStyle(
                                          color: kwhite,
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: heightApp * 0.01,
                        ),
                        Text(
                          "لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ... او نماذج  لوريم ايبسوم ميم لتعرض على العميل ليتصور طريقه  ..",
                          style: TextStyle(
                              color: kblack,
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          height: heightApp * 0.01,
                        ),
                        Text(
                          "الاضافات",
                          style: TextStyle(
                              color: kprimery,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: heightApp * 0.01,
                        ),
                        SizedBox(
                          height: 25,
                          child: ListView.builder(
                              physics: const ClampingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                   controller.onSelectCat(index);
                                  //  toggleSelection();
                                  },
                                  child:
                                  controller.selectedCatIndex != index
                                  
                               ?    Padding(
                                    padding:
                                        const EdgeInsets.only(left: 5, right: 5),
                                    child: Container(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: kwhite,
                                        border: Border(
                                          top: BorderSide(
                                            //                   <--- right side
                                            color: kprimery,
                                            width: 2.0,
                                          ),
                                          right: BorderSide(
                                            //                   <--- right side
                                            color: kprimery,
                                            width: 2.0,
                                          ),
                                          left: BorderSide(
                                            //                   <--- right side
                                            color: kprimery,
                                            width: 2.0,
                                          ),
                                          bottom: BorderSide(
                                            //                   <--- right side
                                            color: kprimery,
                                            width: 2.0,
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        "حليب",
                                        style: TextStyle(
                                            color: kprimery,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ): Padding(
                                    padding:
                                        const EdgeInsets.only(left: 5, right: 5),
                                    child: Container(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: kprimery,
                                       
                                      ),
                                      child: Text(
                                        "حليب",
                                        style: TextStyle(
                                            color: kwhite,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )
                                );
                              }),
                        ),
                        SizedBox(
                          height: heightApp * 0.01,
                        ),
                        Divider(
                          thickness: 02.0,
                          color: Color(0xffE0E0E0),
                        ),
                        SizedBox(
                          height: heightApp * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                UnicornOutlineButton(
                                  strokeWidth: 2,
                                  radius: 8.61,
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffCDA349),
                                      Color(0xffFFD271)
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Color(0xffCDA349),
                                  ),
                                  onPressed: () {
                                   controller.increment() ;
                                  },
                                ),
                                SizedBox(
                                  width: widthApp * 0.04,
                                ),
                                Text(
                                  controller.count.toString(),
                                  style: TextStyle(
                                      color: kblack,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: widthApp * 0.04,
                                ),
                                UnicornOutlineButton(
                                  strokeWidth: 2,
                                  radius: 8.61,
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffCDA349),
                                      Color(0xffFFD271)
                                    ],
                                  ),
                                  child: Icon(
                                    Icons.remove,
                                    color: Color(0xffCDA349),
                                  ),
                                  onPressed: () {
                                     controller.decrement() ;
                                     
                                  },
                                ),
                              ],
                            ),
                            Text(
                              "26 ر.س",
                              style: TextStyle(
                                  color: kprimery,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: heightApp * 0.04,
                        ),
                        GestureDetector(
                          onTap: () {
                       
                          },
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient: LinearGradient(
                                colors: [Color(0xffCDA349), Color(0xffFFD271)],
                                begin: FractionalOffset(0.0, 0.0),
                                end: FractionalOffset(0.9, 2.6),
                                stops: [0.0, 8.2],
                              ),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.shopping_bag_outlined,
                                    color: kwhite,
                                    size: 20.0,
                                  ),
                                  Text("إضافةإلى السلة",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: kwhite,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )))
          ],
        ));
                  }),
    );
  }
}
