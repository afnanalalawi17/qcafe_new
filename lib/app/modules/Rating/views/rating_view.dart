import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';
import 'package:qcafe/Shared/color/colors.dart';
import 'package:qcafe/Shared/style/Text_style.dart';
import 'package:qcafe/Shared/widget/constants.dart';

import '../controllers/rating_controller.dart';

class RatingView extends GetView<RatingController> {
  const RatingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Text(
            "التقييم",
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
      body: Column(
        children: [
          SizedBox(
            height: heightApp * 0.04,
          ),
          Center(
            child: RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Theme.of(context).primaryColor,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: TextField(
              maxLines: 7,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kwhite, width: 2),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kwhite, width: 2),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                hintText: "اكتب تعليقك...",
                filled: true,
                fillColor: kwhite,
                hintStyle: TextStyle(
                    fontWeight: FontWeight.w600, color: kgrey, fontSize: 18),
                contentPadding: EdgeInsets.all(12),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      scrollable: true,
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(12.0))),
                      content: Column(
                        children: [
                          Text(
                            'شكرا لك ',
                            style: TextStyle(
                                fontSize: 18,
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    );
                  });
            },
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  colors: [Color(0xffCDA349), Color(0xffDCB666)],
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  stops: [0.0, 8.2],
                ),
              ),
              child: Center(
                child: Text(
                  'إرسال',
                  style: kWhite_text,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
