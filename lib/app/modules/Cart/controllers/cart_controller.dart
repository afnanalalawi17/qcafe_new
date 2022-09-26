
import 'dart:async';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:qcafe/Shared/color/colors.dart';
import 'package:qcafe/Shared/widget/box_Text_Field.dart';
import 'package:qcafe/Shared/widget/constants.dart';
import 'package:qcafe/Shared/widget/main_button.dart';
import 'package:qcafe/app/routes/app_pages.dart';

class CartController extends GetxController {
  //TODO: Implement CartController
final Completer<GoogleMapController> _controller = Completer();
  var latitude = 'Getting latitude .. '.obs;
  var lonitude = 'Getting lonitude .. '.obs;
  var address = 'العنوان .. '.obs;
  late StreamSubscription<Position> streamSubscription;
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(23.8859, 45.0792),
    zoom: 5,
  );
  late Column menu;
  List<Column> tabView = [
    Column(
      children: [
        SizedBox(
          height: heightApp * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
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
                  "الرجاء إدخال رقم الطاولة لتاكيد الحجز",
                  style: TextStyle(
                      color: kwhite, fontSize: 12, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: BoxTextField(text: "رقم الطاولة"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Divider(
            thickness: 03.0,
            color: Color(0xffE0E0E0),
          ),
        ),
        SizedBox(
          height: heightApp * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "مجموع المبلغ",
                style: TextStyle(
                    color: kprimery, fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                "10 ر.س",
                style: TextStyle(
                    color: kprimery, fontSize: 14, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          height: heightApp * 0.02,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: MainButton(text: "إكمال الطلب", press: () {
            
             Get.toNamed(Routes.CONFIRM_ORDER_INSIDE_CAFE) ;}),
        ),
        SizedBox(
          height: heightApp * 0.08,
        ),
      ],
    ),
    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
        height: heightApp * 0.01,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Text(
          "بيانات التوصيل",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: kprimery, fontSize: 14),
        ),
      ), SizedBox(
        height: heightApp * 0.01,
      ), Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Text(
          "إضغط على الخريطة أدناه لتحديد موقعك ثم ادخل تفاصيل العنوان",
          style: TextStyle(
              fontWeight: FontWeight.bold, color:Color(0xff828282), fontSize: 12),
        ),
      ), SizedBox(
        height: heightApp * 0.01,
      ), 
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: GestureDetector(
          onTap: () {
              Get.toNamed(Routes.GET_LOCATION);
          },
          child: SizedBox(
                                      width: double.infinity,
                                      height: 230,
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(12),
                                          topRight: Radius.circular(12),
                                          bottomRight: Radius.circular(12),
                                          bottomLeft: Radius.circular(12),
                                        ),
                                        child:  GoogleMap(
                                          onTap: (argument) {
                                              Get.toNamed(Routes.GET_LOCATION);
                                          },
                                          scrollGesturesEnabled:false ,
                                    zoomControlsEnabled: false,
                                    myLocationButtonEnabled: false,
                                    initialCameraPosition: _kGooglePlex,
                                      onMapCreated:
                                                (GoogleMapController controller) {
                                            //  _controller.complete(controller);
                                            },
                                  ),
                                        ),
                                      ),
        ),
      ),SizedBox(
        height: heightApp * 0.01,
      ),  Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: BoxTextField(text: "تفاصيل العنوان"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Divider(
            thickness: 03.0,
            color: Color(0xffE0E0E0),
          ),
        ),
        SizedBox(
          height: heightApp * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "مجموع المبلغ",
                style: TextStyle(
                    color: kprimery, fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                "10 ر.س",
                style: TextStyle(
                    color: kprimery, fontSize: 14, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          height: heightApp * 0.02,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: MainButton(text: "إكمال الطلب", press: () {  Get.toNamed(Routes.CONFIRM_ORDER_DELIVERY) ;  }),
        ),
        SizedBox(
          height: heightApp * 0.08,
        ),
    ]),
  ];
  

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    menu = tabView[0];
    selectTab;
    getLocation();
  }

  void selectTab(int index) {
    menu = tabView[index];

    update();
  }

void increment() {
    count.value++;
    update();
  }

  void decrement() {
    if (count.value > 1) {
      count.value--;
    } else {
      count.value = 1;
    }

    update();
  }
  @override
  void onClose() {}
  
   getLocation() async {
    bool servicesEnabled;
    LocationPermission permission;
    servicesEnabled = await Geolocator.isLocationServiceEnabled();
    if (!servicesEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error('error');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error("error");
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error('error');
    }
    streamSubscription =
        Geolocator.getPositionStream().listen((Position position) {
      latitude.value = "latitude:${position.latitude}";
      lonitude.value = "longitude:${position.longitude}";
      getAddressFromLatLon(position);
    });
  }

  Future<void> getAddressFromLatLon(Position position) async {
    List<Placemark> placemark = await placemarkFromCoordinates(
        position.latitude, position.longitude,
        localeIdentifier: 'ar');
    Placemark plac = placemark[0];
    address.value = " ${plac.locality}";
   
  }
  
}
