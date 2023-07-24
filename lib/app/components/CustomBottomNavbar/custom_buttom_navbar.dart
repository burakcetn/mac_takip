import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:getx_skeleton/app/routes/app_pages.dart';
import '../../../utils/color_manager.dart';
import 'package:get/get.dart';

import 'custom_bottom_navbar_item.dart';

class CustomBottomNavbar extends StatelessWidget {
  CustomBottomNavbar({
    Key? key,
    required this.items,
    this.initIndex = 0,
  }) : super(key: key);

  int initIndex = 0;
  List<CustomBottomNavbarItem> items;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: AnimatedNotchBottomBar(
        bottomBarItems: items.map((e) => e.item).toList(),
        notchBottomBarController: NotchBottomBarController(index: initIndex),
        durationInMilliSeconds: 360,
        removeMargins: false,
        onTap: (index) {
          items[index].onClickItem();
        },
        showBlurBottomBar: true,
        blurOpacity: 0.2,
        blurFilterX: 5,
        blurFilterY: 10,
      ),
    );
    return BottomAppBar(
      surfaceTintColor: ColorManager.base00,
      elevation: 5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.LOGIN);
            },
            child: SizedBox(
              height: 50,
              width: 50,
              child: Icon(
                Icons.home,
                size: 32,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.PRECOUPON);
            },
            child: SizedBox(
              height: 50,
              width: 50,
              child: Icon(
                Icons.local_activity,
                size: 32,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.FREECOUPON);
            },
            child: SizedBox(
              height: 50,
              width: 50,
              child: Icon(
                Icons.sports_soccer_outlined,
                size: 32,
                color: ColorManager.raffle1,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.LIVE);
            },
            child: SizedBox(
              height: 50,
              width: 50,
              child: Icon(
                Icons.analytics_outlined,
                size: 32,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.PROFILE);
            },
            child: SizedBox(
              height: 50,
              width: 50,
              child: Icon(
                Icons.person,
                size: 32,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
