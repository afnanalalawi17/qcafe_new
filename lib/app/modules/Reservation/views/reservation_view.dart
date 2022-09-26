import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qcafe/Shared/color/colors.dart';
import 'package:qcafe/Shared/widget/constants.dart';
import 'package:qcafe/Shared/widget/gradient.dart';
import 'package:qcafe/Shared/widget/main_button.dart';
import 'package:qcafe/app/routes/app_pages.dart';
import 'package:table_calendar/table_calendar.dart';

import '../controllers/reservation_controller.dart';

class ReservationView extends GetView<ReservationController> {
  DateTime? _selectedDay;
  DateTime? day;
  DateTime _focusedDay = DateTime.now();
  CalendarFormat _calendarFormat = CalendarFormat.month;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Text(
            "حجز طاولة",
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
        body: GetBuilder<ReservationController>(
            init: ReservationController(),
            initState: (_) {},
            builder: (_) {
              return SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "الرجاء اختيار الزمن وعدد الاشخاص",
                                style: TextStyle(color: kgrey, fontSize: 14),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: heightApp * 0.02,
                          ),
                          TableCalendar(
                            locale: 'ar',
                            firstDay: DateTime.utc(2010, 10, 16),
                            lastDay: DateTime.utc(2030, 3, 14),
                            focusedDay: DateTime.now(),
                            calendarFormat: CalendarFormat.month,
                            selectedDayPredicate: (day) {
                              return isSameDay(_selectedDay, day);
                            },
                            onDaySelected: (selectedDay, focusedDay) {
                              if (!isSameDay(_selectedDay, selectedDay)) {
                                _selectedDay = selectedDay;
                                _focusedDay = focusedDay;
                                controller.update();
                              }
                              print(selectedDay);
                            },
                            onPageChanged: (focusedDay) {
                              _focusedDay = focusedDay;
                            },
                            onFormatChanged: (format) {
                              if (_calendarFormat != format) {
                                _calendarFormat = format;
                                controller.update();
                              }
                            },
                            calendarStyle: CalendarStyle(
                              outsideDaysVisible: false,
                              todayDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xffCDA349),
                                      Color(0xffFFD271)
                                    ],
                                    begin: const FractionalOffset(0.0, 0.0),
                                    end: const FractionalOffset(1.0, 0.0),
                                    stops: [0.0, 1.0],
                                    tileMode: TileMode.clamp),
                              ),
                              selectedDecoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: kprimery,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              // defaultDecoration: BoxDecoration(
                              //   color: Colors.white,
                              //   shape: BoxShape.rectangle,
                              //   borderRadius: BorderRadius.circular(6),
                              // ),
                              weekendDecoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            headerStyle: HeaderStyle(
                                titleCentered: true,
                                headerPadding: EdgeInsets.all(20)),
                            availableCalendarFormats: const {
                              CalendarFormat.month: '',
                            },
                            startingDayOfWeek: StartingDayOfWeek.monday,
                          ),
                          SizedBox(
                            height: heightApp * 0.02,
                          ),
                          Text(
                            "قبل الظهر",
                            style: TextStyle(
                                color: kblack,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                              height: 40,
                              child: GetBuilder<ReservationController>(
                                  init: ReservationController(),
                                  initState: (_) {},
                                  builder: (_) {
                                    return ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 3,
                                      itemBuilder: (context, index) => Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: GestureDetector(
                                              onTap: () {
                                                controller.onSelectCat(index);
                                              },
                                              child: controller
                                                          .selectedCatIndex !=
                                                      index
                                                  ? Container(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              2.0),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        gradient: LinearGradient(
                                                            colors: [
                                                              Color(0xffCDA349),
                                                              Color(0xffFFD271)
                                                            ],
                                                            begin:
                                                                const FractionalOffset(
                                                                    0.0, 0.0),
                                                            end:
                                                                const FractionalOffset(
                                                                    1.0, 0.0),
                                                            stops: [0.0, 1.0],
                                                            tileMode:
                                                                TileMode.clamp),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 10,
                                                                right: 10,
                                                                top: 5),
                                                        child: Text(
                                                          "6:00 AM",
                                                          style: TextStyle(
                                                              color: kwhite,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ))
                                                  : Container(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              2.0),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                          color: kprimery),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 10,
                                                                right: 10,
                                                                top: 5),
                                                        child: Text(
                                                          "6:00 AM",
                                                          style: TextStyle(
                                                              color: kwhite,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      )))),
                                    );
                                  })),
                          SizedBox(
                            height: heightApp * 0.02,
                          ),
                          Text(
                            "بعد الظهر",
                            style: TextStyle(
                                color: kblack,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                              height: 40,
                              child: GetBuilder<ReservationController>(
                                  init: ReservationController(),
                                  initState: (_) {},
                                  builder: (_) {
                                    return ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 3,
                                      itemBuilder: (context, index) => Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: GestureDetector(
                                              onTap: () {
                                                controller.onSelectCat1(index);
                                              },
                                              child: controller
                                                          .selectedCatIndex1 !=
                                                      index
                                                  ? Container(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              2.0),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        gradient: LinearGradient(
                                                            colors: [
                                                              Color(0xffCDA349),
                                                              Color(0xffFFD271)
                                                            ],
                                                            begin:
                                                                const FractionalOffset(
                                                                    0.0, 0.0),
                                                            end:
                                                                const FractionalOffset(
                                                                    1.0, 0.0),
                                                            stops: [0.0, 1.0],
                                                            tileMode:
                                                                TileMode.clamp),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 10,
                                                                right: 10,
                                                                top: 5),
                                                        child: Text(
                                                          "6:00 AM",
                                                          style: TextStyle(
                                                              color: kwhite,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ))
                                                  : Container(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              2.0),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                          color: kprimery),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 10,
                                                                right: 10,
                                                                top: 5),
                                                        child: Text(
                                                          "6:00 AM",
                                                          style: TextStyle(
                                                              color: kwhite,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      )))),
                                    );
                                  })),
                          SizedBox(
                            height: heightApp * 0.02,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            height: 58,
                            decoration: BoxDecoration(
                              color: kwhite,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "عدد الضيوف",
                                  style: TextStyle(
                                      color: kprimery,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
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
                                        controller.increment();
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
                                        controller.decrement();
                                      },
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: heightApp * 0.02,
                          ),
                          Text(
                            "إختار الطاولة",
                            style: TextStyle(
                                color: kprimery,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "الرجاء اختيار رقم الطاولة",
                            style: TextStyle(color: kgrey, fontSize: 14),
                          ),
                          Directionality(
                            textDirection: TextDirection.ltr,
                            child: Container(
                                padding: const EdgeInsets.only(bottom: 5),
                                decoration: BoxDecoration(
                                  color: kwhite,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Column(
                                  children: [
                                    ListView.builder(
                                        // padding: EdgeInsets.only(top: 7),
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        shrinkWrap: true,
                                        physics: const ClampingScrollPhysics(),
                                        itemCount: 2,
                                        itemBuilder: (context, index) {
                                          return GestureDetector(
                                              onTap: () {
                                                controller.onSelectCat2(index);
                                              },
                                              child: controller
                                                          .selectedCatIndex2 !=
                                                      index
                                                  ? Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 5,
                                                              bottom: 5,
                                                              left: 5,
                                                              right: 5),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: <Widget>[
                                                            SizedBox(
                                                              height:
                                                                  heightApp *
                                                                      0.044,
                                                              width: 40,
                                                              child:
                                                                  ElevatedButton(
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                  primary:
                                                                      kwhite,
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10)),
                                                                ),
                                                                onPressed:
                                                                    () {},
                                                                child: Center(
                                                                  child: Text(
                                                                      "1",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        color:
                                                                            kblack,
                                                                      )),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height:
                                                                  heightApp *
                                                                      0.044,
                                                              width: 40,
                                                              child:
                                                                  ElevatedButton(
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                  primary:
                                                                      kwhite,
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10)),
                                                                ),
                                                                onPressed:
                                                                    () {},
                                                                child: Center(
                                                                  child: Text(
                                                                      "2",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        color:
                                                                            kblack,
                                                                      )),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height:
                                                                  heightApp *
                                                                      0.044,
                                                              width: 40,
                                                              child:
                                                                  ElevatedButton(
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                  primary:
                                                                      kwhite,
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10)),
                                                                ),
                                                                onPressed:
                                                                    () {},
                                                                child: Center(
                                                                  child: Text(
                                                                      "3",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        color:
                                                                            kblack,
                                                                      )),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height:
                                                                  heightApp *
                                                                      0.044,
                                                              width: 40,
                                                              child:
                                                                  ElevatedButton(
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                  primary:
                                                                      kwhite,
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10)),
                                                                ),
                                                                onPressed:
                                                                    () {},
                                                                child: Center(
                                                                  child: Text(
                                                                      "4",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        color:
                                                                            kblack,
                                                                      )),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height:
                                                                  heightApp *
                                                                      0.044,
                                                              width: 40,
                                                              child:
                                                                  ElevatedButton(
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                  primary:
                                                                      kwhite,
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10)),
                                                                ),
                                                                onPressed:
                                                                    () {},
                                                                child: Center(
                                                                  child: Text(
                                                                      "5",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        color:
                                                                            kblack,
                                                                      )),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height:
                                                                  heightApp *
                                                                      0.044,
                                                              width: 40,
                                                              child:
                                                                  ElevatedButton(
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                  primary:
                                                                      kwhite,
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10)),
                                                                ),
                                                                onPressed:
                                                                    () {},
                                                                child: Center(
                                                                  child: Text(
                                                                      "6",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        color:
                                                                            kblack,
                                                                      )),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height:
                                                                  heightApp *
                                                                      0.044,
                                                              width: 40,
                                                              child:
                                                                  ElevatedButton(
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                  primary:
                                                                      kwhite,
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10)),
                                                                ),
                                                                onPressed:
                                                                    () {},
                                                                child: Center(
                                                                  child: Text(
                                                                      "7",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        color:
                                                                            kblack,
                                                                      )),
                                                                ),
                                                              ),
                                                            ),
                                                          ]),
                                                    )
                                                  : Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 5,
                                                              bottom: 5,
                                                              left: 5,
                                                              right: 5),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: <Widget>[
                                                            SizedBox(
                                                              height:
                                                                  heightApp *
                                                                      0.044,
                                                              width: 40,
                                                              child:
                                                                  ElevatedButton(
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                  primary:
                                                                      kwhite,
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10)),
                                                                ),
                                                                onPressed:
                                                                    () {},
                                                                child: Center(
                                                                  child: Text(
                                                                      "1",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        color:
                                                                            kblack,
                                                                      )),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height:
                                                                  heightApp *
                                                                      0.044,
                                                              width: 40,
                                                              child:
                                                                  ElevatedButton(
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                  primary:
                                                                      kwhite,
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10)),
                                                                ),
                                                                onPressed:
                                                                    () {},
                                                                child: Center(
                                                                  child: Text(
                                                                      "2",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        color:
                                                                            kblack,
                                                                      )),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height:
                                                                  heightApp *
                                                                      0.044,
                                                              width: 40,
                                                              child:
                                                                  ElevatedButton(
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                  primary:
                                                                      kwhite,
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10)),
                                                                ),
                                                                onPressed:
                                                                    () {},
                                                                child: Center(
                                                                  child: Text(
                                                                      "3",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        color:
                                                                            kblack,
                                                                      )),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height:
                                                                  heightApp *
                                                                      0.044,
                                                              width: 40,
                                                              child:
                                                                  ElevatedButton(
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                  primary:
                                                                      kprimery,
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10)),
                                                                ),
                                                                onPressed:
                                                                    () {},
                                                                child: Center(
                                                                  child: Text(
                                                                      "4",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        color:
                                                                            kblack,
                                                                      )),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height:
                                                                  heightApp *
                                                                      0.044,
                                                              width: 40,
                                                              child:
                                                                  ElevatedButton(
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                  primary:
                                                                      kwhite,
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10)),
                                                                ),
                                                                onPressed:
                                                                    () {},
                                                                child: Center(
                                                                  child: Text(
                                                                      "5",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        color:
                                                                            kblack,
                                                                      )),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height:
                                                                  heightApp *
                                                                      0.044,
                                                              width: 40,
                                                              child:
                                                                  ElevatedButton(
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                  primary:
                                                                      kwhite,
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10)),
                                                                ),
                                                                onPressed:
                                                                    () {},
                                                                child: Center(
                                                                  child: Text(
                                                                      "6",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        color:
                                                                            kblack,
                                                                      )),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height:
                                                                  heightApp *
                                                                      0.044,
                                                              width: 40,
                                                              child:
                                                                  ElevatedButton(
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                  primary:
                                                                      kwhite,
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10)),
                                                                ),
                                                                onPressed:
                                                                    () {},
                                                                child: Center(
                                                                  child: Text(
                                                                      "7",
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            15,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        color:
                                                                            kblack,
                                                                      )),
                                                                ),
                                                              ),
                                                            ),
                                                          ]),
                                                    ));
                                        }),
                                  ],
                                )),
                          ),
                          SizedBox(
                            height: heightApp * 0.02,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    width: widthApp * 0.42,
                                    child: MainButton(
                                        text: "متابعة",
                                        press: () {
                                          showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  scrollable: true,
                                                  shape:
                                                      const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius.circular(
                                                                      12.0))),
                                                  content: Column(
                                                    children: [
                                                      Text(
                                                        'إضافة منتجات مع الحجز',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color: kblack,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      SizedBox(
                                                        height:
                                                            heightApp * 0.03,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Flexible(
                                                              child: MainButton(
                                                                  text: "لاحقا",
                                                                  press:
                                                                      () {
                                                                        Get.offAndToNamed(Routes.CONFIRM_ORDER_TABLE_LATER);
                                                                      })),
                                                          SizedBox(
                                                            width:
                                                                widthApp * 0.03,
                                                          ),
                                                          Flexible(
                                                              child: MainButton(
                                                                  text: "الان",
                                                                  press:
                                                                      () { Get.offAndToNamed(Routes.LIST_ORDER);})),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                );
                                              });

                                          // Get.toNamed(Routes.CONFIRM_ORDER);
                                        })),
                                SizedBox(
                                  width: widthApp * 0.42,
                                  height: heightApp * 0.055,
                                  child: UnicornOutlineButton(
                                    strokeWidth: 2,
                                    radius: 12,
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xffCDA349),
                                        Color(0xffFFD271)
                                      ],
                                    ),
                                    onPressed: () {},
                                    child: Center(
                                      child: Text("إلغاء",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xffCDA349),
                                          )),
                                    ),
                                  ),
                                )
                              ]),
                          SizedBox(
                            height: heightApp * 0.04,
                          ),
                        ])),
              );
            }));
  }
}
