import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/components/CustomBottomNavbar/custom_bottom_navbar_item.dart';
import 'package:getx_skeleton/app/components/CustomBottomNavbar/custom_buttom_navbar.dart';

import '../../utils/color_manager.dart';
import '../routes/app_pages.dart';

RxBool showBottom = false.obs;

class BasePage extends StatefulWidget {
  const BasePage({Key? key, required this.child}) : super(key: key);
  final Widget? child;

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Container(
                child: widget.child ?? const Center(child: Text("Error")),
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Obx(
                  () {
                    return !showBottom.value
                        ? SizedBox()
                        : CustomBottomNavbar(
                            items: [
                              CustomBottomNavbarItem(
                                  item: BottomBarItem(
                                    inActiveItem: Icon(
                                      Icons.home,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                                    activeItem: Icon(
                                      Icons.home,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  onClickItem: () {
                                    Get.toNamed(
                                      Routes.HOME,
                                    );
                                  }),
                              CustomBottomNavbarItem(
                                  item: BottomBarItem(
                                    inActiveItem: Icon(
                                      Icons.local_activity,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                                    activeItem: Icon(
                                      Icons.local_activity,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  onClickItem: () {
                                    Get.toNamed(Routes.PRECOUPON);
                                  }),
                              CustomBottomNavbarItem(
                                  item: BottomBarItem(
                                    inActiveItem: Icon(
                                      Icons.sports_soccer_outlined,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                                    activeItem: Icon(
                                      Icons.sports_soccer_outlined,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  onClickItem: () {
                                    Get.toNamed(Routes.FREECOUPON);
                                  }),
                              CustomBottomNavbarItem(
                                  item: BottomBarItem(
                                    inActiveItem: Icon(
                                      Icons.analytics_outlined,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                                    activeItem: Icon(
                                      Icons.analytics_outlined,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  onClickItem: () {
                                    Get.toNamed(Routes.LIVE);
                                  }),
                              CustomBottomNavbarItem(
                                  item: BottomBarItem(
                                    inActiveItem: Icon(
                                      Icons.person,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                                    activeItem: Icon(
                                      Icons.person,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  onClickItem: () {
                                    Get.toNamed(Routes.PROFILE);
                                  }),
                            ],
                          );
                  },
                ))
          ],
        ),
        backgroundColor: ColorManager.base20,
      ),
    );
  }
}
