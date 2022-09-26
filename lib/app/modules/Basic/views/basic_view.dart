import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:qcafe/Shared/color/colors.dart';
import 'package:qcafe/app/modules/Cart/views/cart_view.dart';
import 'package:qcafe/app/modules/Favorite/views/favorite_view.dart';
import 'package:qcafe/app/modules/Reservation/views/reservation_view.dart';
import 'package:qcafe/app/modules/Setting/views/setting_view.dart';
import 'package:qcafe/app/modules/home/views/home_view.dart';

import '../controllers/basic_controller.dart';

class BasicView extends GetView<BasicController> {
      PersistentTabController ?_controller;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BasicController>(builder: (controller) {
      return PersistentTabView(
        
             context,
            controller: _controller,
              confineInSafeArea: true,
            backgroundColor: Color(0XFFCDA349),
            handleAndroidBackButtonPress: true,
            resizeToAvoidBottomInset: true,
            stateManagement: true,
          navBarHeight: 60,
              
            screens: [
               HomeView(),
                  CartView(),
                  ReservationView(),
                  FavoriteView(),
                  SettingView(),
          
            ],
             onItemSelected: controller.changeTabIndex, 
            
            
                 items:  [
                  PersistentBottomNavBarItem(
                       icon: Icon(EvaIcons.homeOutline),
            title: "الرئيسية",
            activeColorPrimary:kprimery,
            inactiveColorPrimary: kwhite,
            inactiveColorSecondary: Colors.purple,
                  ), PersistentBottomNavBarItem(
                       icon: Icon(EvaIcons.shoppingBagOutline),
            title: "السلة",
             activeColorPrimary:kprimery,
            inactiveColorPrimary: kwhite,
            inactiveColorSecondary: Colors.purple,
                  ),
                 PersistentBottomNavBarItem(
                       icon: Icon(Icons.add),
           
             activeColorPrimary:kwhite,
             activeColorSecondary: kprimery,
            inactiveColorPrimary: kprimery,
           
                  ),
                 PersistentBottomNavBarItem(
                       icon: Icon(Icons.bookmark_border_outlined),
            title: "المفضلة ",
             activeColorPrimary:kprimery,
            inactiveColorPrimary: kwhite,
            inactiveColorSecondary: Colors.purple,
                  ),
              PersistentBottomNavBarItem(
                       icon: Icon(EvaIcons.settings2Outline),
            title: "الاعدادات",
              activeColorPrimary:kprimery,
            inactiveColorPrimary: kwhite,
            inactiveColorSecondary: Colors.purple,
                  ),
             
                ],

                 decoration: NavBarDecoration(
                colorBehindNavBar: kwhite,
                ),
            popAllScreensOnTapOfSelectedTab: true,
            
            navBarStyle:
                NavBarStyle.style17, 
              );
      }
    );
        
   

  }
}
