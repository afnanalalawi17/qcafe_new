import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:qcafe/Shared/color/colors.dart';
import 'package:qcafe/Shared/widget/main_button.dart';
import 'package:qcafe/app/routes/app_pages.dart';

import '../controllers/get_location_controller.dart';

class GetLocationView extends GetView<GetLocationController> {
  @override
  final controller = Get.put(GetLocationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "تحديد الموقع",
                  style: TextStyle(
                      color: kprimery,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.CART);
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
        body: PlacePicker(
          apiKey:
              'AIzaSyCHsQnNAuF9JIJ5mqdxHUjX33FVlOSSIPM', // Put YOUR OWN KEY here.
          initialPosition:
              LatLng(controller.Latitude.value, controller.Longitude.value),
          hidePlaceDetailsWhenDraggingPin: false,
          enableMapTypeButton: false,
          selectInitialPosition: true,
          automaticallyImplyAppBarLeading: false,
          enableMyLocationButton: false,
          autocompleteLanguage: 'ar',
          region: 'Saudia Arabia',
          useCurrentLocation: true,
          selectedPlaceWidgetBuilder:
              (_, selectedPlace, state, isSearchBarFocused) {
            return FloatingCard(
              bottomPosition: 0,
              leftPosition: 0,
              elevation: 5,
              width: MediaQuery.of(context).size.width,
              height: 240,
              borderRadius: BorderRadius.circular(20),
              child: state == SearchingState.Searching
                  ? Center(child: CircularProgressIndicator())
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Sheet_Divider(),
                          SizedBox(height: 20),
                          Text(
                            ' الموقع',
                            style: TextStyle(
                                color: kprimery, fontWeight: FontWeight.bold),
                          ),
                          //SizedBox(height: 10),
                          // controller.GetCityName(
                          //     selectedPlace!.formattedAddress.toString()),
                          SizedBox(height: 25),
                          Text(
                            selectedPlace!.formattedAddress!.toString(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                            //  style: KText_Style_12_R,
                          ),
                          SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: MainButton(
                                text: "تأكيد الموقع",
                                press: () {
                                  // print(
                                  //     selectedPlace.formattedAddress!.toString());
                                  // controller1.address =
                                  //     selectedPlace.formattedAddress!.toString();
                                  // controller1.lat = selectedPlace
                                  //     .geometry!.location.lat
                                  //     .toString();
                                  // controller1.long = selectedPlace
                                  //     .geometry!.location.lng
                                  //     .toString();
                                  // Get.toNamed(Routes.ADD_INFRACTION, arguments: [
                                  //   selectedPlace.formattedAddress!.toString(),
                                  // ]);
                                }),
                          ),
                          Row(
                            children: [
                              // GradentButtom(
                              //   ontab: () {
                              //     print(selectedPlace.geometry!.location.lat
                              //         .toString());
                              //     print(controller.name);
                              //     controller.AddAddress(
                              //         selectedPlace.formattedAddress!.toString(),
                              //         selectedPlace.geometry!.location.lat
                              //             .toString(),
                              //         selectedPlace.geometry!.location.lng
                              //             .toString());
                              //   },
                              //   lable: 'تأكيد الموقع',
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
            );
          },
        ),
      );
    
  }
}
