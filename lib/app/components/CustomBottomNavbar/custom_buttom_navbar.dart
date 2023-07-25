import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:getx_skeleton/app/routes/app_pages.dart';
import 'package:getx_skeleton/utils/page_argument.dart';
import '../../../utils/color_manager.dart';
import 'package:get/get.dart';

import 'custom_bottom_navbar_item.dart';

int prevPageIndex = 0;
int activePageIndex = 0;

final NotchBottomBarController notchBottomBarController =
    NotchBottomBarController();

class CustomBottomNavbar extends StatelessWidget {
  CustomBottomNavbar({
    Key? key,
    required this.items,
    this.initIndex = 0,
  }) : super(key: key);

  static changePage({GetPage? page, String? route}) {
    var _route = "";
    if (page != null) {
      final argument = page.arguments as PageArgument;
      _route = argument.route;
    } else {
      _route = route ?? "";
    }
    int index = -1;
    switch (_route) {
      case Routes.HOME:
        index = 0;
        break;
      case Routes.PRECOUPON:
        index = (1);
        break;
      case Routes.FREECOUPON:
        index = (2);
        break;
      case Routes.LIVE:
        index = (3);
        break;
      case Routes.PROFILE:
        index = (4);
        break;
    }
    if (index != -1) {
      try {
        notchBottomBarController.jumpTo(index);
      } catch (e) {}
    }
  }

  int initIndex = 0;
  List<CustomBottomNavbarItem> items;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: AnimatedNotchBottomBar(
        bottomBarItems: items.map((e) => e.item).toList(),
        notchBottomBarController: notchBottomBarController,
        durationInMilliSeconds: 360,
        removeMargins: false,
        onTap: (index) {
          prevPageIndex = activePageIndex;
          activePageIndex = index;
          items[index].onClickItem();
        },
      ),
    );
  }
}
