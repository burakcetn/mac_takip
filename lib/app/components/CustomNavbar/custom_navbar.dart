import 'package:flutter/material.dart';
import 'package:getx_skeleton/app/routes/app_pages.dart';
import '../../../utils/color_manager.dart';
import 'package:get/get.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
