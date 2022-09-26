
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qcafe/Shared/color/colors.dart';
import 'package:qcafe/Shared/widget/constants.dart';
import 'package:qcafe/app/modules/boarding/controllers/on_boarding_model.dart';
import 'package:qcafe/app/routes/app_pages.dart';

import '../controllers/boarding_controller.dart';

class BoardingView extends GetView<BoardingController> {

   @override
  final controller = Get.put(BoardingController());
  final _controller = BoardingController();

  List<OnBoardingModel> screens = <OnBoardingModel>[
    OnBoardingModel(
      img: 'assets/images/boarding1.png',
      text: "قم بعملك",
      des: "يمكنك القيام باعمالك واجتماعاتك بهدوء في الاماكن المخصصة لها",

    ),
    OnBoardingModel(
      img: 'assets/images/boarding2.png',
      text: "مكانك المفضل",
  des: "يمكنك حجز طاولة في المكان المفضل لديك داخل المقهى بسهولة",

    ),
    OnBoardingModel(
      img: 'assets/images/boarding3.png',
      text: "خدمة التوصيل",
    des: "نوفر خدمة التوصيل على مدار الـ 24 ساعة",

    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image:
                        AssetImage("assets/images/seamless_pattern_coffee.jpg"),
                    fit: BoxFit.cover)),
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      kwhite.withOpacity(0.80),
                      kwhite.withOpacity(0.80),
                    ],
                    stops: [
                      0.0,
                      1.0
                    ])),
          ),
          PageView.builder(
          controller: _controller.pageController,
          onPageChanged: _controller.selectedPageIndex,
          itemCount: _controller.screens.length,
          itemBuilder: (context, index) {
            return   Padding(
              padding: const EdgeInsets.only(top: 130, left: 10, right: 10),
              child: Column(
              ///  mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Image.asset(screens[index].img,height: 300,width: 300,),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                child: Text(
                 screens[index].text,
                  style: TextStyle(
                      color: kprimery,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    screens[index].des,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kprimery,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
                ],
              ),
            );
      
       }),
          Align(
            alignment: Alignment.bottomCenter,
            child: Stack(
              children: [
                Container(
                  height: 220,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Color(0xffCDA349), Color(0xffFFD271)],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  stops: [0.0, 8.2],
                                ),
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xffCDA349), Color(0xffFFD271)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                stops: [0.0, 8.2],
                              ),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: CircleAvatar(
                          radius: 33,
                          backgroundColor: kwhite,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [Image.asset("assets/images/logo.png")],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            _controller.screens.length,
                            (index) => Obx(() {
                              return Container(
                                margin: const EdgeInsets.all(4),
                                width: _controller.selectedPageIndex.value == index
                                    ? 20
                                    : 12,
                                height:
                                    _controller.selectedPageIndex.value == index
                                        ? 6
                                        : 4,
                                decoration: BoxDecoration(
                                  color:
                                      _controller.selectedPageIndex.value == index
                                          ? kprimery
                                          : kwhite,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 90, left: 100, right: 100),
                        child: Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: heightApp * 0.055,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: kwhite,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              onPressed: () {
                                 Get.toNamed(Routes.LOGIN) ;
                              },
                              child: Center(
                                child: Text("إبداء الان",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffCDA349),
                                    )),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }




  }
