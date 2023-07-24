import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/color_manager.dart';

class HomeCouponTypeButton extends StatelessWidget {
  final Color bgColor;
  final Color textColor;
  final String routePath;
  final String title;

  const HomeCouponTypeButton({
    Key? key,
    required this.title,
    required this.routePath,
    required this.bgColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.offAndToNamed(routePath),
      child: Container(
        height: 60,
        width: 180,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: ColorManager.shadowColor.withOpacity(0.3),
                blurRadius: 10),
            BoxShadow(
              color: ColorManager.shadowColor.withOpacity(0.3),
              spreadRadius: -2,
              blurRadius: 5,
            ),
          ],
          color: bgColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
            child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: textColor),
        )),
      ),
    );
  }
}
